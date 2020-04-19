import 'package:qwant_api/src/models/filters/qwFilters.dart';
import 'package:qwant_api/src/models/qwOrder.dart';

class QWNewsFilters extends QWFilters {
  QWOrder order;
  QWOrder freshness;
  QWOrder source;

  QWNewsFilters({this.order, this.freshness, this.source});

  QWNewsFilters.fromJson(Map<String, dynamic> json) {
    order = json['order'] != null ? QWOrder.fromJson(json['order']) : null;
    freshness = json['freshness'] != null
        ? QWOrder.fromJson(json['freshness'])
        : null;
    source = json['source'] != null ? QWOrder.fromJson(json['source']) : null;
  }
  @override
  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    if (order != null) {
      data['order'] = order.toJson();
    }
    if (freshness != null) {
      data['freshness'] = freshness.toJson();
    }
    if (source != null) {
      data['source'] = source.toJson();
    }
    return data;
  }
}

