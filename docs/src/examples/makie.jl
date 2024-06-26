# # Use with Makie.jl

using CairoMakie
using ProudPalettes

# The palettes defined in [`PROUD_PALETTES`](@ref) can be used to set colors in
# [Makie](https://github.com/MakieOrg/Makie.jl) plots.
#
# For example,

x = 0:1e-2:2π
lines(x, cos, color = PROUD_PALETTES[:rainbow][1])
lines!(x, sin, color = PROUD_PALETTES[:rainbow][2])

current_figure()

# They can also be used to set the palette for a whole plot.
# This can be simpler than setting colors one plot at a time.

p = PROUD_PALETTES[:rainbow]

fig = Figure()
ax = Axis(fig[1, 1], palette = (patchcolor = p,))

y = sin.(x)
for (i, _) in enumerate(p)
    band!(ax, x, y .+ i, y .+ i .+ 1)
end

fig
