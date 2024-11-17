// Problem: 2108. Find First Palindromic String in the Array

// Runtime 24 ms Beats 36.67 %
// Memory 57.18 MB Beats 54.43%

const firstPalindrome = (w: string[]): string => w.find((e) => e === e.split('').reverse().join('')) ?? '';
