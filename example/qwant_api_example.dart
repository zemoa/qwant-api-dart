

import 'package:qwant_api/qwant_api.dart';

void main() async {
  var qwantApit = QwantApi();
  var result1 = await qwantApit.searchWeb('test');
  print(result1.status);
  var result2 = await qwantApit.searchWeb('test', count: 2, language: Language.ENGISH);
  print(result2.status);
  var result3 = await qwantApit.searchNews('test');
  print(result3.status);
}
