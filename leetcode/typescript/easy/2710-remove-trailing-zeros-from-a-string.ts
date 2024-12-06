// Problem: 2710. Remove Trailing Zeros From a String

// Runtime 0ms Beats 100%
// Memory 51.79MB Beats 100%

const removeTrailingZeros = (num: string): string => num.replace(/\.?0+$/, '');
