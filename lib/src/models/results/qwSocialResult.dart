import 'package:qwant_api/src/models/filters/qwFilters.dart';
import 'package:qwant_api/src/models/items/qwSocialItems.dart';
import 'package:qwant_api/src/models/results/qwResult.dart';

class QWSocialResult extends QWResult<QWSocialItems, QWFilters> {
  QWSocialResult.fromJson(Map<String, dynamic> json){
    fromJson(json);
  }
  @override
  QWFilters buildFilters(jsonFilter) {
    return null;
  }

  @override
  QWSocialItems buildItem(Map<String, dynamic> json) {
    return QWSocialItems.fromJson(json);
  }

}