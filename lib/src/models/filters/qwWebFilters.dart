import 'package:qwant_api/src/models/filters/qwFilters.dart';
import 'package:qwant_api/src/models/qwFreshness.dart';

class QWWebFilters extends QWFilters {
  QWFreshness freshness;

  QWWebFilters({this.freshness});

  QWWebFilters.fromJson(Map<String, dynamic> json) {
    freshness = json['freshness'] != null
        ? QWFreshness.fromJson(json['freshness'])
        : null;
  }
  @override
  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    if (freshness != null) {
      data['freshness'] = freshness.toJson();
    }
    return data;
  }
}