class QWValues {
  String value;
  String label;
  bool translate;

  QWValues({this.value, this.label, this.translate});

  QWValues.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    label = json['label'];
    translate = json['translate'];
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['value'] = value;
    data['label'] = label;
    data['translate'] = translate;
    return data;
  }
}