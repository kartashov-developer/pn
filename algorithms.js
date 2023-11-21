console.log(`=====================`);
// Линейный поиск индекса элемента
let arr = [12, 13, 100, 44, 3];
let target = 44; // нужный элемент
const linearSearch = (arr, target) => {
	// функция принимает массив и искомый элемен
	for (let i = 0; i < arr.length; i++) {
		if (arr[i] === target) return i;
	}
};

console.log(
	`Linear Search:\nNumber: "${target}" is on positon "${linearSearch(
		arr,
		target,
	)}" in array: [${arr}]`,
);

console.log(`=====================`);
// BubbleSort n^2
let arr2 = [13, 11, 100, 3, 1, 93];
const bubbleSort = (arr) => {
	const array = [...arr]; // создаем копию
	for (let i = 0; i < array.length; i++) {
		for (let j = i + 1; j < array.length; j++) {
			if (array[i] > array[j]) {
				let tmp = array[i];
				array[i] = array[j];
				array[j] = tmp;
				// [array[i], array[j]] = [array[j], array[i]]
			}
		}
	}
	return array;
};
console.log(
	`BubbleSort:\nWe BubbleSorted an array:[${arr2}] \ninto a new copy: [${bubbleSort(
		arr2,
	)}]`,
);
console.log(`=====================`);
// Факториал Числа
const numberForFactorial = 5;
function factorial(num) {
	if (num === 1) {
		return num;
	} // Базовое условие рекурсии
	return num * factorial(num - 1); // Рекурсия
}
console.log(
	`Factorial:\nFactorial of ${numberForFactorial} is ${factorial(
		numberForFactorial,
	)}`,
);
console.log(`=====================`);
// Последовательность Фибоначчи
const numberForFibonacci = 5;
function fibonacci(num) {
	if (num === 2) return 1;
	if (num === 1) return 0;
	return fibonacci(num - 1) + fibonacci(num - 2); // Рекурсия
}
console.log(
	`Fibonacci:\n${numberForFactorial} term in the sequence is ${fibonacci(
		numberForFibonacci,
	)}`,
);
console.log(`=====================`);
