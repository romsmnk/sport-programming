// Problem: 3131. Find the Integer Added to Array I

// Runtime 0ms Beats 100%
// Memory 51.38MB Beats 97.83%

const addedInteger = (nums1: number[], nums2: number[]): number => {
  return Math.min(...nums2) - Math.min(...nums1);
};
