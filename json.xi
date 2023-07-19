[js] [js_json]

JSON(JavaScript Object Notation) .
. This is a lightweight text-based data format founded on JavaScript.
  This format is independent of JavaScript and can be used with
  any programming language.

JSON help us to receive or to send data from a web-server.

. [SOAP] supports only [XML]. [REST] supports [JSON] and [XML].
. `MIME type:` |{json}application/json|.
  JSON may consists of: .v
  # objects |{}|
  # arrays |[]|
  # string |"never"|
  # number |1024|
  # boolean |true| |false|
  # null |null|
    JSON syntax .
    . JSON is nested in `{object}`. JSON-object - is an unordered set of "key(ключ)": "value(значение)".
    ! `Key` its the name of the parameter that we pass to the web-server or take from it.
      `The key must always be in double quotes`.
    ! There is no `trailing` comma at the end of the object.


    |{json}
    | {
    |   "string": "always",
    |   "number": 2048,
    |   "boolean": true,
    |   "array": ["something", "objective"],
    |   "object": {
    |     "query": "google.com",
    |     "count": 12
    |   }
    | }

