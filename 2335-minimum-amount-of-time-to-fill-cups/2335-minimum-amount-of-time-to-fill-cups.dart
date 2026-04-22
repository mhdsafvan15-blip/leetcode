class Solution {
  int fillCups(List<int> amount) {
  int total = amount[0] + amount[1] + amount[2];
  int maxVal = amount.reduce(max);

  return max(maxVal, (total + 1) ~/ 2);
}
}