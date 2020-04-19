import 'package:qwant_api/src/models/filters/qwNewsFilters.dart';
import 'package:qwant_api/src/models/items/qwNewsItems.dart';
import 'package:qwant_api/src/models/results/qwResult.dart';

class QWNewsResult extends QWResult<QWNewsItems, QWNewsFilters> {
  QWNewsResult.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }
  @override
  QWNewsFilters buildFilters(jsonFilter) {
    return QWNewsFilters.fromJson(jsonFilter);
  }

  @override
  QWNewsItems buildItem(Map<String, dynamic> json) {
    return QWNewsItems.fromJson(json);
  }
}
