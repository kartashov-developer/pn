type MakeUserAgrs = (name: string, surName: string, age: number) => Object;

const makeUser: MakeUserAgrs = function(name, surName, age) {
  return {name, surName, age};
  // name: name, surName: surName, age: age
}

console.log(makeUser("slava", "fioletov", 12)); 
// { name: 'slava', surName: 'fioletov', age: 12 }

