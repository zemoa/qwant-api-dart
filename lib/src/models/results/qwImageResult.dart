import 'package:qwant_api/src/models/filters/qwImageFilters.dart';
import 'package:qwant_api/src/models/items/qwImageItem.dart';
import 'package:qwant_api/src/models/results/qwResult.dart';

class QWImageResult extends QWResult<QWImageItems, QWImageFilters> {
  QWImageResult.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }
  @override
  QWImageFilters buildFilters(jsonFilter) {
    return QWImageFilters.fromJson(jsonFilter);
  }

  @override
  QWImageItems buildItem(Map<String, dynamic> json) {
    return QWImageItems.fromJson(json);
  }
}
