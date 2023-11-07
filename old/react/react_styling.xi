React styling @

Стили .
. В React можно задавать "inline"-стили. Они создаются с помощью аргумента 
  тега |style|.
. В особенности входит:
  # Двойные кавычки, в которые входят стили,
  # Каждое новое слово начинается с заглавной буквы:
    {text-align(textAlign)},
    {font-size(fontSize)}.
  # Каждое значение, кроме числового, пишется в кавычках: 
  |{jsx}  
  | textAlign: 'center', textDecoration: 'uppercase'|.
  | <h1 style={{textAlign: 'center'}}>Heading</h1>