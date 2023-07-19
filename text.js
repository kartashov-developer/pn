var x = 10;
function sum(a) {
  console.log(x);
  if (a > 10) {
    console.log(x)
    var x = 20;
  }
  console.log(x)
};

sum(300)
console.log(x)