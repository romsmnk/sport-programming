// Problem: 1929. Concatenation of Array

// Runtime 0ms Beats 100%
// Memory 55.00 MB Beats 19.34%

function getConcatenation(nums: number[]): number[] {
  return [...nums, ...nums];
};

const getConcatenation2 = (nums: number[]): number[] => nums.concat(nums);

// Runtime 0ms Beats 100%
// Memory 54.40 MB Beats 55.29%
