import 'package:qwant_api/src/models/filters/qwWebFilters.dart';
import 'package:qwant_api/src/models/items/qwWebItems.dart';
import 'package:qwant_api/src/models/results/qwResult.dart';

class QWWebResult extends QWResult<QWWebItems, QWWebFilters> {
  QWWebResult.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }
  @override
  QWWebFilters buildFilters(jsonFilter) {
    return QWWebFilters.fromJson(jsonFilter);
  }

  @override
  QWWebItems buildItem(Map<String, dynamic> json) {
    return QWWebItems.fromJson(json);
  }
}
