/* &&(и) - если что-то false, то вернет первое найденное false, если false 
отсутствует, то вернет последнее true-значение.
Так как undefined:false и null:false, при их сравнении вернет последнее в 
списке:*/
console.log("===============Логические операторы===============")
console.log("========Логическое И========")
console.log(`null && undefined: ${null && undefined}`); // null
console.log(`undefined && null: ${undefined && null}`); // undefined
/* ||(или) - если что-то true, то вернет первое найденное true, если true 
отсутствует, то вернет последнее false-значение. Так как undefined:false и 
null:false, при их сравнении вернет последнее в списке:  */
console.log("========Логическое ИЛИ========")
console.log(`null || undefined: ${null || undefined}`); // undefined
console.log(`undefined || null: ${undefined || null}`); // null
