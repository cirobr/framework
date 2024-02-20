using Pkg
envaddr = expanduser("~/juliaenvs/unetflux/")
Pkg.activate(envaddr)

using PackageCompiler
sysimg  = expanduser("~/juliasysimages/unetflux-sysimage.so")
pkgs    = ["UNetFlux",
           "LibML",
           "Flux",
           "ImageTransformations",
           "FileIO", "ImageIO",
           "ImageShow",
           "Colors",
           "BSON"
]
precomp = expanduser("~/projects/pesquisa/unetflux-sysimage/warmup-sysimage.jl")

create_sysimage(pkgs;
                sysimage_path=sysimg,
                cpu_target="generic",
                precompile_execution_file=[precomp])


# julia -q -Jjuliasysimages/unetflux-sysimage.so projects/pesquisa/unetflux-sysimage/model-inference-rpi.jl
