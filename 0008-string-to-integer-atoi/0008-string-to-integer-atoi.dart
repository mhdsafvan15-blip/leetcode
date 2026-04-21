class Solution {
int myAtoi(String s) {
  int i = 0;
  int n = s.length;
  while (i < n && s[i] == ' ') {
    i++;
  }
  int sign = 1;
  if (i < n && (s[i] == '+' || s[i] == '-')) {
    if (s[i] == '-') sign = -1;
    i++;
  }
  int result = 0;
  while (i < n && isDigit(s[i])) {
    int digit = s.codeUnitAt(i) - '0'.codeUnitAt(0);
    if (result > (2147483647 - digit) ~/ 10) {
      return sign == 1 ? 2147483647 : -2147483648;
    }
    result = result * 10 + digit;
    i++;
  }
  return result * sign;
}
bool isDigit(String c) {
  return c.codeUnitAt(0) >= '0'.codeUnitAt(0) &&
         c.codeUnitAt(0) <= '9'.codeUnitAt(0);
}
}