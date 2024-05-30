# # Use with Plots.jl

using Plots
using ProudPalettes

# The palettes defined in [`PROUD_PALETTES`](@ref) can be used to set colors in
# [Plots.jl](https://github.com/JuliaPlots/Plots.jl) plots.
#
# For example,

x = 0:1e-2:2π
plot(x, cos, color = PROUD_PALETTES[:rainbow][1])
plot!(x, sin, color = PROUD_PALETTES[:rainbow][2])

# They can also be used to set the palette for a whole plot.
# This can be simpler than setting colors one plot at a time.

palette = PROUD_PALETTES[:rainbow]
p = plot(palette = palette)

for (i, _) in enumerate(palette)
    y = @. sin(x) + i - 1
    plot!(x, y, ribbon = 0.4)
end

p
