# environment
using Pkg
Pkg.activate( expanduser("~/envs/dev/") )

# libraries
using Flux
using UNet; const u=UNet
using LibML

# data
X = rand(Float32, (256,256,3,1))
Y = rand(Bool, (256,256,1,1))
data = Flux.DataLoader((X, Y), batchsize=1)

# model
lossFunction(yhat, y) = LibML.IoU_loss(yhat, y)
η = 1e-4
modelOptimizer = Flux.Adam(η)

modelcpu = u.UNet2(3,1)
modelcpu(X)

modelcpu = u.UNet4(3,1)
modelcpu(X)

modelcpu = u.UNet5(3,1)
modelcpu(X)
optimizerState = Flux.setup(modelOptimizer, modelcpu)
LibML.trainModel!(modelcpu, data, optimizerState, lossFunction)
LibML.evaluateModel(modelcpu, data, lossFunction, [])
