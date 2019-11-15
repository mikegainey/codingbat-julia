"""
https://codingbat.com/prob/p133158
Logic-1 > less20

Return true if the given non-negative number is 1 or 2 less than a multiple of 20.
So for example 38 and 39 return true, but 40 returns false. See also: Introduction to Mod

less20(18) → true
less20(19) → true
less20(20) → false
"""
function less20(n)
    return n % 20 in [18, 19]
end

using Test
function test()
    @testset begin
        @test less20(18) == true
        @test less20(19) == true
        @test less20(20) == false
    end
    nothing
end
