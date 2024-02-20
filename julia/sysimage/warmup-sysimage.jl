# environment
using Pkg
Pkg.activate( expanduser("~/envs/dev/") )

# libraries
using Flux
using Metalhead; const m=Metalhead
using UNet; const u=UNet
using LibML

# data
X = rand(Float32, (256,256,3,1))
Y = rand(Bool, (256,256,1,1))
data = Flux.DataLoader((X, Y), batchsize=1)
η = 1e-4
modelOptimizer = Flux.Adam(η)

# unet
modelcpu = u.UNet2(3,1)
optimizerState = Flux.setup(modelOptimizer, modelcpu)
Flux.train!(modelcpu, data, optimizerState) do m, x, y
    LibML.IoU_loss(m(x), y)
end

modelcpu = u.UNet4(3,1)
optimizerState = Flux.setup(modelOptimizer, modelcpu)
Flux.train!(modelcpu, data, optimizerState) do m, x, y
    LibML.IoU_loss(m(x), y)
end

modelcpu = u.UNet5(3,1)
optimizerState = Flux.setup(modelOptimizer, modelcpu)
Flux.train!(modelcpu, data, optimizerState) do m, x, y
    LibML.IoU_loss(m(x), y)
end

# metalhead
backbone = m.backbone( ResNet(50; pretrain=true) )
modelcpu = m.UNet((512,512), 3, 1, backbone)
optimizerState = Flux.setup(modelOptimizer, modelcpu)
Flux.train!(modelcpu, data, optimizerState) do m, x, y
    LibML.IoU_loss(m(x), y)
end
