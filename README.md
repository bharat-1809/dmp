# DMP: Diff-Match-Patch
[![Dart](https://img.shields.io/badge/Language-dart-blue)](https://dart.dev/null-safety)
[![Sound Null Safety](https://img.shields.io/badge/-null--safety-9cf)](https://dart.dev/null-safety)
[![diff_match_patch](https://img.shields.io/badge/Original-diff__match__patch-green)](https://github.com/google/diff-match-patch)


This library is a dart ported version of the [diff_match_patch](https://github.com/google/diff-match-patch) library by Google with sound null safety

### Testing:

For testing the core library functionalities run:<br>
```dart test/dmp_test.dart```

For running speed test:<br>
```dart test/speed_testVM.dart```

Speed test can also be compiled to JavaScript:<br>
```dart2js -O4 --out=test/speed_test.dart.js test/speed_test.dart```<br>
Then open `test/speed_test.html` in a browser 