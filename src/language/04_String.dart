// **題目 1：Reverse String**
// > 給一個字串，回傳反轉後的字串。不能用 `.reversed`。
// ```
// Input:  "hello"
// Output: "olleh"
// ```

// **題目 2：Valid Palindrome**
// > 給一個字串，只考慮英文字母和數字，忽略大小寫，判斷是否為回文。
// ```
// Input:  "A man, a plan, a canal: Panama"  → true
// Input:  "race a car"                       → false

void main() {
  final A1 = reversed('hello');
  print('A1: $A1');

  final A2_1 = valid('A man, a plan, a canal: Panama');
  print('A2_1: $A2_1');

  final A2_2 = valid('race a car');
  print('A2_2: $A2_2');

  final A2_3 = valid('A man, a plan, a canal: Panama');
  print('A2_3: $A2_3');

  final A2_4 = valid('race a car');
  print('A2_4: $A2_4');
}

String reversed(String input) {
  List<String> result = [];
  for (int i = input.length - 1; i >= 0; i--) {
    result.add(input[i]);
  }
  return result.join();
}

bool valid(String input) {
  String pure = input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  int left = 0;
  int right = pure.length - 1;
  while (left < right) {
    if (pure[left] != pure[right]) {
      return false;
    }

    left++;
    right--;
  }
  return true;
}

// 另外一種寫法，時間複雜度跑了一次 O(n),空間複雜度 O(1)
// 上面寫法，時間複雜度跑了兩次 O(n),空間複雜度 O(n)
// 不過可讀性比較沒那麼好
bool valid2(String input) {
  int left = 0;
  int right = input.length - 1;

  while (left < right) {
    while (left < right && !isAlphanumeric(input[left])) {
      left++;
    }
    while (left < right && !isAlphanumeric(input[right])) {
      right--;
    }

    if (input[left] != input[right]) {
      return false;
    }

    left++;
    right--;
  }

  return true;
}

bool isAlphanumeric(String char) {
  return RegExp(r'A-Za-z0-9').hasMatch(char);
}
