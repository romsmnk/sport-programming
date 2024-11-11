// Problem: 2652. Sum Multiples

// Runtime 1ms Beats 92.86%
// Memory 53.69 MB Beats 56.18%

const sumOfMultiples = (n: number): number => {
  let sum: number = 0;
  for (let i = 1; i <= n; i++) {
      if (!(i % 3) || !(i % 5) || !(i % 7)) {
          sum += i;
      }
  }
  return sum;
};

const sumOfMultiples2 = (n: number): number => {
  let sum: number = 0;
  for(let e=1; e <= n; e++) {
      if (e%3 == 0 || e%5 == 0 || e%7 == 0) sum += e;
  }
  return sum;
};
