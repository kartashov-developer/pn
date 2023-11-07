[js] @

Trigger	Content .
?imp→?	imports entire module import fs from 'fs';
?imn→?	imports entire module without module name import 'animate.css'
?imd→?	imports only a portion of the module using destructing import {rename} from 'fs';
?rqr→?	require package require('');
?req→?	require package to const const packageName = require('packageName');
?mde→?	default module.exports module.exports = {};
?edf→?	exports default function export default function fileName (parameter){ console.log(parameter);};
?ece→?	exports default class by extending a base one export default class Calculator extends BaseClass { };
Various methods .
?fre→?	forEach loop in ES6 syntax array.forEach(currentItem => {})
?fof→?	for ... of loop for(const item of object) {}
?fin→?	for ... in loop for(const item in object) {}
?nfn→?	creates a named function const add = (params) => {} |!|
?dob→?	destructing object syntax const {rename} = fs |!|
?dar→?	destructing array syntax const [first, second] = [1,2] |!|
?sti→?	set interval helper method setInterval(() => {}); |!|
?sto→?	set timeout helper method setTimeout(() => {}); |!|
?prom→?	creates a new Promise return new Promise((resolve, reject) => {});
?thenc→?	adds then and catch declaration to a promise 
.then((res) => {}).catch((err) => {}); |!|
Console methods .
?cer→?	console error console.error(object)
?clg→?	console log console.log(object)
?clo→?	console log object with name console.log('object :>> ', object);