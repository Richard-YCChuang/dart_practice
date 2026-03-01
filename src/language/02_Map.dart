// **題目 1：Character Count**
// > 給一個字串，回傳每個字元出現幾次。
// ```
// Input:  "aabbcca"
// Output: {a: 3, b: 2, c: 2}
// ```

// **題目 2：Two Sum（自己寫，不看之前的）**
// > 給陣列和 target，回傳兩個 index 使其相加等於 target。
// ```
// Input:  [2, 7, 11, 15], target = 9
// Output: [0, 1]

void main() {
  final A1 = count('aabbcca');
  print('A1: $A1');

  final A2 = twoSum([2, 7, 11, 15], 18);
  print('A2: $A2');
}

Map<String, int> count(String input) {
  if (input.isEmpty) {
    return {};
  }
  Map<String, int> result = {};
  for (String value in input.split('')) {
    // if (result.containsKey(value)) {
    //   result[value] = result[value]! + 1;
    // } else {
    //   result[value] = 1;
    // }

    // 這樣比較簡潔
    result[value] = (result[value] ?? 0) + 1;
  }

  return result;
}

List<int> twoSum(List<int> input, int target) {
  Map<int, int> match = {};
  for (int i = 0; i < input.length; i++) {
    int matchValue = target - input[i];
    if (match.containsKey(matchValue)) {
      return [match[matchValue]!, i];
    }

    match[input[i]] = i;
  }

  return [];
}
