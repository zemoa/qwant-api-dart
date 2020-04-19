import 'package:qwant_api/src/models/items/qwItems.dart';

class QWWebItems extends QWItems {
  String title;
  String favicon;
  String url;
  String source;
  String desc;
  String sId;
  int score;
  int position;

  QWWebItems(
      {this.title,
      this.favicon,
      this.url,
      this.source,
      this.desc,
      this.sId,
      this.score,
      this.position});

  QWWebItems.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    favicon = json['favicon'];
    url = json['url'];
    source = json['source'];
    desc = json['desc'];
    sId = json['_id'];
    score = json['score'];
    position = json['position'];
  }

  @override
  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['title'] = title;
    data['favicon'] = favicon;
    data['url'] = url;
    data['source'] = source;
    data['desc'] = desc;
    data['_id'] = sId;
    data['score'] = score;
    data['position'] = position;
    return data;
  }
}
