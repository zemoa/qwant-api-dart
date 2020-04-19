import 'package:qwant_api/src/models/qwCache.dart';
import 'package:qwant_api/src/models/qwQuery.dart';
import 'package:qwant_api/src/models/results/qwImageResult.dart';
import 'package:qwant_api/src/models/results/qwNewsResult.dart';
import 'package:qwant_api/src/models/results/qwResult.dart';
import 'package:qwant_api/src/models/results/qwSocialResult.dart';
import 'package:qwant_api/src/models/results/qwVideoResult.dart';
import 'package:qwant_api/src/models/results/qwWebResult.dart';

class QWData<T extends QWResult> {
  QWQuery query;
  QWCache cache;
  T result;

  QWData({this.query, this.cache, this.result});

  QWData.fromJson(Map<String, dynamic> json) {
    query = json['query'] != null ? QWQuery.fromJson(json['query']) : null;
    cache = json['cache'] != null ? QWCache.fromJson(json['cache']) : null;
    result = null;
    var jsonResult = json['result'];
    if(jsonResult != null) {
      if(T == QWWebResult) {
        result = (QWWebResult.fromJson(jsonResult) as T);
      } else if(T == QWImageResult) {
        result = (QWImageResult.fromJson(jsonResult) as T);
      } else if(T == QWSocialResult) {
        result = (QWSocialResult.fromJson(jsonResult) as T);
      } else if(T == QWNewsResult) {
        result = (QWNewsResult.fromJson(jsonResult) as T);
      } else if(T == QWVideoResult) {
        result = (QWVideoResult.fromJson(jsonResult) as T);
      }
    }
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