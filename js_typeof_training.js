console.log("typeof function() {} >> ", typeof function () {}); //
console.log("typeof 3.14 >> ", typeof 3.14); //
console.log('typeof "" >> ', typeof ""); //
console.log('typeof "something" >> ', typeof "something"); //
console.log(
  "typeof new Promise() >> ",
  typeof new Promise((resolve, reject) => {})
); //
console.log("typeof 1 >> ", typeof typeof 1); //
console.log("typeof null >> ", typeof null); //
console.log("typeof true >> ", typeof true); //
console.log("typeof 37 >> ", typeof 37); //
console.log("typeof {a: 1} >> ", typeof { a: 1 }); //
console.log("typeof undefined >> ", typeof undefined); //
console.log("typeof new Date() >> ", typeof new Date()); //
console.log("typeof [1, 2, 4] >> ", typeof [1, 2, 4]); //
console.log("typeof Math.sin() >> ", typeof Math.sin()); //
console.log("typeof false >> ", typeof false); //
console.log("typeof class C {} >> ", typeof class C {}); //

let obj = {
  set: "name",
  func: () => {},
};

console.log("typeof obj.set >>", typeof obj.set); //
console.log("typeof obj.func() >>", typeof obj.func()); //
console.log("typeof obj.func >>", typeof obj.func); //
