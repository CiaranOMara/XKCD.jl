using XKCD
using Test

@testset "XKCD.jl" begin
    c = XKCD.comic(open=false)
    @test c.num >= 2250

    c = XKCD.comic(999, open=false)
    @test c.num == 999
    @test c.title == "Cougars"
    @test c.img == "https://imgs.xkcd.com/comics/cougars.png"
end
