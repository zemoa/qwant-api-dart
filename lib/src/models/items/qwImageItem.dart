

import 'package:qwant_api/src/models/items/qwItems.dart';

class QWImageItems extends QWItems {
  String title;
  String type;
  String media;
  String desc;
  String thumbnail;
  int thumbWidth;
  int thumbHeight;
  String width;
  String height;
  String size;
  String url;
  String sId;
  String bId;
  String mediaFullsize;
  String thumbType;
  int count;
  String mediaPreview;

  QWImageItems(
      {this.title,
      this.type,
      this.media,
      this.desc,
      this.thumbnail,
      this.thumbWidth,
      this.thumbHeight,
      this.width,
      this.height,
      this.size,
      this.url,
      this.sId,
      this.bId,
      this.mediaFullsize,
      this.thumbType,
      this.count,
      this.mediaPreview});

  QWImageItems.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    type = json['type'];
    media = json['media'];
    desc = json['desc'];
    thumbnail = json['thumbnail'];
    thumbWidth = json['thumb_width'];
    thumbHeight = json['thumb_height'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    url = json['url'];
    sId = json['_id'];
    bId = json['b_id'];
    mediaFullsize = json['media_fullsize'];
    thumbType = json['thumb_type'];
    count = json['count'];
    mediaPreview = json['media_preview'];
  }
  @override
  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['title'] = title;
    data['type'] = type;
    data['media'] = media;
    data['desc'] = desc;
    data['thumbnail'] = thumbnail;
    data['thumb_width'] = thumbWidth;
    data['thumb_height'] = thumbHeight;
    data['width'] = width;
    data['height'] = height;
    data['size'] = size;
    data['url'] = url;
    data['_id'] = sId;
    data['b_id'] = bId;
    data['media_fullsize'] = mediaFullsize;
    data['thumb_type'] = thumbType;
    data['count'] = count;
    data['media_preview'] = mediaPreview;
    return data;
  }
}