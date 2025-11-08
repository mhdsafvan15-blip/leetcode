class Solution {
  int reverse(int x) {
    bool isNegative = x<0;
    String reversedStr = x.abs().toString().split('').reversed.join();
    int reversedNum = int.parse(reversedStr);
    if (isNegative) reversedNum = -reversedNum;
    if (reversedNum < -2147483648 || reversedNum > 2147483647){
    return 0; }
    return reversedNum;}
}
