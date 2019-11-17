"""
https://codingbat.com/prob/p197308
Array-1 > unlucky1

We'll say that a 1 immediately followed by a 3 in an array is an "unlucky" 1.
Return true if the given array contains an unlucky 1 in the first 2 or last 2 positions in the array.

unlucky1([1, 3, 4, 5]) → true
unlucky1([2, 1, 3, 4, 5]) → true
unlucky1([1, 1, 1]) → false
"""
function unlucky1(A)
    len = length(A)
    for i in 1:len-1
        if A[i:i+1] == [1, 3]
            return true
        end
    end
    return false
end

using Test
function test()
    @testset begin
        @test unlucky1([1, 3, 4, 5]) == true
        @test unlucky1([2, 1, 3, 4, 5]) == true
        @test unlucky1([1, 1, 1]) == false
    end
    nothing
end

