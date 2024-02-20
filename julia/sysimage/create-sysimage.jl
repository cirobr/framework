using Pkg
envaddr = expanduser("~/envs/dev/")
Pkg.activate(envaddr)

using PackageCompiler
mkpath(expanduser("~/sysimgs/"))
sysimg = expanduser("~/sysimgs/ml.so")

pkgs = ["UNet",
        "PreprocessingImages",
        "LibML",
        "CocoTools",
        "PascalVocTools",
        "CUDA", "LibCUDA",
        "Flux",
        "Metalhead",
        "Images",
        "DataFrames",
        "CSV",
        "JLD2",
        "FLoops",
        "TensorBoardLogger", "Logging",
]
precomp = expanduser("warmup-sysimage.jl")

create_sysimage(pkgs;
                sysimage_path=sysimg,
                cpu_target="generic",
                precompile_execution_file=[precomp])


# julia -q -Jsysimgs/ml.so program_script.jl
