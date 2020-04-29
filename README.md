# angular_form_bug

(ngSubmit) and (submit) do not prevent default form submit causing a page reload

and causing EXCEPTION TypeError on dart2js

webdev serve --hostname localhost --release

VM3327 main.dart.js:5232 EXCEPTION: TypeError: Instance of 'cp': type 'cp' is not a subtype of type 'minified:n'
STACKTRACE: 
TypeError: Instance of 'cp': type 'cp' is not a subtype of type 'minified:n'
    at Object.b (http://localhost:8080/main.dart.js:193:3)
    at Object.m (http://localhost:8080/main.dart.js:545:48)
    at eI.$0 (http://localhost:8080/main.dart.js:5788:34)
    at hJ.$0 (http://localhost:8080/main.dart.js:5975:14)
    at i9.k4 [as $1$4] (http://localhost:8080/main.dart.js:1066:9)
    at b9.cr (http://localhost:8080/main.dart.js:5916:79)
    at Object.eval (eval at lf (http://localhost:8080/main.dart.js:333:8), <anonymous>:3:43)
    at j0.C (http://localhost:8080/main.dart.js:3472:79)
    at j0.W (http://localhost:8080/main.dart.js:3440:10)
    at eJ.$1 (http://localhost:8080/main.dart.js:5785:5)

$1 @ VM3327 main.dart.js:5232
$1 @ VM3327 main.dart.js:5984
k5 @ VM3327 main.dart.js:1078
ct @ VM3327 main.dart.js:5926
eval @ VM3359:3
a5 @ VM3327 main.dart.js:3479
aU @ VM3327 main.dart.js:3446
ai @ VM3327 main.dart.js:3356
bU @ VM3327 main.dart.js:3340
ai @ VM3327 main.dart.js:3093
k @ VM3327 main.dart.js:3059
eu @ VM3327 main.dart.js:5944
eval @ VM3351:3
a2 @ VM3327 main.dart.js:3464
W @ VM3327 main.dart.js:3442
$1 @ VM3327 main.dart.js:5785
oj @ VM3327 main.dart.js:266
(anonymous) @ VM3327 main.dart.js:274
Navigated to http://localhost:8080/?