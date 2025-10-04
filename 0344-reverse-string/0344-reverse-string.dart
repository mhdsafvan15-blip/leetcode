class Solution {
  void reverseString(List<String> s) {
    int left = 0;
    int right = s.length - 1;

    while (left < right) {
      String temp = s[left];
      s[left] = s[right];
      s[right] = temp;
      left++;
      right--;
    }
  }
}
