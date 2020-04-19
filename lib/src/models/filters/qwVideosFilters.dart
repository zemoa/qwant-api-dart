import 'package:qwant_api/src/models/filters/qwFilters.dart';
import 'package:qwant_api/src/models/qwOrder.dart';

class QWVideosFilters extends QWFilters {
  QWOrder order;
  QWOrder source;

  QWVideosFilters({this.order, this.source});

  QWVideosFilters.fromJson(Map<String, dynamic> json) {
    order = json['order'] != null ? QWOrder.fromJson(json['order']) : null;
    source = json['source'] != null ? QWOrder.fromJson(json['source']) : null;
  }
  @override
  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    if (order != null) {
      data['order'] = order.toJson();
    }
    if (source != null) {
      data['source'] = source.toJson();
    }
    return data;
  }
}