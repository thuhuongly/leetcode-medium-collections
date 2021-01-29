# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
    p0 = 0
    curr = 0
    p2 = nums.length - 1
    while curr <= p2 do
        if nums[curr] == 0
            tmp = nums[p0]
            nums[p0] = nums[curr]
            nums[curr] = tmp
            p0 += 1
            curr += 1
        elsif nums[curr] == 2
            tmp = nums[curr]
            nums[curr] = nums[p2]
            nums[p2] = tmp
            p2 -= 1
        else
            curr += 1
        end
    end
end
