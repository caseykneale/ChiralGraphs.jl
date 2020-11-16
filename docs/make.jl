using ChiralGraphs
using Documenter

makedocs(;
    modules=[ChiralGraphs],
    authors="Tim Holy, Casey Kneale",
    repo="https://github.com/caseykneale/ChiralGraphs.jl/blob/{commit}{path}#L{line}",
    sitename="ChiralGraphs.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://caseykneale.github.io/ChiralGraphs.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/caseykneale/ChiralGraphs.jl",
)
