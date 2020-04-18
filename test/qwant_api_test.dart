import 'package:qwant_api/qwant_api.dart';
import 'package:qwant_api/src/models/qwData.dart';
import 'package:qwant_api/src/models/qwImageItem.dart';
import 'package:qwant_api/src/models/qwNewsItems.dart';
import 'package:qwant_api/src/models/qwSearchResult.dart';
import 'package:qwant_api/src/models/qwResult.dart';
import 'package:qwant_api/src/models/qwSocialItems.dart';
import 'package:qwant_api/src/models/qwVideosItems.dart';
import 'package:qwant_api/src/models/qwWebItems.dart';
import 'package:test/test.dart';

void main() {
  group('Test Qwant Api', () {
    QwantApi qwantApi;

    setUp(() {
      qwantApi = QwantApi();
    });

    test('Test search web', () async {
      var result = await qwantApi.searchWeb('test', count: 1);
      
      expect(result, isA<QWSearchResult<QWWebItems>>());
      expect(result.status, equals('success'));
      expect(result.data, isA<QWData<QWWebItems>>());
      expect(result.data.result, isA<QWResult<QWWebItems>>());
      expect(result.data.result.items, isList);
      expect(result.data.result.items.length, equals(1));
      expect(result.data.result.items.first, isA<QWWebItems>());
      expect(result.data.result.items.first.favicon, isNotEmpty);
    });
    
    test('Test search images', () async {
      var result = await qwantApi.searchImages('test', count: 1);
      
      expect(result, isA<QWSearchResult<QWImageItems>>());
      expect(result.status, equals('success'));
      expect(result.data, isA<QWData<QWImageItems>>());
      expect(result.data.result, isA<QWResult<QWImageItems>>());
      expect(result.data.result.items, isList);
      expect(result.data.result.items.length, equals(1));
      expect(result.data.result.items.first, isA<QWImageItems>());
      expect(result.data.result.items.first.height, isNotEmpty);
    });

    test('Test search news', () async {
      var result = await qwantApi.searchNews('test', count: 1);
      
      expect(result, isA<QWSearchResult<QWNewsItems>>());
      expect(result.status, equals('success'));
      expect(result.data, isA<QWData<QWNewsItems>>());
      expect(result.data.result, isA<QWResult<QWNewsItems>>());
      expect(result.data.result.items, isList);
      expect(result.data.result.items.length, equals(1));
      expect(result.data.result.items.first, isA<QWNewsItems>());
      expect(result.data.result.items.first.domain, isNotEmpty);
    });

    test('Test search social', () async {
      var result = await qwantApi.searchSocial('test', count: 1);
      
      expect(result, isA<QWSearchResult<QWSocialItems>>());
      expect(result.status, equals('success'));
      expect(result.data, isA<QWData<QWSocialItems>>());
      expect(result.data.result, isA<QWResult<QWSocialItems>>());
      expect(result.data.result.items, isList);
      expect(result.data.result.items.length, equals(1));
      expect(result.data.result.items.first, isA<QWSocialItems>());
      expect(result.data.result.items.first.favoriteCount, isNotEmpty);
    });

    test('Test search video', () async {
      var result = await qwantApi.searchVideos('test', count: 1);
      
      expect(result, isA<QWSearchResult<QWVideosItems>>());
      expect(result.status, equals('success'));
      expect(result.data, isA<QWData<QWVideosItems>>());
      expect(result.data.result, isA<QWResult<QWVideosItems>>());
      expect(result.data.result.items, isList);
      expect(result.data.result.items.length, equals(1));
      expect(result.data.result.items.first, isA<QWVideosItems>());
      expect(result.data.result.items.first.media, isNotEmpty);
    });
  });
}
