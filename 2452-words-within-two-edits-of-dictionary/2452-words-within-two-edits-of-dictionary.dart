class Solution {
  List<String> twoEditWords(List<String> queries, List<String> dictionary) {
    List<String> result = [];
    for (var q in queries) {
      for (var d in dictionary) {
        int diff = 0;
        for (int i = 0; i < q.length; i++) {
          if (q[i] != d[i]) diff++;
          if (diff > 2) break;
        }
        if (diff <= 2) {
          result.add(q);
          break;
        }
      }}
    return result;
  }
}