"""
Colour palettes

For flags composed of horizontal stripes, the colors in each array are ordered from bottom to top.
This results in color bars with an intuitive order.
"""
module ProudPalettes

import Colors
using Colors: @colorant_str

export PROUD_PALETTES

const bi = [colorant"#0038A8", colorant"#9B4F96", colorant"#D60270"]

const pan = [colorant"#21B1FF", colorant"#FFD800", colorant"#FF218C"]

pride6 = [
    colorant"#750787",
    colorant"#004DFF",
    colorant"#008026",
    colorant"#FFED00",
    colorant"#FF8C00",
    colorant"#E40303",
]

pride8 = [
    colorant"violet",
    colorant"indigo",
    colorant"turquoise",
    colorant"green",
    colorant"yellow",
    colorant"orange",
    colorant"red",
    colorant"pink",
]

pride7 = pride8[begin:end-1]

trans = [
    colorant"#5BCEFA",
    colorant"#F5A9B8",
    colorant"#FFFFFF",
    colorant"#F5A9B8",
    colorant"#5BCEFA",
]

"""
    const PROUD_PALETTES::Dict{Symbol,Vector{Colors.RGB}}

`Dict` of RGB vectors.

# Examples

The available keys are
```jldoctest
julia> using ProudPalettes

julia> keys(PROUD_PALETTES) |> collect |> sort
10-element Vector{Symbol}:
 :bi
 :nonbinary
 :pan
 :pride
 :pride6
 :pride7
 :pride8
 :pride_progress
 :rainbow
 :trans

```
"""
const PROUD_PALETTES = Dict{Symbol,Vector{Colors.RGB}}(
    :bi => bi,
    :nonbinary =>
        [colorant"#2C2C2C", colorant"#9C59D1", colorant"#FFFFFF", colorant"#FFF430"],
    :pan => pan,
    :pride => pride6,
    :pride6 => pride6,
    :pride7 => pride7,
    :pride8 => pride8,
    :pride_progress =>
        [pride6..., trans[begin:begin+3]..., colorant"brown", colorant"black"],
    :rainbow => pride6,
    :trans => trans,
)

include("precompile.jl")

end
