// Problem: 557. Reverse Words in a String III

// Runtime 5 ms Beats 98.68 %
// Memory 56.1 MB Beats 79.26%

const reverseWords = (s: string): string => {
  return s.split(' ').map((x) => x.split('').reverse().join('')).join(' ');
};
