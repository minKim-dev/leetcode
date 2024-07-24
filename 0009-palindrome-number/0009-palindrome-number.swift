class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        // Negative numbers are not palindromes
        if x < 0 {
            return false
        }

        let numString = String(x)
        let length = numString.count

        // Compare characters from both ends moving towards the center
        for i in 0..<length/2 {
            if numString[numString.index(numString.startIndex, offsetBy: i)] !=
                numString[numString.index(numString.startIndex, offsetBy: length - 1 - i)] {
                return false
            }
        }

        return true
    }
}