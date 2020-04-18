import 'package:qwant_api/src/models/qwFilters.dart';
import 'package:qwant_api/src/models/qwImageItem.dart';
import 'package:qwant_api/src/models/qwItems.dart';
import 'package:qwant_api/src/models/qwNewsItems.dart';
import 'package:qwant_api/src/models/qwSocialItems.dart';
import 'package:qwant_api/src/models/qwVideosItems.dart';
import 'package:qwant_api/src/models/qwWebItems.dart';

class QWResult<T extends QWItems> {
  int total;
  List<T> items;
  QWFilters filters;

  QWResult({this.total, this.items, this.filters});

  QWResult.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['items'] != null) {
      items = <T>[];
      json['items'].forEach((v) {
        if(T == QWWebItems) {
          items.add(QWWebItems.fromJson(v) as T);
        } else if(T == QWImageItems) {
          items.add(QWImageItems.fromJson(v) as T);
        } else if(T == QWNewsItems) {
          items.add(QWNewsItems.fromJson(v) as T);
        } else if(T == QWSocialItems) {
          items.add(QWSocialItems.fromJson(v) as T);
        } else if(T == QWVideosItems) {
          items.add(QWVideosItems.fromJson(v) as T);
        }
        
      });
    }
    filters =
        json['filters'] != null ? QWFilters.fromJson(json['filters']) : null;    
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['total'] = total;
    if (items != null) {
      data['items'] = items.map((v) => {
        if(v is QWWebItems || v is QWImageItems) {
          v.toJson()
        } else {
          null
        }
      }
        ).toList();
    }
    if (filters != null) {
      data['filters'] = filters.toJson();
    }
    return data;
  }
}