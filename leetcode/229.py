class Solution:
    def majorityElement(self, nums: List[int]) -> List[int]:
        counter1 = 0
        counter2 = 0
        majority1 = 0
        majority2 = 1
        for num in nums:
            if num == majority1:
                counter1 += 1
            elif num == majority2:
                counter2 += 1
            elif counter1 == 0:
                majority1 = num
                counter1 += 1
            elif counter2 == 0:
                majority2 = num
                counter2 += 1
            else:
                counter1 -= 1
                counter2 -= 1
        return [m for m in (majority1, majority2) if nums.count(m) > len(nums) // 3]