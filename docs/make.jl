using PrideColorSchemes
using Documenter
using Literate

# Use Literate.jl to convert ../examples/*.jl to markdown files included in
# docs/src/examples
LITERATE_INPUT = joinpath(@__DIR__, "src", "examples")
LITERATE_OUTPUT = joinpath(@__DIR__, "src", "examples")

for (root, _, files) ∈ walkdir(LITERATE_INPUT), file ∈ files
    # ignore non julia files
    splitext(file)[2] == ".jl" || continue
    # full path to a literate script
    ipath = joinpath(root, file)
    # generated output path
    opath = splitdir(replace(ipath, LITERATE_INPUT=>LITERATE_OUTPUT))[1]
    # generate the markdown file calling Literate
    Literate.markdown(ipath, opath)
end

DocMeta.setdocmeta!(
    PrideColorSchemes,
    :DocTestSetup,
    :(using PrideColorSchemes);
    recursive = true,
)

makedocs(;
    modules = [PrideColorSchemes],
    authors = "Nathan Musoke <nathan.musoke@gmail.com> and contributors",
    sitename = "PrideColorSchemes.jl",
    format = Documenter.HTML(;
        canonical = "https://musoke.github.io/PrideColorSchemes.jl",
        edit_link = "main",
        assets = String[],
    ),
    pages = ["Home" => "index.md",
             "Examples" => Any["Makie.jl" => "examples/makie.md"],
            ],
)

deploydocs(; repo = "github.com/musoke/PrideColorSchemes.jl", devbranch = "main")
