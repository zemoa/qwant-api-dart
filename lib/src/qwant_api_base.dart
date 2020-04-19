import 'dart:convert';
import 'dart:io';

import 'package:qwant_api/src/lang.dart';
import 'package:qwant_api/src/models/qwSearchResult.dart';
import 'package:qwant_api/src/models/results/qwImageResult.dart';
import 'package:qwant_api/src/models/results/qwNewsResult.dart';
import 'package:qwant_api/src/models/results/qwResult.dart';
import 'package:qwant_api/src/models/results/qwSocialResult.dart';
import 'package:qwant_api/src/models/results/qwVideoResult.dart';
import 'package:qwant_api/src/models/results/qwWebResult.dart';

import 'search_type.dart';

class QwantApi {
  final String _baseUrl = 'https://api.qwant.com/api/search';

  Future<QWSearchResult<QWWebResult>> searchWeb(String query,
      {int count, int offset, Language language}) async {
    return _search<QWWebResult>(query, SearchType.WEB, count, offset, language);
  }

  Future<QWSearchResult<QWImageResult>> searchImages(String query,
      {int count, int offset, Language language}) async {
    return _search<QWImageResult>(
        query, SearchType.PICTURES, count, offset, language);
  }

  Future<QWSearchResult<QWNewsResult>> searchNews(String query,
      {int count, int offset, Language language}) async {
    return _search<QWNewsResult>(
        query, SearchType.NEWS, count, offset, language);
  }

  Future<QWSearchResult<QWSocialResult>> searchSocial(String query,
      {int count, int offset, Language language}) async {
    return _search<QWSocialResult>(
        query, SearchType.SOCIAL, count, offset, language);
  }

  Future<QWSearchResult<QWVideoResult>> searchVideos(String query,
      {int count, int offset, Language language}) async {
    return _search<QWVideoResult>(
        query, SearchType.VIDEOS, count, offset, language);
  }

  Future<QWSearchResult<T>> _search<T extends QWResult>(String query,
      SearchType searchType, int count, int offset, Language language) async {
    var request = await HttpClient().getUrl(
        Uri.parse(_buildRequest(query, searchType, count, offset, language)))
      ..headers.contentType = ContentType.json;
    var response = await request.close();
    return utf8.decoder.bind(response).map((json) {
      var decodedJson = jsonDecode(json);
      return QWSearchResult<T>.fromJson(decodedJson);
    }).first;
  }

  String _buildRequest(String query, SearchType searchType, int count,
      int offset, Language language) {
    String type;
    switch (searchType) {
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
    var countQuery = '';
    if (count != null) {
      countQuery = '&count=$count';
    }
    var offsetQuery = '';
    if (offset != null) {
      offsetQuery = '&f=$offset';
    }
    var localeQuery = '';
    if (language != null) {
      var locale = language.locale;
      localeQuery = '&locale=$locale';
    }

    return '$_baseUrl/$type?q=$query&t=$query&uiv=4$countQuery$offsetQuery$localeQuery';
  }
}
