# Curl to JSON

###Convert generated google chrome curl into JSON object

[![IMAGE ALT TEXT HERE](http://img.youtube.com/vi/T2skVvYdsPw/0.jpg)](http://www.youtube.com/watch?v=T2skVvYdsPw)

Install 

```Bash
npm i curl-to-json
```

Usage

Use with terminal

```Bash
curl-to-json 'curl ...'
```

Use with require


```Javascript

curlToJson = require("curl-to-json")

//open the chrome browser 
//open the website 
//goto devtools
//open network tab
//choose the request
//right mouse click and select 'Generate cURL'
//paste it here
curlToJson("curl 'https://www.google.com.ua/?gws_rd=ssl' -H 'accept-encoding: gzip, deflate, sdch' -H 'accept-language: en-US,en;q=0.8,nl;q=0.6,ru;q=0.4' -H 'upgrade-insecure-requests: 1' -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36' -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'cache-control: max-age=0' -H 'authority: www.google.com.ua' -H 'cookie: _ga=GA1.1.1212792519.1435825203; SID=DQAAABQBAADGjXFxhpwxrvjjtvOyRgLexElmMzuwFV3UoTh1Co94oCiRkRz_XBJepigQvFIjW_hWpmDZe4Xeu-ZOIK08LDOdfs3x3ctQpconalfyZJA6Isj7BjT9fpL207uZAbmjzN-xhnXGTxZm0AVUDuleBmgM1BnYs5RJzAvLoY41ARyN4Hu5D74XO-kInOmbuNZtpPlBLPJfZGSKgY7AZqZv_4liQbSF3DqQt1-rGMzhTiF6NoLQGqk-hlEN0MrHba5fDAvJgDymY6h-jP7RgmdFVy9AkZ9uAl8p0kEHXYtTJwQzQrtkWSdcTNdW1skpkOXXbOzDfKbV7A9wbgd-oHjSiSGM5fawSttodqvVZItKATDGCjb3fWyLZZbaX14ZSE4LBUE; HSID=A0jJ6vuBIBcsgWWOP; SSID=ATkYMMCYCktH7FgHm; APISID=toy8eyQhrrrNi7gK/AWvhDOP4CT8R3Losw; SAPISID=pQEyh0-zu-ZuW01h/AeZPgCINYjneMUsJI; NID=75=eZAyojcehnLIwA2AdxP3Kot_ryJyV7U91oMRll6cmmIVJRYA43MZLAPbpngLON7zXM9zBiJ_bdS7muuara2j1jJPnUCnRtt2OzRz7KA1oAhPNbMVTgK4_0-n_doAQI_ymBDEIOj1Z5K9fVgVHMxNJ0zzUD3WTqIu1tHjK50y2uEY9Au2btlE3DdxsN7emUsS2QpuO0Um8x5rTXjuYxsPdQYjiwck5uewwH5JUZ1SmQpmBoFEVm6gzguNDvhB16N3gOgekKbGi4MyIVhNukkX8ckF5QmRC9-y5HxFs_9GM_oxByEk' -H 'x-client-data: CKO2yQEIwbbJAQj9lcoB' --compressed") 

//json printed
```





Use with request 

```Javascript
var request = require('request');

request(
   curlToJson("curl ...."), 
   function (error, response, body) {
   if (!error && response.statusCode == 200) {
  
   }
});

```




