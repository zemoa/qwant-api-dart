import 'package:qwant_api/src/models/filters/qwFilters.dart';
import 'package:qwant_api/src/models/qwValues.dart';

class QWImageFilters extends QWFilters {
  QWSize size;
  QWSize license;
  QWSize freshness;
  QWSize color;
  QWSize imagetype;
  QWSize source;

  QWImageFilters(
      {this.size,
      this.license,
      this.freshness,
      this.color,
      this.imagetype,
      this.source});

  QWImageFilters.fromJson(Map<String, dynamic> json) {
    size = json['size'] != null ? QWSize.fromJson(json['size']) : null;
    license = json['license'] != null ? QWSize.fromJson(json['license']) : null;
    freshness =
        json['freshness'] != null ? QWSize.fromJson(json['freshness']) : null;
    color = json['color'] != null ? QWSize.fromJson(json['color']) : null;
    imagetype =
        json['imagetype'] != null ? QWSize.fromJson(json['imagetype']) : null;
    source = json['source'] != null ? QWSize.fromJson(json['source']) : null;
  }

  @override
  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    if (size != null) {
      data['size'] = size.toJson();
    }
    if (license != null) {
      data['license'] = license.toJson();
    }
    if (freshness != null) {
      data['freshness'] = freshness.toJson();
    }
    if (color != null) {
      data['color'] = color.toJson();
    }
    if (imagetype != null) {
      data['imagetype'] = imagetype.toJson();
    }
    if (source != null) {
      data['source'] = source.toJson();
    }
    return data;
  }
}

class QWSize {
  String label;
  String name;
  String type;
  String selected;
  List<QWValues> values;

  QWSize({this.label, this.name, this.type, this.selected, this.values});

  QWSize.fromJson(Map<String, dynamic> json) {
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
