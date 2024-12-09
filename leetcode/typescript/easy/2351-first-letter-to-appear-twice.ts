// Problem: 2351. First Letter to Appear Twice

// Runtime 0 ms Beats 100%
// Memory 50.98 MB Beats 84.88%

function repeatedCharacter(s: string): string {
  let seen = 0;

  for (let i = 0; i < s.length; i++) {
    const charCode = s.charCodeAt(i) - 97;
    const bitmask = 1 << charCode;

    if (seen & bitmask) {
      return s[i];
    }

    seen |= bitmask;
  }

  return '';
};
