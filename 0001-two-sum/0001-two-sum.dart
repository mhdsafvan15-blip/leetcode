class Solution {
List<int> twoSum(List<int> nums, int target) {
  Map<int, int> seen = {};

  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];

    if (seen.containsKey(complement)) {
      return [seen[complement]!, i]; 
    }

    seen[nums[i]] = i;
  }

  return [];
}

void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  print(twoSum(nums, target));
}

  }

