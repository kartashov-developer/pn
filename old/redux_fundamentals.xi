Redux Fundamentals @

|18:25|

Redux Overview .
. Redux helps to manage global state through the app.
  |Global state| - state that is needed across many parts of app.
  Data Flow .
  . Algorithm by text:
    1. creating action object -> 
    2. dispatch action object -> 
    3. store runs the root reducer function -> 
    4. root reducer calculate new state, based on old state and action ->
    5. store notifies subscribers that the state updated.
  Store .
  . The center of every Redux app.
  . |Store| - container that holds app's global state.
  Reducer .
  . Accepts {current state (object) to compare it},
    and {action (object) that describing what happened}.
    Returns {new state (object)}.
  ! Need to update the state immutably by copying the existing state and 
    updating the copy, instead of modifying the original object directly.
  . Reducer checks an action object. If reducer cares about this action.type,
    reducer will copy state and update it.
    If not -> return the existing state unchanged.
    Reducer rules .
    1. Calculating is based on state and action object.
    2. Can't modify the existing state.
    3. Can't use timeouts and async logic.
    Why it's called Reducer? .
    . Because of |{lng:js}Array.reduce()| method. It process each item in the 
      array and return a single final result. "Reducing the array down to one 
      value".
      Same logic here. Reducer takes a callback function as an argument, which
      will be called one time for each item in the array. Callback function 
      takes 2 arguments:  
        * {previousResult - that callback returned last time},
        * {currentItem - the current item in the array}.
    ! First time there isn't {previousResult}, so we need to pass it in an 
      |initialValue|.
  Action .
  . |Action| - JS object, that has a `type` field.
    . Property type should be a string.
  . Action object could have other fields with additional info about what 
    happened. By convention it's called: |payload|.
    |{lng:js}  
    | const addTodoAction = {
    |   type: "todos/todoAdded",
    |   payload: "Buy milk"
    | }
  . Action type should be a readable name so anyone who looks could 
    understand what it means.
  Dispatch .
  . Method. Accepts |{}|.
  . This is the only one way to to update the state.
  Selectors .
  . Functions that know how to extract specific pieces of info from store 
    state values.
  . Helps avoid repeating logic as different parts of the app need to read 
    the same data.
    |{lng:js}  
    | const selectCounterValue = state => state.value;
    |  
    | const currentValue = selectCounterValue(store.getState());
    |  
    | console.log(currentValue); // 2
  Creating low-level example .
  1. Defining an initial state value to describe global state:
    |{lng:js}  
    | const initialState = {
    |   counter: 0
    | }
  2. Then, defining reducer function:
    |{lng:js}  
    | function countReducer(state = initialState, action) {
                      ⬇ reducer usually look on the type of action to decide
                      ⬇ how to update the state
    |   switch(action.type) {
                  ⬇ if action.counter/incremented -> do this
    |     case "counter/incremented":
                        ⬇ can't change state object -> copying existing state 
                        ⬇ and then updating the copy, instead of modifying
    |       return { ...state, counter: state.counter + 1 };
    |     case "counter/decremented":
    |       return { ...state, counter: state.counter - 1 };
    |   }
    | }
  3. Create a new Redux store:
    |{lng:js}  
    | const store = Redux.createStore(countReducer);// reducer to update logic
  4. Render UI and subscribe on any data changes:
    |{lng:js}  
    | const countElement = document.getElementById("count");
    |  
    | function render() {
    |   const state = store.getState(); // get properties in our state
    |   countElement.innerHTML = state.count.toString(); // insert state
    | }
    | render();
    |  
    | store.subscribe(render); // data changes -> re-render
  5. Dispatching actions:
    |{lng:js}  
    | document.getElementById("increment").addEventListener("click", () => {
    |   store.dispatch({ type: "count/incremented" });
    | })
State, Actions, and Reducers .
. !features! - code that relates to specific concept or area of app.
  combineReducers .
  . API method from Redux, which accepts {object}, where |key| will become 
    root state object and values will be come values.
    |{lng:js}  
    | import { combineReducers } from 'redux';
    |  
    | const rootReducer = combineReducers({
    |   todos: todosReducer,
    |   filters: filtersReducer
    | })
Store .
  Methods .
  - !store.getState()! - allows access to the current state
  - !store.dispatch(action)! - allows state to be updated
  - !store.subscribe(listener)! - registers listener callbacks

  Enhancers .
  |???|
  Middleware [#3] .
  . Used for customizing the !dispatch! function: logging, crash reporting, 
    talking to asynchronous API, routing.
  . Provides a extension point between dispatching an action, and the moment it 
    reaches the reducer.
  . Middleware is composable -> can be combined together.
  ! Could use timeouts and async logic.
    Using .
      How it works? .
      . When we call |{lng:js}store.dispatch(action)| we actually calling first 
        middleware. When he see specific action he could do special logic. 
        After he passes action to the next middleware.
        Old Middleware .
        . Written as a series of 3 nested functions:
          |{lng:js, ES5}  
          // outer function exampleMiddleware - middleware, called by 
          // Redux method applyMiddleware(). Accepts {dispatch, getState} funcs.
          | function exampleMiddleware(storeAPI) {
          // middle function wrapDispatch accepts function next(). Is is next 
          // middleware in chain. If last -> store.dispatch.
          |   return function wrapDispatch(next) {
          // inner function handleAction accepts current action object and 
          // called every time, when an action is dispatched.
          |     return function handleAction(action) {
          |        // do anything here
          |     }
          |   }
          | }
          |{lng:js, ES6}  
          | const exampleMiddleware = storeAPI => next => action => {
          |   // Do, when action is dispatched
          |   return next(action);
          | }
        . |{lng:js}storeAPI = { dispatch, getState }|
      applyMiddleware(...middleware) .
      . Accepts {middlewares (functions)}.
      . Each {middleware} 
      When we need to use it? .
      - Log something in console;
      - Set timeouts,
      - Make async API calls,
      - Modify the action,
      - Pause the action or even stop.
UI and React .
1. Create a Redux store
2. Subscribe to updates
3. Inside the subscription callback:
  - Get the current store state
  - Extract the data needed by this piece of UI
  - Update the UI with the data
4. If necessary, render the UI with initial state
5. Respond to UI inputs by dispatching Redux actions
  react-redux [#website] .
    Provider .
    . Component. Accepts {store (prop)}.
      |{jsx}  
      | <Provider store={store}>
      |   ...
      | </Provider>
    useSelector [#4] .
    . Allow React components to read data from the Redux store.
    . Accepts {selector (function)}.
      Selector function is a function that takes the entire Redux store state 
      as its argument, reads some value from the state, and returns that result.
    . Could used multiple times in one ?Component?.
      Selector function .
      . Selectors can returns values from Redux store state and also return 
        modified values based on the state.
        |{jsx, Component.jsx}  
        | const selectCompletedTodos = state => {
        |   const completedTodos = state.todos.filter(todo => todo.completed);
        |   return completedTodos.length;
        | }
        |  
        | export const Component() {
                                                ⬇ selector function as argument
        |   const todosDone = useSelector(selectCompletedTodos);
        |   ...
        | }
        The first time ?Component? renders, the useSelector hook will call 
        {selectCompletedTodos} and pass the `entire` Redux state object.
        More than that useSelector hook automatically subscribes to the store!
        So, any time the action dispatched, it will call selector func again.
        . Alternative:
          |{jsx}  
          | const todos = useSelector(state => state.todos)
    useDispatch [#5] .
    . Returns a link to the !dispatch! function -> we could use it to dispatch 
      actions that we need in our ?Component?.
      |{jsx}  
      | export const Component = () => {
      | const dispatch = useDispatch();
      |  
      | const trimmedText = (e) => { e.target.value.trim(); }
      |  
      | return (
      |   <button onClick={() => {
              ⬇ onClick -> dispatch action to the Redux store
              ⬇ don't need to use store.dispatch({ ... })
      |     dispatch({ 
      |       type: "todo/todoAdded", 
      |       payload: trimmedText })
                          ⬆ could accept functions
      |     }
      |   >
      |     Click me
      |   </button>
      | )
Async Logic and Data Fetching .
. 
Standard Redux Patterns .
Modern Redux with Redux Toolkit .

Reference @
[3#] [https://redux.js.org/tutorials/fundamentals/part-4-store#middleware]
[website#] [https://react-redux.js.org/]
[4#] [https://react-redux.js.org/api/hooks#useselector]
[5#] [https://react-redux.js.org/api/hooks#usedispatch]



`thing`
|thing|
!thing!
?thing?
^thing^
{thing}
{thing (thing)}
{thing (thing) thing}










