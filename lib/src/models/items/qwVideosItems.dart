import 'package:qwant_api/src/models/items/qwItems.dart';

class QWVideosItems extends QWItems {
  String title;
  String type;
  String desc;
  int duration;
  int thumbWidth;
  int thumbHeight;
  int width;
  int height;
  String mediaId;
  String sId;
  String url;
  String media;
  String thumbnail;
  int date;
  String channel;
  int isVevo;
  String source;
  int count;

  QWVideosItems(
      {this.title,
      this.type,
      this.desc,
      this.duration,
      this.thumbWidth,
      this.thumbHeight,
      this.width,
      this.height,
      this.mediaId,
      this.sId,
      this.url,
      this.media,
      this.thumbnail,
      this.date,
      this.channel,
      this.isVevo,
      this.source,
      this.count});

  QWVideosItems.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    type = json['type'];
    desc = json['desc'];
    duration = json['duration'];
    thumbWidth = json['thumb_width'];
    thumbHeight = json['thumb_height'];
    width = json['width'];
    height = json['height'];
    mediaId = json['media_id'];
    sId = json['_id'];
    url = json['url'];
    media = json['media'];
    thumbnail = json['thumbnail'];
    date = json['date'];
    channel = json['channel'];
    isVevo = json['is_vevo'];
    source = json['source'];
    count = json['count'];
  }

  @override
  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['title'] = title;
    data['type'] = type;
    data['desc'] = desc;
    data['duration'] = duration;
    data['thumb_width'] = thumbWidth;
    data['thumb_height'] = thumbHeight;
    data['width'] = width;
    data['height'] = height;
    data['media_id'] = mediaId;
    data['_id'] = sId;
    data['url'] = url;
    data['media'] = media;
    data['thumbnail'] = thumbnail;
    data['date'] = date;
    data['channel'] = channel;
    data['is_vevo'] = isVevo;
    data['source'] = source;
    data['count'] = count;
    return data;
  }
}
