Awaited Type @

. This type is meant to model operations like await in async functions, or the 
  |.then()| method on Promises - specifically, the way that they recursively 
  unwrap Promises.
  |{ts}  
  | // A = string
  | type A = Awaited<Promise<string>>;
  | // B = number
  | type B = Awaited<Promise<Promise<number>>>;
  | // C = boolean | number
  | type C = Awaited<boolean | Promise<number>>;