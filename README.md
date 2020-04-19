# qwant-api-dart

<center>

![Qwant icon](https://www.qwant.com/favicon-144.png)

Unofficial Qwant Api wrapper for Dart.
</center>

develop : [![Build Status](https://travis-ci.com/zemoa/qwant-api-dart.svg?branch=develop)](https://travis-ci.com/zemoa/qwant-api-dart) master : [![Build Status](https://travis-ci.com/zemoa/qwant-api-dart.svg?branch=master)](https://travis-ci.com/zemoa/qwant-api-dart)

--------------

## Description

This library is built to help you to make some queries using Qwant's engine.

Inspired by <https://github.com/NLDev/qwant-api> .
Created from templates made available by Stagehand under a BSD-style

[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE)

## Installation

Check on <https://pub.dev/>

```yaml
#pubspec.yaml
dependencies:
    qwant_api: ^0.1.1
```

Import :

```dart
import 'package:qwant_api/qwant_api.dart';
```

## Features

### Supported search

| WEB | NEWS | IMAGES | VIDEOS | SOCIAL | MUSIC |
| :-: | :-: | :-: | :-: | :-: | :-: |
| ![included](https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/6549974331557740369-32.png)| ![included](https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/6549974331557740369-32.png) | ![included](https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/6549974331557740369-32.png) | ![included](https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/6549974331557740369-32.png) | ![included](https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/6549974331557740369-32.png) | ![not included](https://upload-icon.s3.us-east-2.amazonaws.com/uploads/icons/png/16618812301557740370-32.png) |
| `qwantApi.searchWeb` | `qwantApi.searchNews` | `qwantApi.searchImages` | `qwantApi.searchVideos` | `qwantApi.searchSocial` | |

### Supported languages

```dart
enum Language {
    ENGLISH,
    GERMAN,
    FRENCH,
    WELSH,
    SCOTTISH,
    CORSICAN,
    BRETON,
    SPANISH,
    CATALAN,
    BASQUE,
    ITALIAN,
    PORTUGUESE,
    DUTCH,
    RUSSIAN,
    POLISH,
    GREEK,
    FINNISH,
    BULGARIAN,
    JAPANES,
    MALAY,
    HEBREW,
    TURKISH,
    CZECH,
    ESTONIAN,
    HUNGARIAN,
    ROMANIAN,
    DANISH,
    NORWEGIAN,
    SWEDISH,
    KOREAN,
    THAI
}
```

## How to use it

### Example

```dart

import 'package:qwant_api/qwant_api.dart';

void main() async {
    // Instantiate the api
    var qwantApit = QwantApi();
    // Then perform an async search
    var result1 = await qwantApit.searchWeb('test');
    var result2 = await qwantApit.searchWeb('test', count: 2, language: Language.ENGISH);
}

```

It will return a value of type `QWSearchResult<T extends QWResult>` where `QWResult` could be one of the following types depending on the search:

| Search Type | Result's type |
| :-: | :-: |
| WEB | `QWWebResult` |
| NEWS | `QWNewsResult` |
| IMAGES | `QWImageResult` |
| VIDEOS | `QWVideoResult` |
| SOCIAL | `QWSocialResult` |

### Available options for each search

| Parameter | Required | Type | Description |
| :-: | :-: | :-: | :- |
| query | Yes | `String` | Words to search |
| count | No | `int` | Number of items to search (currently it seems to be limited to 50 by Qwant's API) |
| offset | No | `int` | Index of the first items to fetch (for pagination) |
| language | No | `Language` | Language for the search |

## Important notes

According to [NLDev/qwant-api](https://github.com/NLDev/qwant-api), there are some limitations. After some queries a captcha should be filled.

I didn't reach this limit so no helper has been provided to catch this behavior yet.
