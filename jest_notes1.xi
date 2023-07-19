[jest] @

. |Automated test| is code, that throw an !Error!, when result is unexpected.
  For example:
  | if (result !== expected) {
  |   throw new Error(`${result} is not equal ${expected}`);
  | } >> Error: -4 is not equal to 10



















TODO: Testing file
| let result, expected;

| // result = 133;
| // expected = 10;
| // expect(result).toBeGreaterThan(expected)
| // result = 2;
| // expected = 10
| // expect(result).toBeLessThan(expected)
| // result = 'string'
| // expected = 11
| // expect(result).toBeNumber(expected)
| // result = 12
| // expected = false
| // expect(result).toBeNumber(expected)
| // result = 'string'
| // expected = true
| // expect(result).toBeNumber(expected)

| function expect(actual) {
|   return {
|     toBeGreaterThan(expected) {
|       if (actual > expected) {
|         throw new Error(`${actual} is greater then ${expected}`);
|       }
|     },
|     toBeLessThan(expected) {
|       if (actual < expected) {
|         throw new Error(`${actual} is less then ${expected}`);
|       }
|     },
|     toBeNumber(expected) {
|       if (typeof expected !== 'number' && typeof actual !== 'number') {
|         throw new Error(`${actual} and ${expected} is not a numbers`);
|       } else if (typeof expected !== 'number') {
|         throw new Error(`${expected} is not a number`);
|       } else if (typeof actual !== 'number') {
|         throw new Error(`${actual} is not a number`);
|       }
|     }
|   }
| }
