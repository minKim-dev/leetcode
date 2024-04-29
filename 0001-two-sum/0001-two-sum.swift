class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var n: Int = nums.count

        for i in 0..<n {
            for j in 1..<n {
                if i == j {
                    continue
                } else {
                    if nums[i] + nums[j] == target {
                        return [i, j]
                    }
                }
            }
        }
        return []
    }
}