[js] @

Методы объекта .
  Object.keys() .
  . Принимает в себя {объект}.
  | const options2 = {
  |   name: "test",
  |   width: 1024,
  |   height: 1024,
  |   colors: {
  |     border: "black",
  |     bg: "red",
  |   },
  | };
  | console.log(Object.keys(options2)); // >> [ 'name', 'width', 'height', 'colors' ]
  | console.log(Object.keys(options2).length); // >> length == 4
