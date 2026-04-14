class Solution {
  bool isValid(String s) {
  List<String> stack = [];

  Map<String, String> map = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < s.length; i++) {
    String char = s[i];

    if (map.containsValue(char)) {
      stack.add(char);
    } else if (map.containsKey(char)) {
      if (stack.isEmpty || stack.last != map[char]) {
        return false;
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}
}