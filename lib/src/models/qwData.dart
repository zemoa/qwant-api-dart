import 'package:qwant_api/src/models/qwCache.dart';
import 'package:qwant_api/src/models/qwItems.dart';
import 'package:qwant_api/src/models/qwQuery.dart';
import 'package:qwant_api/src/models/qwResult.dart';

class QWData<T extends QWItems> {
  QWQuery query;
  QWCache cache;
  QWResult<T> result;

  QWData({this.query, this.cache, this.result});

  QWData.fromJson(Map<String, dynamic> json) {
    query = json['query'] != null ? QWQuery.fromJson(json['query']) : null;
    cache = json['cache'] != null ? QWCache.fromJson(json['cache']) : null;
    result =
        json['result'] != null ? QWResult<T>.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    if (query != null) {
      data['query'] = query.toJson();
    }
    if (cache != null) {
      data['cache'] = cache.toJson();
    }
    if (result != null) {
      data['result'] = result.toJson();
    }
    return data;
  }
}