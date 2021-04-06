import 'dart:html';
import 'package:dmp/dmp.dart';

// Compile with:
// dart2js -O4 --out=speed_test.dart.js speed_test.dart

void launch(Event e) {
  var input1 = document.getElementById('text1');
  var input2 = document.getElementById('text2');
  var text1 = input1!.text;
  var text2 = input2!.text;

  var dmp = DiffMatchPatch();
  dmp.Diff_Timeout = 0.0;

  // No warmup loop since it risks triggering an 'unresponsive script' dialog.
  var date_start = DateTime.now();
  var d = dmp.diff_main(text1, text2, false);
  var date_end = DateTime.now();

  var ds = dmp.diff_prettyHtml(d);
  document.getElementById('outputdiv')!.setInnerHtml(
      '$ds<BR>Time: ${date_end.difference(date_start)} (h:mm:ss.mmm)',
      validator: TrustedNodeValidator());
}

void main() {
  document.getElementById('launch')!.addEventListener('click', launch);
  document.getElementById('outputdiv')!.setInnerHtml('');
}

/// A NodeValidator which allows any contents.
/// The default validator strips 'style' attributes.
class TrustedNodeValidator implements NodeValidator {
  @override
  bool allowsElement(Element element) => true;
  @override
  bool allowsAttribute(Element element, String attributeName, String value) =>
      true;
}
