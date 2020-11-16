struct HyperComplex5{T}
    a::T
    b::T
    c::T
    d::T
    e::T
end

function ⊕(x::HyperComplex5,y::HyperComplex5) 
    promoted = promote_type(eltype(x.a), eltype(y.a))
    HyperComplex5{promoted}(    x.a + y.a, 
                                x.b + y.b,
                                x.c + y.c, 
                                x.d + y.d,
                                x.e + y.e,
    )
end

function ⊗(x::HyperComplex5,y::HyperComplex5) 
    promoted = promote_type(eltype(x.a), eltype(y.a))
    HyperComplex5{promoted}(    x.a*y.a - x.b*y.b - x.c*y.c - x.d*y.d - x.e*y.e,
                                x.a*y.b + y.a*x.b,
                                x.a*y.c + y.a*x.c,
                                x.a*y.d + y.a*x.d,
                                x.a*y.e + y.a*x.e
    )
end

a = HyperComplex5{Int8}(1,1,1,1,1)
b = HyperComplex5{Int8}(1,2,1,2,1)

a ⊕ b
a ⊗ b

mutable struct ChiralGraph{T<:HyperComplex{Int8}} <: AbstractSimpleGraph{T}
    ne::Int
    fadjlist::Vector{Vector{T}} # [src]: (dst, dst, dst)
end