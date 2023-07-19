(function sum(a, b) {
	return console.log(`${a} -> ${b}`);
})(1, 3);

// A property is any value attached to an object. A method is a property that is a function.
// this, always references the owner of the function it is in, for this case — since it is now out of scope — the window/global object.
// Can console.log({ myConst }) to log the variable with the value as an object so you see the variable name & the value. As opposed to doing console.log(myConst, 'myConst').
const myConst = 'hi';
console.log('myConst -> ', myConst);
