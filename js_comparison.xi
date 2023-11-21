Comparison @

== .
Loose equality .
Нестрогое равенство .
. Приводит оба значения к общему типу.

=== .
Strict equality .
Строгое равенство .
. Тип не изменяется. Сравнивается по значению.
. Если |a| и |b| имеют разные типы, то проверка |a === b| немедленно возвращает 
	{false} без попытки их преобразования.

Reference @
[#MDN] [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Equality_comparisons_and_sameness]