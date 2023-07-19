[web] React @

. [redux].

Состояние и жизненный цикл .
. |Монтирование(Mounting)| - первоначальный рендеринг компонента.
  Этот метод запускается после того, как компонент отрендерился в DOM.
  | componentDidMount(){}
. |Размонтирование(UnMounting)| - удаление DOM-узла, созданного компонентом.
  | componentWillUnmount(){} 

State Managements .
. Redux, Recoil
  Контекст .
  . Контекст позволяет передавать данные через дерево компонентов без 
    необходимости передаiвать пропсы на промежуточных этапах.
  . Внутреннее состояние React.
  . UI-тема, язык, аутенцифицированный пользователь.
  . Контекстов может быть несколько.
  . Состояние прокидываются сверху вниз. Это называется |PropsDrilling|. Мы 
    бурим пропсом несколько компонентов, что является неудобным и поэтому 
    используется глобальный контекст: 
    ! выходя из |a|, мы пропускаем точки |b| и |c|, идя сразу в |d|.
    Контекст позволяет избежать передачи пропсов в промежуточные компоненты.
    Создание .
    . Создается с помощью метода |createContext|.
      |{lng: jsx}
      | const Context = React.createContext('light');
    Передача .
    . Передается с помощью компонента |Provider|. Тем самым тема идет вниз по 
      дереву. Любой компонент может использовать этот контекст и не важно, как
      глубоко он находится.
      |{lng: jsx}
      | <ThemeContext.Provider value='light'>
      |   <Toolbar />
      | </ThemeContext.Provider>
    Получение .
    . Чтобы получить значение контекста используется |contextType|.
      |{lng: jsx}
      | static contextType = ThemeContext; -- при static один контекст
      | return <Button theme={this.context} />
Предохранители .

Ref .
. Работа с медиа, анимацией, фокусом, скроллом.
. Ссылка на DOM-дерево. 
. Должен работать с модальным окном.

Неуправляемые компоненты .

Типизация .
  'prop-types' .
  | import PropTypes from 'prop-types';
  TypeScript .
  Flow .

Hooks .<<
. Должны быть на самом верху.
. Нельзя использовать в циклах, if.
  Life Cycle .
  Состояние .
  . Нужен, чтобы встраивать различные логические действия в состояния 
    компонента.
  useState .
  . 
  useEffect .
  . Предназначен для работы со состоянием(Life Cycle).
  . Принимает два параметра:
    # коллбэк-функция(обязательный),
    # массив(необязательный).
      . Массив пустой - выполнится один раз.
      . Этот массив помогает нам оптимизировать UI. Все, что мы запишем в 
        массив, будет отслеживаться и при обновлении useEffect срабатывает 
        заново.
      . Сравнивает прошлое состояние с нынешним и выполняется, если они не 
        совпадают.
  . Есть useEffect со сбросом и без сброса.

Кастомные хуки .
  useCounter . 
  | const useCounter = () => {
  |   const [value, setValue] = React.useState(0);
  |   function handleIncrement() { setValue(value => value + 1); };
  |   function handleDecrement() { setValue(value => value - 1); };
  |   return { value, handleDecrement, handleIncrement };
  | }
  В нужном компоненте создаем состояние:
  | const { value, handleDecrement, handleIncrement } = useCounter(0);







React @

. Компонент - переиспользуемый UI элемент. Я могу использовать его везде.
Рендер .
  Запуск рендера .
  Trigger a render .
  Trigger .
  . Есть две причины рендера компонента:
    # Происходит первоначальный рендер компонента.
      . Когда приложение запускается, нужно создать первый рендер. Он
      происходит благодаря !createRoot().render!:
        |{index.jsx}
        | const root = createRoot(document.getElementById('root'))
        | root.render(<Image />);
    # Состояние компонента или одного из его потомков было обновлено.
      . После первоначального рендеринга компонента, можно запускать
        следующие рендеры, с помощью [функции] |set|. Обновление состояния
        компонента автоматически ставится в очередь.
  Процесс рендеринга .
  Render the component .
  Render .
  . Первоначальный рендеринг запустит корневой компонент. Последующие
    затронут компоненты, чьи состояния были обновлены.
  Отображение изменений .
  Committing to the DOM .
  Commit .
  . React фиксирует изменения и модифицирует DOM.
  . Изменяются DOM-узлы лишь тогда, если между рендерами есть разница.
  . Если DOM-узел не изменил положения - он не будет перерендерен заново.
State as a Snapshot .
Hooks .
. Hooks are special functions that only available while React is rendering.
  They help us to have different React features.
. Hooks can only be called at the top level of components or own Hooks.
. Can't call Hooks inside conditions, loops or other nested functions.
. Starts with |use|.
  useState .
  . Needed when you want this component to remember something.
    Syntax .
    | const [state, setState] = useState(initialValue);
      . |state variable| to retain the data between renders.
      . |state setter function| to update the variable and trigger React to
        render the component again.
      . |initialValue| - to have state of the variable.







Reference @
. Official Docs [https://react.dev]
. Old Docs [https://legacy.reactjs.org/]

Ofc [HTTPS://legacy.reactjs.org] .
Ofc [HTTOPShttps://legacy.reactjs.orgLEGACE.xi] .



React @

Basics [react_basics] .
  JSX [react_jsx] .
  Styles [react_styling] .
  Props [react_props] .
  Imports [react_imports] .
React Hooks [react_hooks] .
  useState() [react_usestate]  .
  useEffect() [react_useeffect]  .
  useRef() [react_useref]  .
  useMemo() [react_usememo]  .
  useCallback() [react_usecallback]  .
  useContext() [react_usecontext]  .
Other .
  Code Snippets [react_codesnippets] .
  Create React App[] .

Course 'React Introduction' Summary from Kent C.Dodds .
  react_brin1[] .







