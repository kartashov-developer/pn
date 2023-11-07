[ts]

Arrays .
  Creating an array .
    1. var, let, const = array .
    |{typescript}
    | const array: [string, number, boolean] = ["first", 2, true];
      . You could specify special type in array:
      |{typescript}
      | const array: [number, "Vyacheslav"] = [1998, "Vyacheslav"];
    2. array of strings, numbers, booleans .
    | string[], number[], boolean[]
    3. Array<type> .
    | const animals: Array<string> = ["one", "two", "three"];
    | const years: Array<number> = [1998, 1999, 2000];
Tuples .

Class .

Enum .
