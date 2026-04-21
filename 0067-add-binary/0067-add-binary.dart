class Solution {
 String addBinary(String a, String b) {
  int i = a.length - 1;
  int j = b.length - 1;
  int carry = 0;
  String result = '';
  while (i >= 0 || j >= 0 || carry > 0) {
    int sum = carry;

    if (i >= 0) {
      sum += int.parse(a[i]);
      i--;
    }
    if (j >= 0) {
      sum += int.parse(b[j]);
      j--;
    }
    result = (sum % 2).toString() + result;
    carry = sum ~/ 2;
  }
 return result;
}
}