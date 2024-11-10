// Problem: 771. Jewels and Stones

// Runtime 0ms Beats 100%
// Memory 51.37 MB Beats 86.56%

const numJewelsInStones = (jewels: string, stones: string): number => {
  const jewelSet = new Set<string>(jewels);
  let count = 0;

  for (const stone of stones) {
      if (jewelSet.has(stone)) {
          count++;
      }
  }

  return count;
};
