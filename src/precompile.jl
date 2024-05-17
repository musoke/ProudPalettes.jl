import PrecompileTools

PrecompileTools.@compile_workload begin
    for c in PROUD_PALETTES[:bi]
        display(c)
    end
end
