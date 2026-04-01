class Solution {
  int secondHighest(String s) {
    Set<int>digits={};

    for(int i=0;i<s.length;i++){
        if(RegExp(r'\d').hasMatch(s[i])){
            digits.add(int.parse(s[i]));
        }
    }
    if(digits.length<2)return -1;

    List<int>list =digits.toList();
    list.sort((b,a)=>a.compareTo(b));
    return list[1];
    
  }
}