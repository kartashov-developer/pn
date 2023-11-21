JavaScript JSON @

. [json].

JSON .
. JSON is an |object|. JSON contains 2 methods for parsing values from 
  JSON(|parse|) and converting values to JSON(|stringify|).

Methods .
  JSON.parce() .
  . |Parce JSON-object.|
    Using when receiving the data from a web-server.
    Receiving data is always in `string format`.
    This method parsing an JSON string into JavaScript object.
  . Accepts {string} for parce JSON-string,
    return JavaScript {object}.

  JSON.stringify() .
  . |Construct JSON-object.|
    Using when sending data to a web-server.
    Sending data is always in `string format`.
    This method converting JavaScript object into JSON string.
  . Accepts JavaScript {object} for construct JSON-string,
    return JSON-{string}.

