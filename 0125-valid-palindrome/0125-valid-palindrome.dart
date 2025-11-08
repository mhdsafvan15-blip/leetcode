class Solution {
  bool isPalindrome(String s) {
    String filtered = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    return filtered == filtered.split('').reversed.join();
  }
}
