// Problem: 1859. Sorting the Sentence

// Runtime 54ms Beats 75%
// Memory 50.76MB Beats 95.92%

function sortSentence(s: string): string {
  let arr2: string[] = [];
  s.split(' ').forEach((x) => {
      const len: number = +x.length;
      const num: number = +x.substr(len - 1);
      const word: string = x.substr(0, len - 1);
      arr2[num - 1] = word;
  });
  
  return arr2.join(' ');
};
