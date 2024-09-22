// problem: 2635. Apply Transform Over Each Element in Array

// Runtime 55ms Beats 65.79%
// Memory 51.30 MB Beats 62.95%

function map(arr: number[], fn: (n: number, i: number) => number): number[] {
  const newArr: number[] = [];

  for(let i = 0; i < arr.length; i++) {
    newArr.push(fn(arr[i], i));
  }

  return newArr;
};
