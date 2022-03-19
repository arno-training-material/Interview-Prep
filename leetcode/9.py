class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0:
            return False
        reversed_x = 0
        remaining_x = x
        while remaining_x != 0:
            quotient,remainder = divmod(remaining_x,10)
            remaining_x = quotient
            reversed_x *= 10
            reversed_x += remainder
        if x == reversed_x:
            return True
        else:
            return False