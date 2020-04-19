

import 'package:qwant_api/src/models/items/qwItems.dart';

class QWNewsItems extends QWItems {
  String title;
  String url;
  int date;
  String domain;
  String category;
  String sId;
  List<QWMedia> media;
  String desc;
  String descShort;

  QWNewsItems(
      {this.title,
      this.url,
      this.date,
      this.domain,
      this.category,
      this.sId,
      this.media,
      this.desc,
      this.descShort});

  QWNewsItems.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    date = json['date'];
    domain = json['domain'];
    category = json['category'];
    sId = json['_id'];
    if (json['media'] != null) {
      media = <QWMedia>[];
      json['media'].forEach((v) {
        media.add(QWMedia.fromJson(v));
      });
    }
    desc = json['desc'];
    descShort = json['desc_short'];
  }

  @override
  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['title'] = title;
    data['url'] = url;
    data['date'] = date;
    data['domain'] = domain;
    data['category'] = category;
    data['_id'] = sId;
    if (media != null) {
      data['media'] = media.map((v) => v.toJson()).toList();
    }
    data['desc'] = desc;
    data['desc_short'] = descShort;
    return data;
  }
}

class QWPict {
  String url;
  int width;
  int height;
  String type;

  QWPict({this.url, this.width, this.height, this.type});

  QWPict.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['url'] = url;
    data['width'] = width;
    data['height'] = height;
    data['type'] = type;
    return data;
  }
}

class QWMedia {
  QWPict pict;
  QWPict pictBig;

  QWMedia({this.pict, this.pictBig});

  QWMedia.fromJson(Map<String, dynamic> json) {
    pict = json['pict'] != null ? QWPict.fromJson(json['pict']) : null;
    pictBig =
        json['pict_big'] != null ? QWPict.fromJson(json['pict_big']) : null;
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    if (pict != null) {
      data['pict'] = pict.toJson();
    }
    if (pictBig != null) {
      data['pict_big'] = pictBig.toJson();
    }
    return data;
  }
}