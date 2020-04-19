import 'package:qwant_api/src/models/filters/qwVideosFilters.dart';
import 'package:qwant_api/src/models/items/qwVideosItems.dart';
import 'package:qwant_api/src/models/results/qwResult.dart';

class QWVideoResult extends QWResult<QWVideosItems, QWVideosFilters> {
  QWVideoResult.fromJson(Map<String, dynamic> json){
    fromJson(json);
  }
  @override
  QWVideosFilters buildFilters(jsonFilter) {
    return QWVideosFilters.fromJson(jsonFilter);
  }

  @override
  QWVideosItems buildItem(Map<String, dynamic> json) {
    return QWVideosItems.fromJson(json);
  }

}