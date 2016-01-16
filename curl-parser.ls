module.exports = (str)->
    p = require \prelude-ls
    urlencode = require \urlencode
    arr = 
        str.split(/'([^']+)'/)
    keys = 
      arr.filter( (item, index)-> p.even index ).map(-> it.trim!)
    values = 
     arr.filter( (item, index)-> p.odd index ).map(-> it.trim!)
    obj =
     p.zip keys, values
    method: if obj.find(-> it.0 is \--data)? then 'POST' else 'GET'
    url: obj.find(-> it.0 is \curl).1 
    headers: obj.filter(-> it.0 is \-H).map(-> it.1.split(": ") )
    form-data: obj.find(-> it.0 is \--data)?1?split?(\&)?map?(-> it.split(\=).map(-> urlencode.decode it) ) ? []