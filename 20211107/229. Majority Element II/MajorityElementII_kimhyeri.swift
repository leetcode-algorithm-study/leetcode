class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var counting:[Int: Int] = [Int: Int]()
        
        for i in nums {
            if let value = counting[i] {
                counting[i] = value + 1
            } else {
                counting[i] = 1
            }
        }
        
        let sorted = counting.sorted { $0.1 < $1.1 }
        let compare = nums.count / 3
        
        var answer = [Int]()
        
        for i in sorted {
            if i.value > compare {
                answer.append(i.key)
            }
        }
        
        return answer
    }
}
