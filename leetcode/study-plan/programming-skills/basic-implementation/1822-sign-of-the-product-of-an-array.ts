// Problem: 1822. Sign of the Product of an Array

// Runtime 0ms Beats 100%
// Memory 51.17 MB Beats 96.05%

const arraySign = (nums: number[]): number => {
  if (nums.includes(0)) return 0;

  let product = nums[0];
  nums.forEach((e, i) => {
      if (i === 0) {
          return;
      } else {
          product *= e;
      }
  });

  if (product > 0) return 1
  else return -1;
};
