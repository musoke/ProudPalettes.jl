using PrideColorSchemes
using Documenter

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
    pages = ["Home" => "index.md"],
)

deploydocs(; repo = "github.com/musoke/PrideColorSchemes.jl", devbranch = "main")
