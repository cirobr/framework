# https://github.com/JuliaPy/PyCall.jl

# setup julia environment
using Pkg
envpath = expanduser("~/juliaenvs/dev/")
Pkg.activate(envpath)

# setup python environment
condaenv = "tfgpu"

using Pkg
using PyCall
ENV["PYTHON"] = expanduser("~/miniconda3/envs/" * condaenv * "/bin/python3")
# ENV["PYTHON"] = ""   # back to default conda/julia
Pkg.build("PyCall")

# check environment (may need to reboot julia)
display(PyCall.pyversion)
display(PyCall.libpython)
PyCall.pyprogramname

# import python libs
# ros = pyimport("rosbag")
# rs2 = pyimport("pyrealsense2")
# bg  = pyimport("bagpy")
# cvb = pyimport("cv_bridge")