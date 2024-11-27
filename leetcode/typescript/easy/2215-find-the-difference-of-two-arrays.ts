// Problem: 2215. Find the Difference of Two Arrays

// Runtime 64ms Beats 8.44%
// Memory 55.5MB Beats 95.83%

function findDifference(nums1: number[], nums2: number[]): number[][] {
  let first: number[] = [];
  let second: number[] = [];

  for (const num of nums1) {
      if (nums2.indexOf(num) < 0) {
          if (first.indexOf(num) === -1) {
              first.push(num);
          }
      }
  }

  for (const num of nums2) {
      if (nums1.indexOf(num) < 0) {
          if (second.indexOf(num) === -1) {
              second.push(num);
          }
      }
  }

  return [first, second];
};

// Runtime 6ms Beats 96.44%
// Memory 57.6MB Beats 24.71%

function findDifference2(nums1: number[], nums2: number[]): number[][] {
  const set1 = new Set(nums1)
  const set2 = new Set(nums2)
  for (const value of set1) {
      if (set2.has(value)) {
          set1.delete(value)
          set2.delete(value)
      }
  }
  return [
      Array.from(set1),
      Array.from(set2)
  ]
};
