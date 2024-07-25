class Solution {
    func romanToInt(_ s: String) -> Int {
        var romanNums = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        var answer: Int = 0
        var mutableString = s

         mutableString = mutableString.replacingOccurrences(of: "IV", with: "IIII")
        mutableString = mutableString.replacingOccurrences(of: "IX", with: "VIIII")
        mutableString = mutableString.replacingOccurrences(of: "XL", with: "XXXX")
        mutableString = mutableString.replacingOccurrences(of: "XC", with: "LXXXX")
        mutableString = mutableString.replacingOccurrences(of: "CD", with: "CCCC")
        mutableString = mutableString.replacingOccurrences(of: "CM", with: "DCCCC")

        for char in mutableString {
            guard let value = romanNums[String(char)] else { return 0 }
            answer += value
        }
        return answer
    }
}