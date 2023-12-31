Event Loop @

`Event Loop` - цикл событий.
. Несколько вещей одновременно. Он вращается: то одна задача, то другая.
. У него два этапа:
  # Выполнить код: |scope|.
  # Обновить интерфейс.
. Первый виток цикла событий.
  . ?Задача?: JavaScript-код в стеке вызовов.
  . ?Тик?: выполнение задачи в стеке вызовов.
  . ?Web API?: свойства и методы в глобальном объекте |window|.
  Web API .
  . У Web API есть два вида методов: синхронные и асинхронные.
    Синхронные .
    .
    Асинхронные .
    . Мы вызываем методы и обработчик, который будет выполнен не сейчас, а
      потом, когда информация будет получена. Этих задач может быть много.
      Поэтому существует `очередь задач`. Туда попадают данные/задачи, которые
      мы получили от ?Web API?. Дальше наш код выолняется и обновляет
      интерфейс.

      ?Web API?            →→→→→→→→→→→→→→→→
          ↓               ↑                 ↓
       !Очередь! -> ^Выполнить код^ -> ^Обновить интерфейс^
                          ↑                 ↓
                           ←←←←←←←←←←←←←←←←←
      Очередь задач .
      . Таймеры{setTimeout()} и пользовательские события{addEventListener},
        попадают в очередь задач.
      . Очередь задачь делит задачи на `микрозадачи` и `макрозадачи`.
        Микрозадачи .
        # | Promise.resolve.then(() => {})
        # | async function() { await }
        # | queueMicrotask(() => {})

Reference @