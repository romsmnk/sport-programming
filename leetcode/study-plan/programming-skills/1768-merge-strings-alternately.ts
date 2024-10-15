// Problem: 1768. Merge Strings Alternately

// Runtime 55ms Beats 77.67%
// Memory 51.76 MB Beats 73.10%

const mergeAlternately = (word1: string, word2: string): string => {
  let arr: string[] = [];

  word1.split('').forEach((a, i) => {
      arr[i * 2] = a;
  });

  word2.split('').forEach((a, i) => {
      arr[i * 2 + 1] = a;
  });

  return arr.join('');
};
