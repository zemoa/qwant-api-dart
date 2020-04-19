import 'package:qwant_api/src/models/filters/qwFilters.dart';
import 'package:qwant_api/src/models/items/qwItems.dart';

abstract class QWResult<T extends QWItems, F extends QWFilters> {
  int total;
  List<T> items;
  F filters;

  QWResult({this.total, this.items, this.filters});

  void fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['items'] != null) {
      items = <T>[];
      json['items'].forEach((v) {
        items.add(buildItem(v));
      });
    }
    filters = json['filters'] != null ? buildFilters(json['filters']) : null;
  }

  T buildItem(Map<String, dynamic> json);
  F buildFilters(dynamic jsonFilter);

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['total'] = total;
    if (items != null) {
      data['items'] = items
          .map((v) => {
                if (v is QWItems) {v.toJson()} else {null}
              })
          .toList();
    }
    if (filters != null) {
      data['filters'] = filters.toJson();
    }
    return data;
  }
}
