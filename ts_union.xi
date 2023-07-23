[ts]

Union .
  Defining a Union Type .
  . Parameter |id| could be: |number type| or |string type|.
  |{ts}
  | function printId(id: number | string) { 
  |     console.log("Your ID is: " + id); 
  | };
  | printId(42); // Good: typeof number
  | printId("202"); // Good: typeof string
  | printId(true); // Error: typeof boolean
  | printId({ myId: 22342 }); // Error: typeof object
  Working with Union Types .
  . Problem with |Union Types| that we cannot use string methods, like 
    (toLowerCase(), toUpperCase()) with number methods and vice versa.
    Yes, TypeScript knows that string passed, but he cannot use it on string.
    So it must be explicitly stated using |if|:
    |{ts}
    | function printId(id: number | string) {
    |   if (typeof id === "string") { // if string, do...
    |     console.log(id.toUpperCase());
    |   } else { // if other, do...
    |     console.log(id);
    |   }
    | }
    Or: 
    |{ts}
    | function welcomePeople(x: string[] | string) {
    |   if (Array.isArray(x)) { // if array, do...
    |     console.log("Hello, " + x.join(" and "));
    |   } else { // if string, do...
    |     console.log("Welcome lone traveler " + x);
    |   }
    | }
