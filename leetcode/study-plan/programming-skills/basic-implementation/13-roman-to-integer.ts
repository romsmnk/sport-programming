// Problem: 13. Roman to Integer

// Runtime 9ms Beats 100%
// Memory 56.53 MB Beats 39.36%


function romanToInt(s: string): number {
  const symbolList = s.split('').reverse();
  let sum = 0;
  let skipNext = -1;

  symbolList.forEach((s, index) => {
    const current = parseRoman(s);
    let next = parseRoman(symbolList[index]);

    if (skipNext > 0) {
      skipNext = -1;
      return;
    }

    if (index + 1 !== symbolList.length) {
      next = parseRoman(symbolList[index + 1]);
    }

    if (next < current) {
      sum += current - next;
      skipNext = index + 1;
    } else {
      sum += current;
    }

  });

  return sum;
};

const parseRoman = (s: string) => {
switch (s.toUpperCase()) {
    case 'I':
      return 1;
    case 'V':
      return 5;
    case 'X':
      return 10;
    case 'L':
      return 50;
    case 'C':
      return 100;
    case 'D':
      return 500;
    case 'M':
      return 1000;

    default:
      return 0;
  }
};
