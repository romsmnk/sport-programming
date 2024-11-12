// Problem: 2418. Sort the People

// Runtime 6ms Beats 83.78%
// Memory 54.56 MB Beats 91.27%

function sortPeople(names: string[], heights: number[]): string[] {
  const combined = names.map((name, index) => [name, heights[index]]);
  
  combined.sort((a: any, b: any) => b[1] - a[1]);

  return combined.map(item => item[0]) as string[];;
}
