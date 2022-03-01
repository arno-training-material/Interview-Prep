class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        dict_nums = {}
        for i in range(len(nums)):
            complement = target - nums[i]
            if complement in dict_nums:
                return (i,dict_nums[complement])
            dict_nums[nums[i]] = i