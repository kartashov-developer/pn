[tsr] @

. Создаем компонент |Input| и экпортируем его:
| export const Input = () => {
|   return <input />
| }
. Создаем `interface` для создания типизации и экстендимся от реактовских HTML пропсов. В дженерик закидываем наш используемый HTML-тег(в данном случае <input>).
| interface InputProps extends React.HTMLProps<HTMLInputElement> {}
. Добавляем типизацию в компонент:
  # Данный компонент является функциональным {React.FC},
  # Добавляем дженерик от нашего `interface` {InputProps}.
  | export const Input: React.FC<InputProps> = () => {
  |   return <input />
  | }
. Добавляем пропс ?props?, который уже включает в себя все доступные атрибуты тега <input> и спредим его:
| export const Input: React.FC<InputProps> = ({...props}) => {
|   return <input {...props} />
| }

