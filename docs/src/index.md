```@meta
CurrentModule = ProudPalettes
```

# ProudPalettes

```@setup example-output
using CairoMakie
using ProudPalettes

p = PROUD_PALETTES[:rainbow]

fig = Figure(backgroundcolor = (:white, 0.0))
ax = Axis(fig[1, 1], palette = (patchcolor = p,), backgroundcolor = (:white, 0.0))
hidedecorations!(ax)
hidespines!(ax)

x = 0:1e-2:2π
y = sin.(x)
for (i, _) in enumerate(p)
    band!(ax, x, y .+ i, y .+ i .+ 1)
end
```

```@example example-output
fig # hide
```

[ProudPalettes](https://github.com/musoke/ProudPalettes.jl) is a [Julia](https://julialang.org/) package providing color palettes derived from pride flags.


# API

```@index
```

```@autodocs
Modules = [ProudPalettes]
```
