[ts]

! .
. TypeScript имеет специальный синтаксис для удаления |null| и |undefined| из
  типа без какой-либо явной проверки. Написание `!`после любого выражения
  фактически является утверждением типа, что значение не равно |null| или
  |undefined|:
  |{lng:ts}
  | function liveDangerously(x?: number | null | undefined) {
  |  console.log(x!); - теперь x не будет равен null || undefined
  | }
