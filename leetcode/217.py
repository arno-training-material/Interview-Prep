from collections import defaultdict
class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        nums_dict = defaultdict(int)
        for num in nums:
            if nums_dict[num] != 0:
                return True
            nums_dict[num] += 1
        return False