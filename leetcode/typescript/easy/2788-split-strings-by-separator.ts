// Problem: 2788. Split Strings by Separator

// Runtime 5 ms Beats 96.00%
// Memory 58.76 MB Beats 86.11%

function splitWordsBySeparator(words: string[], separator: string): string[] {
  return words.join(separator).split(separator).filter((word) => word);
};