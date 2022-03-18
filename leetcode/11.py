class Solution:
    def maxArea(self, height: List[int]) -> int:
        max_vol = 0
        i = 0
        j = len(height)-1
        while j > i:
            max_vol = max(max_vol,(j-i)*min(height[i],height[j]))
            if height[i] < height[j]:
                i += 1
            else:
                j -= 1
        return max_vol 