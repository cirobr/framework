using Pkg
Pkg.update()

# development environment
foldername = expanduser("~/juliaenvs/dev/")
mkdir(foldername)
Pkg.activate(foldername)

# jupyter interface
Pkg.add("IJulia")

# private packages
# https://github.com/GunnarFarneback/LocalRegistry.jl/blob/master/docs/ssh_keys.md
Pkg.add(url="git@github.com:cirobr/PreprocessingImages.jl.git")
Pkg.add(url="git@github.com:cirobr/UNetFlux.jl.git")

# ai/ml
Pkg.add("Flux")
Pkg.add("MLJ")
Pkg.add("MLJFlux")
Pkg.add("MLUtils")
Pkg.add("MLDatasets")   # mnist
Pkg.add("MLJLinearModels")
Pkg.add("MultivariateStats")
Pkg.add("MLJMultivariateStatsInterface")
Pkg.add("MLJScikitLearnInterface")
Pkg.add("GLM")
# Pkg.add("ScikitLearn")
# Pkg.add("ObjectDetector")   # yolo

# i/o
Pkg.add("FileIO")
Pkg.add("ImageIO")
Pkg.add("VideoIO")

# math
Pkg.add("LinearAlgebra")
Pkg.add("Metrics")
Pkg.add("Random")
Pkg.add("StatsBase")
Pkg.add("Distributions")

# charts
Pkg.add("Plots")
Pkg.add("StatsPlots")
Pkg.add("Printf")

# media
Pkg.add("Images")
Pkg.add("Colors")
Pkg.add("ImageDraw")
# Pkg.add("ImageView")
# Pkg.add("OpenCV")
# Pkg.add("PerceptualColourMaps")   # depends on python matplotlib
# Pkg.add("GLMakie")   # "using GLMakie" must come before "using VideoIO"

# hpc
Pkg.add("Distributed")
Pkg.add("FLoops")

# data
Pkg.add("CSV")
Pkg.add("DataFrames")
Pkg.add("DataStructures")   # stacks, queues, ...
Pkg.add("ArgParse")
Pkg.add("BSON")
Pkg.add("JLD2")

# tools
Pkg.add("PyCall")
Pkg.add("BenchmarkTools")
Pkg.add("PkgTemplates")
Pkg.add("PackageCompiler")

# cuda
# Pkg.add("CUDA")
# using CUDA
# if CUDA.has_cuda_gpu()   CUDA.versioninfo()   end

#build
Pkg.update()
Pkg.build()