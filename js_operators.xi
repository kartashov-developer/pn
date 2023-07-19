| let isSad = true; // инициализируем переменную, присваивая ей булевое значение примитивного типа
| let isHappy = !isSad; // инициализируем переменную, присваивая ей противоположное значение значения переменной isSad 'false'
| let isFeeling = isSad || isHappy; // Что-то из них правда? true
| console.log(isFeeling);
| let isConfusing = isSad && isHappy; // Оба правда? false
| console.log(isConfusing);