module.exports = (str)->
    p = require \prelude-ls
    urlencode = require \urlencode
    form2json = require \form2json
    arr = 
        str.split(/'([^']+)'/)
    keys = 
      arr.filter( (item, index)-> p.even index ).map(-> it.trim!)
    values = 
     arr.filter( (item, index)-> p.odd index ).map(-> it.trim!)
    obj =
     p.zip keys, values
    method: if obj.find(-> it.0 is \--data)? then 'POST' else 'GET'
    gzip: obj.filter(-> it.0 is \--compressed).length > 0
    url: obj.find(-> it.0 is \curl).1 
    headers: obj |> p.filter (.0 is \-H) |> p.map (.1.split(": ") ) |> p.pairs-to-obj
    form: form2json.decode(obj.find(-> it.0 is \--data)?1)