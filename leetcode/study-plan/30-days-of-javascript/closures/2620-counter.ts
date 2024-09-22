// problem: 2620. Counter

// Runtime 61ms Beats 26.49%
// Memory 51.26 MB Beats 61.41%

function createCounter(n: number): () => number {

  return function() {
      return n++;
  }
}

// Runtime 48ms Beats 89.46%
// Memory 51.27 MB Beats 61.41%

const createCounter2 = (n: number): () => number => () => n++;
