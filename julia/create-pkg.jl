# libraries
using Pkg
using PkgTemplates

# replace "MyPackage" with the actual package name, don't forget ".jl"
lib      = "MyPackage.jl"
path     = expanduser("~/projects/")
fullpath = path * lib

# create package
t=Template(user    = "cirobr",    # github username
           authors = "Ciro B Rosa <ciro.rosa@alumni.usp.br>", 
           julia   = v"1.12",
           dir     = path)
t(lib)
