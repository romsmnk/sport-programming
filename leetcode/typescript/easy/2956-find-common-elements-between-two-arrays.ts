// Problem: 2956. Find Common Elements Between Two Arrays

// Runtime 8ms Beats 80%
// Memory 56.39MB Beats 52.83%

function findIntersectionValues (nums1: number[], nums2: number[]): number[] {
  const first: number = nums1.filter(num => nums2.includes(num)).length;
  const second: number = nums2.filter(num => nums1.includes(num)).length;
  
  return [first, second];
}
