[ts]

[Literal_Types] .
. Литеральные типы позволяют создавать |type| с определенным значением. В примере ниже мы создаем тип |type Role| и записываем туда строку |Admin|. Теперь, привязав литеральный тип |Role| к переменной `adminRole`, у нас будет только один выбор - строка `Admin`. Ничего, кроме нее, мы передать туда не сможем.
| type Role = "Admin";
| const adminRole: Role = "Admin";
| const userRole: Role = "User"; => error "Admin" != "User"
. Литеральные типы можно использоваться с [ts_union](объединение литеральных типов). Для этого создадим новый тип:
| type Roles = "Admin" | "User" | "Moderator";
Отлично, теперь попробуем несколько переменных с типом |Roles|:
| const adminRole: Roles = "Admin";
| const userRole: Roles = "User";
| const moderatorRole: Roles = "Moderator";
| const something: Roles = "Another"; => error "Another" != "Admin" | "U" | "M"
Наш литеральный тип |Roles| знает, что в него записаны лишь три варианта.

. Оператор |keyof| используется для получения ключей любого типа.
. Пример. Создадим |interface User| с двумя ключами `name` & `age`:
| interface User {
|   name: string;
|   age: number;
| }=;
Создадим тип |UserKeys| и используем оператор |keyof| на |interface User|, тем самым запрашивая его ключи(`name`, `age`):
| type UserKeys = keyof User;
Теперь объявим переменную |props| и зададим ей |type UserKeys|:
| const prop: UserKeys;
| prop = "age";
| prop = "name";
| prop = "something else"; => error: prop != "age" | "name"
Мы видим, что в нее мы можем записать только ключи объекта |interface User|.

















