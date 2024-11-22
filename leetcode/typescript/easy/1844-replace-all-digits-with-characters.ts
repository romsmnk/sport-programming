// Problem: 1844. Replace All Digits with Characters

// Runtime 0ms Beats 100%
// Memory 51.34MB Beats 79.17%

const replaceDigits = (s: string): string => {
  const chars = s.split("");
  for(let i = 1; i < chars.length; i+=2){
      chars[i] = String.fromCharCode(s.charCodeAt(i-1) + Number(chars[i]));
  }
  return chars.join("");
};

// Runtime 5 ms Beats 98.68 %
// Memory 56.1 MB Beats 79.26%

const replaceDigits2 = (s: string): string => {
  const alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  
  let str = '';

  s.split('').forEach((e, i) => {
      if (+e === 0) {
          str += s[i - 1];
      } else if (+e > 0) {
          const currIndex = alphabet.findIndex(t => t === s[i - 1]);
          str += alphabet[currIndex + +e];
      } else {
          str += e;
      }
  });

  return str;
};
