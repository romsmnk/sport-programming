// Problem: 2011. Final Value of Variable After Performing Operations

// Runtime 0ms Beats 100%
// Memory 51.04 MB Beats 98.72%

function finalValueAfterOperations(operations: string[]): number {
  const minuses = new Set(['--X', 'X--']);
  return operations.reduce((acc, el) => minuses.has(el) ? acc - 1 : acc + 1, 0);
};
