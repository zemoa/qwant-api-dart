import 'dart:convert';
import 'dart:io';

import 'package:qwant_api/src/lang.dart';
import 'package:qwant_api/src/models/qwImageItem.dart';
import 'package:qwant_api/src/models/qwItems.dart';
import 'package:qwant_api/src/models/qwNewsItems.dart';
import 'package:qwant_api/src/models/qwSearchResult.dart';
import 'package:qwant_api/src/models/qwSocialItems.dart';
import 'package:qwant_api/src/models/qwVideosItems.dart';
import 'package:qwant_api/src/models/qwWebItems.dart';

import 'search_type.dart';

class QwantApi {
  final String _baseUrl = 'https://api.qwant.com/api/search';
  

  Future<QWSearchResult<QWWebItems>> searchWeb(String keyword,
  {int count, int offset, Language language}) async {
    return _search<QWWebItems>(keyword, SearchType.WEB, count, offset, language);
  }

  Future<QWSearchResult<QWImageItems>> searchImages(String keyword,
  {int count, int offset, Language language}) async {
    return _search<QWImageItems>(keyword, SearchType.PICTURES, count, offset, language);
  }

  Future<QWSearchResult<QWNewsItems>> searchNews(String keyword,
  {int count, int offset, Language language}) async {
    return _search<QWNewsItems>(keyword, SearchType.NEWS, count, offset, language);
  }

  Future<QWSearchResult<QWSocialItems>> searchSocial(String keyword,
  {int count, int offset, Language language}) async {
    return _search<QWSocialItems>(keyword, SearchType.SOCIAL, count, offset, language);
  }

  Future<QWSearchResult<QWVideosItems>> searchVideos(String keyword,
  {int count, int offset, Language language}) async {
    return _search<QWVideosItems>(keyword, SearchType.VIDEOS, count, offset, language);
  }

  Future<QWSearchResult<T>> _search<T extends QWItems>(String keyword, SearchType searchType,
  int count, int offset, Language language) async {
    var request = await HttpClient().getUrl(Uri.parse(_buildRequest(keyword, searchType, count, offset, language)))
    ..headers.contentType = ContentType.json;
    var response = await request.close();
    return utf8.decoder.bind(response).map((json){
      var decodedJson = jsonDecode(json);
      return QWSearchResult<T>.fromJson(decodedJson);
    }).first;
  }

  String _buildRequest(String keyword, SearchType searchType, int count, int offset, Language language) {
    
    String type;
    switch(searchType) {
      case SearchType.NEWS:
        type = 'news';
        break;
      case SearchType.PICTURES:
        type = 'images';
        break;
      case SearchType.SOCIAL:
        type = 'social';
        break;
      case SearchType.VIDEOS:
        type = 'videos';
        break;
      case SearchType.WEB:
        type = 'web';
        break;
    }
    var countQuery ='';
    if(count != null) {
      countQuery = '&count=$count';
    }
    var offsetQuery ='';
    if(offset != null) {
      offsetQuery = '&f=$offset';
    }
    var localeQuery ='';
    if(language != null) {
      var locale = language.locale;
      localeQuery = '&locale=$locale';
    }

    return '$_baseUrl/$type?q=$keyword&t=$keyword&uiv=4$countQuery$offsetQuery$localeQuery';
  }
}
