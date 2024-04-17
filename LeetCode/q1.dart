class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> addIndex = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        int sum = nums[i] + nums[j];
        if (sum == target) {
          addIndex.add(i);
          addIndex.add(j);
        }
      }
    }
    return addIndex;
  }
}

void main() {
  List<int> input = [2,3,52,1,4,12,6,7,4,2,111,5];
  int target = 116;

  Solution solution = Solution();

  var store = solution.twoSum(input, target);

  print(store.toSet());
}
