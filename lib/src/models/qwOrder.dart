import 'package:qwant_api/src/models/qwValues.dart';

class QWOrder {
  String label;
  String name;
  String type;
  String selected;
  List<QWValues> values;

  QWOrder({this.label, this.name, this.type, this.selected, this.values});

  QWOrder.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    name = json['name'];
    type = json['type'];
    selected = json['selected'];
    if (json['values'] != null) {
      values = <QWValues>[];
      json['values'].forEach((v) {
        values.add(QWValues.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['label'] = label;
    data['name'] = name;
    data['type'] = type;
    data['selected'] = selected;
    if (values != null) {
      data['values'] = values.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
