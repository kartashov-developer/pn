type OBJECT = {
  "like you": boolean,
  "my first name": string,
  "your surname": string,
  "when did you married?": 2010,
}

const NEW_OBJECT: OBJECT = {
  "like you": true,
  "my first name": "Vyacheslav",
  "your surname": "Fioletov",
  "when did you married?": 2010
};

console.log(NEW_OBJECT["like you"]); // true
console.log(NEW_OBJECT["my first name"]); // "Vyacheslav"
console.log(NEW_OBJECT["your surname"]); // "Fioletov"
console.log(NEW_OBJECT["when did you married?"]); // 2010