@info "project start"

# private libraries
using .UNetFlux; u=UNetFlux
using .LibML

# libraries
using .Flux
using .ImageTransformations
using .FileIO, .ImageIO
using .ImageShow
using .Colors
using .BSON

include( expanduser("~/projects/pesquisa/unetflux/preprocessing.jl") )
@info "libraries OK"

# model
modelAddress = expanduser("~/models/membrane-unet/unet2-model_state-2023-09-24T11-52-59-631.bson")
alpha        = 1/8 |> Float32
T            = 1.0f0
drop_out     = 0.1f0
kf           = 1.0f0
modelcpu = u.UNet2(1,1; alpha=alpha, T=T, drop_out=drop_out, kf=kf)
LibML.loadModelState(modelAddress, modelcpu)
@info "model OK"

# inferences
@info "start inferences"
datasetFolder = expanduser("~/datasets/membrane/")

for i in 1:30
    imgAddress = datasetFolder * "img$i.png"
    X    = FileIO.load( expanduser(imgAddress) )
    X    = imresize(X, ratio = 1/2)
    h, w = size(X)
    X    = reshape(X, (h, w, 1))
    X    = _prepX(X)
    
    @time y = ( modelcpu(X)[:,:] .>= 0.5 )
    m = ImageShow.mosaicview(X[:,:], y, nrow=1)   #; display(m)
    X = nothing
    y = nothing

    FileIO.save( expanduser("./imgs/inf$i.jpg"), Colors.Gray.(m) )
    m = nothing
end

@info "project completed"
