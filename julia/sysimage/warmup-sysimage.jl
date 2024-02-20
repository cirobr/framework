# environment
using Pkg
Pkg.activate( expanduser("~/juliaenvs/unetflux/") )

# libraries
using UNetFlux; u=UNetFlux
using LibML
include( expanduser("~/projects/pesquisa/unetflux/preprocessing.jl") )

# model
alpha        = 1/8 |> Float32
T            = 1.0f0
drop_out     = 0.1f0
kf           = 1.0f0
modelcpu     = u.UNet2(1,1; alpha=alpha, T=T, drop_out=drop_out, kf=kf)
modelAddress = expanduser("~/models/membrane-unet/unet2-model_state-2023-09-24T11-52-59-631.bson")
LibML.loadModelState(modelAddress, modelcpu)

# warmup
x = _prepX(rand(Float32, (128,128,1)))
modelcpu(x)
