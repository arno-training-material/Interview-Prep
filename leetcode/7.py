class Solution:
    def reverse(self, x: int) -> int:
        reversed = 0
        is_positive = True if x>=0 else False
        x = x if is_positive else -x
        while x != 0:
            x,r = divmod(x,10)
            reversed *= 10
            reversed += r
            if reversed > (2**31)-1:
                return 0
        return reversed if is_positive else -reversed