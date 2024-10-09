// Problem: 3110. Score of a String

// Runtime 50ms Beats 98.55%
// Memory 51.94 MB Beats 87.76%

function scoreOfString(s: string): number {
  const codeList = s.split('').map((s) => {
      return s.charCodeAt(0);
  });

  let sum = 0;
  codeList.forEach((n, i) => {
      if (codeList[i + 1]) {
        sum += Math.abs(n - codeList[i + 1]);
      }
  })

  return sum;
};
