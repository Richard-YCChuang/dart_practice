// **題目 1：Contains Duplicate**
// > 給一個陣列，若有任何值出現超過一次回傳 `true`，否則 `false`。不能用 `Set` 直接去重比長度。
// ```
// Input:  [1, 2, 3, 1]  → true
// Input:  [1, 2, 3, 4]  → false
// ```

// **題目 2：Intersection of Two Arrays**
// > 給兩個陣列，回傳他們的交集（不重複）。
// ```
// Input:  [1, 2, 2, 3], [2, 2, 3, 4]
// Output: [2, 3]

void main() {
  final A1_1 = containDuplicate([1, 2, 3, 1]);
  print('A1_1: $A1_1');
  final A1_2 = containDuplicate([1, 2, 3, 4]);
  print('A1_2: $A1_2');

  final A2 = intersection([1, 2, 2, 3], [2, 2, 3, 4]);
  print('A2: $A2');
}

bool containDuplicate(List<int> input) {
  if (input.isEmpty) {
    return false;
  }

  Set<int> dataSet = {};

  for (int value in input) {
    if (dataSet.contains(value)) {
      return true;
    } else {
      dataSet.add(value);
    }
  }

  return false;
}

List<int> intersection(List<int> input1, List<int> input2) {
  // Set<int> input1Set = Set.from(input1);
  // Set<int> input2Set = Set.from(input2);

  // return input1Set.intersection(input2Set).toList();

  // 這樣比較簡潔
  return input1.toSet().intersection(input2.toSet()).toList();
}

// 補充
// ## 關鍵差異對比
// |          | `Set.from`     | `Set.of`             |
// | -------- | -------------- | -------------------- |
// | 預設型別  | `Set<dynamic>` | `Set<T>`（自動推斷） |
// | 型別安全  | ❌ 較差         | ✅ 較好               |
// | 推薦使用  | 少用            | 優先使用             |