import 'package:qwant_api/src/models/qwItems.dart';

class QWSocialItems extends QWItems {
  String sId;
  int iIndex;
  String title;
  String img;
  String desc;
  int date;
  String type;
  String card;
  String post;
  String url;
  int followers;
  bool verified;
  int retweetCount;
  int favoriteCount;
  List<QWMedia> medias;
  String userUrl;

  QWSocialItems(
      {this.sId,
      this.iIndex,
      this.title,
      this.img,
      this.desc,
      this.date,
      this.type,
      this.card,
      this.post,
      this.url,
      this.followers,
      this.verified,
      this.retweetCount,
      this.favoriteCount,
      this.medias,
      this.userUrl});

  QWSocialItems.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    iIndex = json['__index'];
    title = json['title'];
    img = json['img'];
    desc = json['desc'];
    date = json['date'];
    type = json['type'];
    card = json['card'];
    post = json['post'];
    url = json['url'];
    followers = json['followers'];
    verified = json['verified'];
    retweetCount = json['retweetCount'];
    favoriteCount = json['favoriteCount'];
    if (json['medias'] != null) {
      medias = <QWMedia>[];
      json['medias'].forEach((v) {
        medias.add(QWMedia.fromJson(v));
      });
    }
    userUrl = json['userUrl'];
  }

  @override
  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['_id'] = sId;
    data['__index'] = iIndex;
    data['title'] = title;
    data['img'] = img;
    data['desc'] = desc;
    data['date'] = date;
    data['type'] = type;
    data['card'] = card;
    data['post'] = post;
    data['url'] = url;
    data['followers'] = followers;
    data['verified'] = verified;
    data['retweetCount'] = retweetCount;
    data['favoriteCount'] = favoriteCount;
    if (medias != null) {
      data['medias'] = medias.map((v) => v.toJson()).toList();
    }
    data['userUrl'] = userUrl;
    return data;
  }
}

class QWMedia {
  String type;
  String mediaUrlHttps;
  QWVideoInfo videoInfo;

  QWMedia({this.type, this.mediaUrlHttps, this.videoInfo});

  QWMedia.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    mediaUrlHttps = json['media_url_https'];
    videoInfo = json['video_info'] != null
        ?  QWVideoInfo.fromJson(json['video_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['type'] = type;
    data['media_url_https'] = mediaUrlHttps;
    if (videoInfo != null) {
      data['video_info'] = videoInfo.toJson();
    }
    return data;
  }
}

class QWVideoInfo {
  List<int> aspectRatio;
  int durationMillis;
  List<QWVariants> variants;

  QWVideoInfo({this.aspectRatio, this.durationMillis, this.variants});

  QWVideoInfo.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspect_ratio'].cast<int>();
    durationMillis = json['duration_millis'];
    if (json['variants'] != null) {
      variants = <QWVariants>[];
      json['variants'].forEach((v) {
        variants.add(QWVariants.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['aspect_ratio'] = aspectRatio;
    data['duration_millis'] = durationMillis;
    if (variants != null) {
      data['variants'] = variants.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class QWVariants {
  int bitrate;
  String contentType;
  String url;

  QWVariants({this.bitrate, this.contentType, this.url});

  QWVariants.fromJson(Map<String, dynamic> json) {
    bitrate = json['bitrate'];
    contentType = json['content_type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['bitrate'] = bitrate;
    data['content_type'] = contentType;
    data['url'] = url;
    return data;
  }
}