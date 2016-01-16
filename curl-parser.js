// Generated by LiveScript 1.4.0
(function(){
  module.exports = function(str){
    var p, urlencode, arr, keys, values, obj, ref$, ref1$, ref2$, ref3$;
    p = require('prelude-ls');
    urlencode = require('urlencode');
    arr = str.split(/'([^']+)'/);
    keys = arr.filter(function(item, index){
      return p.even(index);
    }).map(function(it){
      return it.trim();
    });
    values = arr.filter(function(item, index){
      return p.odd(index);
    }).map(function(it){
      return it.trim();
    });
    obj = p.zip(keys, values);
    return {
      method: obj.find(function(it){
        return it[0] === '--data';
      }) != null ? 'POST' : 'GET',
      url: obj.find(function(it){
        return it[0] === 'curl';
      })[1],
      headers: p.objToPairs(
      obj.filter(function(it){
        return it[0] === '-H';
      }).map(function(it){
        return it[1].split(": ");
      })),
      formData: (ref$ = (ref1$ = obj.find(function(it){
        return it[0] === '--data';
      })) != null ? (ref2$ = ref1$[1]) != null ? typeof ref2$.split == 'function' ? (ref3$ = ref2$.split('&')) != null ? typeof ref3$.map == 'function' ? ref3$.map(function(it){
        return it.split('=').map(function(it){
          return urlencode.decode(it);
        });
      }) : void 8 : void 8 : void 8 : void 8 : void 8) != null
        ? ref$
        : []
    };
  };
}).call(this);
