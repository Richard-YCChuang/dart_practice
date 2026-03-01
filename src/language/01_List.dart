// **題目 1：Reverse Array**
// > 不能用 `.reversed`，自己用雙指針反轉。
// ```
// Input:  [1, 2, 3, 4, 5]
// Output: [5, 4, 3, 2, 1]
// ```

// **題目 2：Remove Duplicates**
// > 給一個排序好的陣列，移除重複元素，回傳新 List。
// ```
// Input:  [1, 1, 2, 3, 3, 4]
// Output: [1, 2, 3, 4]

void main() {
  final a1 = reversed([1, 2, 3, 4, 5, 6, 7, 8]);
  print('a1: $a1');

  final a2 = removeDuplicate([1, 1, 2, 3, 3, 4, 4, 4, 4, 5, 5, 6]);
  print('a2: $a2');
}

List<int> reversed(List<int> input) {
  if (input.isEmpty) {
    return [];
  }

  int left = 0;
  int right = input.length - 1;

  while (left < right) {
    int temp = input[left];
    input[left] = input[right];
    input[right] = temp;

    left++;
    right--;
  }

  return input;
}

List<int> removeDuplicate(List<int> input) {
  if (input.isEmpty) {
    return [];
  }

  List<int> result = [input[0]];
  for (int i = 1; i < input.length; i++) {
    if (input[i] != input[i - 1]) {
      result.add(input[i]);
    }
  }

  return result;
}
