[js]

For more information visit: [json] .

JSON .
. JSON is an |object|. JSON contains 2 methods for parsing values from JSON(|parse|) and converting values to JSON(|stringify|).

Methods .
  JSON.parce() .
  . |Parce JSON-object.|
    Using when receiving the data from a web-server.
    Receiving data is always in `string format`.
    This method parsing an JSON string into JavaScript object.
  . Accepts {s(string)} for parce JSON-string,
    return JavaScript {o(object)}.

  JSON.stringify() .
  . |Construct JSON-object.|
    Using when sending data to a web-server.
    Sending data is always in `string format`.
    This method converting JavaScript object into JSON string.
  . Accepts JavaScript {o(object)} for construct JSON-string,
    return JSON-{s(string)}.

