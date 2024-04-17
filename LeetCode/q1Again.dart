class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numIndices = {};

    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (numIndices.containsKey(complement)) {
        return [numIndices[complement]!, i];
      }
      numIndices[nums[i]] = i;
    }

    //if no solution is found,  return an empty list
    return [];
  }
}

void main() {
  List<int> input = [3,2,4];
  int target = 6;

  Solution solution = Solution();
  var indices = solution.twoSum(input, target);

  if (indices.isNotEmpty) {
    print("Indices: $indices");
  } else {
    print("No Solution Found");
  }
}
