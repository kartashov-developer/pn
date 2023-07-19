

Строки .
  Иммутабельность строк .
  |{js}
  | let reaction = 'yikes';
  | reaction[0] = 'l';
  | console.log(reaction); // 'yikes'
  | let stringZ = 'hello';
  | stringZ[0] = 'j';
  | console.log(stringZ); // 'hello'


|{js}let price = 100;|
|{js}let offer = price + 1;| <price> = 100; |offer| = 101
|{js}price = 200;| <price> = 200; |offer| = 101

Number .
|{js}
| let number1 = 4234;
| let number2 = 1.32;
  Infinity .
  . Деление на 0:
  |{js}
  | console.log(4/0); // Infinity
  | console.log(-4/0); // -Infinity
  NaN .
  . Не число.
  |{js}
  | console.log('string' * 12); // NaN
