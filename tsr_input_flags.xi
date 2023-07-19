[tsr] @

. У нас есть следующий код:
  | interface InputProps extends React.HTMLProps<HTMLInputElement> {}
  | export const Input: React.FC<InputProps> = ({...props}) => {
  |   return <input {...props} />
  | }
  . Нужно добавить изменение цвета нашего инпута, если происходит ошибка.
# Создаем пропсы ?isError?, ?helperText? и добавляем их в `interface`.
  | interface InputProps extends React.HTMLProps<HTMLInputElement> {
  |   isError?: boolean;
  |   helperText: string;
  | }
  ! Он обязан иметь |?|, так как не обязателен.
# Добавляем пропс ?isError? в компонент и назначаем дефолтное значение <false>, также добавляем ?helperText?:
  | export const Input: React.FC<InputProps> = ({isError = false, helperText, ...props}) => {
# !isError! Создаем константу {className}, которое примет или значение |input_error| или |''|, в зависимости от текущего значения ?isError?:
  | const className = isError ? 'input_error' : '';
# !isError! Передаем константу в className:
  | return <input className={className} {...props} />;
# !helperText! Добавляем JSX-выражение(|{}|) с логическим оператором |&&И|, которое находит первое <false> значение и возвращает последнее, если все |true|.
  Если `isError===true` |И| `helperText не равен null` |то верни последнее| `<div>{helperText}</div>`
  | {isError && (helperText !== null) && <div className='input_helper_text'>{helperText}</div>}

Итог: .
. Пропс ?isError? содержит в себе булевое значение.
. Пропс ?helperText? содержит в себе строковое значение.
. ?isError? не обязателен(|?|).
. По дефолту ?isError?=<false>.
. Константа {className} будет содержать в себе:
  - если ?isError?=|true|, то строку |input_error|;
  - если ?isError?=<false>, то ничего |''|.
. Значение константы {className}, передается в атрибут <input> `className`.
. !helperText! Если `isError===true` |И| `helperText не равен null` |то верни последнее| `<div>{helperText}</div>`



