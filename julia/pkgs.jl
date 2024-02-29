using Pkg
Pkg.update()

# development environment
foldername = expanduser("~/envs/dev/")
mkpath(foldername)
Pkg.activate(foldername)

# jupyter interface
Pkg.add("IJulia")

# private packages
# https://github.com/GunnarFarneback/LocalRegistry.jl/blob/master/docs/ssh_keys.md
Pkg.add(url="git@github.com:cirobr/PreprocessingImages.jl.git")
Pkg.add(url="git@github.com:cirobr/TinyMachines.jl.git")
Pkg.add(url="git@github.com:cirobr/LibML.jl.git")
Pkg.add(url="git@github.com:cirobr/PascalVocTools.jl.git")


# ai/ml
Pkg.add("Flux")
Pkg.add("MLJ")
Pkg.add("MLUtils")

# i/o
Pkg.add("FileIO")
Pkg.add("ImageIO")
Pkg.add("VideoIO")

# charts
Pkg.add("Plots")
Pkg.add("StatsPlots")
Pkg.add("Printf")

# media
Pkg.add("Images")
Pkg.add("Colors")

# hpc
Pkg.add("Distributed")
Pkg.add("FLoops")

# data
Pkg.add("DataFrames")
Pkg.add("DataStructures")   # stacks, queues, ...
Pkg.add("ArgParse")
Pkg.add("CSV")
Pkg.add("JLD2")

# tools
Pkg.add("PyCall")
Pkg.add("BenchmarkTools")
Pkg.add("PkgTemplates")
Pkg.add("PackageCompiler")

# cuda
# Pkg.add("CUDA")
# Pkg.add("cuDNN")
# Pkg.add(url="git@github.com:cirobr/LibCUDA.jl.git")
# using CUDA
# if CUDA.has_cuda_gpu()   CUDA.versioninfo()   end

#build
Pkg.update()
Pkg.build()
