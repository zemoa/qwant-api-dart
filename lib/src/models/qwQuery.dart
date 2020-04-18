class QWQuery {
  String locale;
  String query;
  int offset;

  QWQuery({this.locale, this.query, this.offset});

  QWQuery.fromJson(Map<String, dynamic> json) {
    locale = json['locale'];
    query = json['query'];
    offset = json['offset'];
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['locale'] = locale;
    data['query'] = query;
    data['offset'] = offset;
    return data;
  }
}