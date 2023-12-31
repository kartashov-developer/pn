useParams @

Что это? .
. Пользовательский хук, который позволяет получить параметры из URL в 
  компоненте React.
  Позволяет получить динамические сегменты из URL-шаблона, определённого в 
  маршруте.
. Используется, когда определяется маршрут с динамическим сегментом.
  |:id| - динамический сегмент.
  |{jsx}  
  | { path: '/users/:id', element: <Element /> },
. !useParams! позволяет получить значение этого динамического сегмента в 
  компоненте, отображаемом для данного маршрута.
