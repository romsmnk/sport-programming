// Problem: 2643. Row With Maximum Ones

// Runtime 2 ms Beats 100%
// Memory 59.56 MB Beats 42.86%

const rowAndMaximumOnes = (mat: number[][]): number[] => {
  let maxRowIndex = 0;
  let maxOnes = 0;
  for (let i = 0; i < mat.length; i++) {
    let sumOfOnes = 0;
    for (let j = 0; j < mat[i].length; j++) {
      sumOfOnes += mat[i][j];
    }
    if (sumOfOnes > maxOnes) {
      maxOnes = sumOfOnes;
      maxRowIndex = i;
    }
  }
  return [maxRowIndex, maxOnes];
};
