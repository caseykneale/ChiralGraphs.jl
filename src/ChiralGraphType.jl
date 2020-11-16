"""
AbstractChiralGraph
An abstract type representing a simple graph structure.
`AbstractChiralGraph`s must have the following elements:
- `vertices::UnitRange{Integer}`
- `fadjlist::Vector{Vector{Integer}}`
- `ne::Integer`
"""
#abstract type AbstractChiralGraph{T<:Union{Int64,Int8,Int8,Int8,Int8,Int8 }} <: AbstractGraph{T} end
