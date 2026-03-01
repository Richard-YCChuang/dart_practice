// **題目 1：To Lowercase Without toLowerCase()**
// > 不能用 `.toLowerCase()`，自己把大寫字母轉成小寫。
// ```
// Input:  "Hello World"
// Output: "hello world"
// ```

// **題目 2：Caesar Cipher**
// > 每個字母往後位移 k 位（只處理英文字母，超過 z 就從 a 繼續，大小寫分開處理，非字母不變）。
// ```
// Input:  "abc", k = 2
// Output: "cde"

// Input:  "xyz", k = 2
// Output: "zab"

void main() {
  final A1_1 = toLowerCase('Hello World');
  print('A1_1: $A1_1');

  final A2_1 = CaesarCipher("xYz", 26);
  print('A2_1: $A2_1');
}

String toLowerCase(String input) {
  List<String> result = input.split('').toList();
  for (int i = 0; i < input.length; i++) {
    int ascii = result[i].codeUnitAt(0);
    if (ascii < 91 && ascii >= 65) {
      result[i] = String.fromCharCode(ascii + 32);
    }
  }

  return result.join();
}

String CaesarCipher(String input, int shift) {
  List<String> result = input.split('').toList();
  for (int i = 0; i < result.length; i++) {
    int ascii = result[i].codeUnitAt(0);
    // 大寫 和 小寫分開處理
    // 並且處理 shift 大於 26 的情況
    if (ascii >= 65 && ascii < 91) {
      result[i] = String.fromCharCode((ascii - 65 + shift) % 26 + 65);
    } else if (ascii >= 97 && ascii < 123) {
      result[i] = String.fromCharCode((ascii - 97 + shift) % 26 + 97);
    }
  }

  return result.join();
}
