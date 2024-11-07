// Problem: 1108. Defanging an IP Address

// Runtime 50ms Beats 76.32%
// Memory 51.34 MB Beats 26.51%

function defangIPaddr(a: string): string {
  return a.split('.').join('[.]');
};
