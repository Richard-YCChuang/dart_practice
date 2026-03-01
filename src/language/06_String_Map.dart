// 題目 1：Valid Anagram

// 給兩個字串，判斷是否為 Anagram（字母組成相同，順序不同）。

// Input:  "anagram", "nagaram"  → true
// Input:  "rat", "car"          → false

// 題目 2：Longest Common Prefix

// 找出字串陣列中所有字串的最長共同前綴。

// Input:  ["flower", "flow", "flight"]  → "fl"
// Input:  ["dog", "racecar", "car"]     → ""
void main() {
  final A1_1 = valid("anagram", "nagaram");
  print('A1_1: $A1_1');
  final A1_2 = valid("rat", "car");
  print('A1_2: $A1_2');
  final A2_1 = longestPrefix(["flower", "flow", "flight"]);
  print('A2_1: $A2_1');
}

bool valid(String s1, String s2) {
  if (s1.length != s2.length) {
    return false;
  }

  // Map<String, int> matchMap = {};
  // for (int i = 0; i < s1.length; i++) {
  //   matchMap[s1[i]] = (matchMap[s1[i]] ?? 0) + 1;
  // }

  // for (int i = 0; i < s2.length; i++) {
  //   if (matchMap.containsKey(s2[i])) {
  //     matchMap[s2[i]] = matchMap[s2[i]]! - 1;
  //     if (matchMap[s2[i]]! < 0) {
  //       return false;
  //     }
  //   }
  // }

  // for (int value in matchMap.values) {
  //   if (value > 0) {
  //     return false;
  //   }
  // }

  // return true;

  // 這樣寫比較簡單，因為已經確認長度是一樣的
  Map<String, int> map = {};
  for (String c in s1.split('')) {
    map[c] = (map[c] ?? 0) + 1;
  }
  for (String c in s2.split('')) {
    map[c] = (map[c] ?? 0) - 1;
    if (map[c]! < 0) return false;
  }

  return true;
}

String longestPrefix(List<String> input) {
  if (input.isEmpty) {
    return '';
  }

  String first = input[0];

  for (int i = 0; i < first.length; i++) {
    for (int j = 1; j < input.length; j++) {
      if (first[i] != input[j][i]) {
        return first.substring(0, i);
      }
    }
  }

  return first;
}
