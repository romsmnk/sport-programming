// Problem: 3079. Find the Sum of Encrypted Integers

// Runtime 49 ms Beats 100%
// Memory 54.85 MB Beats 33.33%

const encrypt = (num: number): number => {
  let nd = 0;
  let md = 0;
  while (num) {
      const d = num % 10;
      if (d > md) md = d;
      num = (num - d) / 10;
      nd += 1;
  }
  let res = 0;
  while (nd--) {
      res = res * 10;
      res += md;
  }
  return res;
}

const sumOfEncryptedInt = (nums: number[]): number => {
  return nums.reduce((a, b) => a + encrypt(b), 0);
};
