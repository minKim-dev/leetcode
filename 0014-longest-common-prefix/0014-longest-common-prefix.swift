class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var commonPrefix: String = strs[0]

        for str in strs {
            while !str.hasPrefix(commonPrefix) {
                commonPrefix.removeLast()
                if commonPrefix.isEmpty {
                     return ""
                }
            }
        }

        return commonPrefix
    }
}