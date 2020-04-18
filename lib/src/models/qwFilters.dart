import 'package:qwant_api/src/models/qwFreshness.dart';

class QWFilters {
  QWFreshness freshness;

  QWFilters({this.freshness});

  QWFilters.fromJson(Map<String, dynamic> json) {
    freshness = json['freshness'] != null
        ? QWFreshness.fromJson(json['freshness'])
        : null;
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    if (freshness != null) {
      data['freshness'] = freshness.toJson();
    }
    return data;
  }
}