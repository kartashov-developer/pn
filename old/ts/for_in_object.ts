type UserT = {
  name: string
  age: number
  isAdmin: boolean
}

const userd: UserT = {
  name: 'John',
  age: 30,
  isAdmin: true,
}

for (let key in userd) {
  // ключи
  console.log(key) // name, age, isAdmin
  // значения ключей
  console.log(userd[key as keyof typeof userd]) // John, 30, true
}
