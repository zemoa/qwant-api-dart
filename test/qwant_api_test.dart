import 'package:qwant_api/qwant_api.dart';
import 'package:test/test.dart';

void main() {
  group('Test Qwant Api', () {
    QwantApi qwantApi;

    setUp(() {
      qwantApi = QwantApi();
    });

    test('Test search web', () async {
      var result = await qwantApi.searchWeb('test', count: 1);
      
      expect(result, isA<QWSearchResult<QWWebResult>>());
      expect(result.status, equals('success'));
      expect(result.data, isA<QWData<QWWebResult>>());
      expect(result.data.result, isA<QWWebResult>());
      expect(result.data.result.items, isList);
      expect(result.data.result.items.length, equals(1));
      expect(result.data.result.items.first, isA<QWWebItems>());
      expect(result.data.result.items.first.favicon, isNotEmpty);
    });
    
    test('Test search images', () async {
      var result = await qwantApi.searchImages('test', count: 1);
      
      expect(result, isA<QWSearchResult<QWImageResult>>());
      expect(result.status, equals('success'));
      expect(result.data, isA<QWData<QWImageResult>>());
      expect(result.data.result, isA<QWImageResult>());
      expect(result.data.result.items, isList);
      expect(result.data.result.items.length, equals(1));
      expect(result.data.result.items.first, isA<QWImageItems>());
      expect(result.data.result.items.first.height, isNotEmpty);
    });

    test('Test search news', () async {
      var result = await qwantApi.searchNews('test', count: 1);
      
      expect(result, isA<QWSearchResult<QWNewsResult>>());
      expect(result.status, equals('success'));
      expect(result.data, isA<QWData<QWNewsResult>>());
      expect(result.data.result, isA<QWNewsResult>());
      expect(result.data.result.items, isList);
      expect(result.data.result.items.length, equals(1));
      expect(result.data.result.items.first, isA<QWNewsItems>());
      expect(result.data.result.items.first.domain, isNotEmpty);
    });

    test('Test search social', () async {
      var result = await qwantApi.searchSocial('test', count: 1);
      
      expect(result, isA<QWSearchResult<QWSocialResult>>());
      expect(result.status, equals('success'));
      expect(result.data, isA<QWData<QWSocialResult>>());
      expect(result.data.result, isA<QWSocialResult>());
      expect(result.data.result.items, isList);
      expect(result.data.result.items.length, equals(1));
      expect(result.data.result.items.first, isA<QWSocialItems>());
      expect(result.data.result.items.first.desc, isNotEmpty);
    });

    test('Test search video', () async {
      var result = await qwantApi.searchVideos('test', count: 1);
      
      expect(result, isA<QWSearchResult<QWVideoResult>>());
      expect(result.status, equals('success'));
      expect(result.data, isA<QWData<QWVideoResult>>());
      expect(result.data.result, isA<QWVideoResult>());
      expect(result.data.result.items, isList);
      expect(result.data.result.items.length, equals(1));
      expect(result.data.result.items.first, isA<QWVideosItems>());
      expect(result.data.result.items.first.media, isNotEmpty);
    });
  });
}
