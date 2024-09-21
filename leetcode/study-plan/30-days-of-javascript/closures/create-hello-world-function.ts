// problem: 2667. Create Hello World Function

// Runtime 51ms Beats 76.69%
// Memory 50.34 MB Beats 8.09%

function createHelloWorld() {
    
  return function(...args): string {
      return "Hello World";
  };
};

// Runtime 43 ms Beats 97.03%
// Memory 50.96 MB Beats 5.25%

const createHelloWorld2 = () => (...args): string => "Hello World";
