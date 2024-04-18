class Solution {
  List<int> twosum(List<int> nums, int target) {
    Map<int, int> numIndices = {};
    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (numIndices.containsKey(complement)) {
        return [numIndices[complement]!, i];
      }
      numIndices[nums[i]] = i;
    }
    return [];
  }
}

void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  Solution solution = Solution();
  var indices = solution.twosum(nums, target);

  if (indices.isNotEmpty) {
    print("Idices: $indices");
  } else {
    print("No Solution found");
  }
}
