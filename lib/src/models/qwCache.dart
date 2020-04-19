class QWCache {
  String key;
  int created;
  int expiration;
  String status;
  int age;
  int version;
  String system;
  int mode;

  QWCache(
      {this.key,
      this.created,
      this.expiration,
      this.status,
      this.age,
      this.version,
      this.system,
      this.mode});

  QWCache.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    created = json['created'];
    expiration = json['expiration'];
    status = json['status'];
    age = json['age'];
    version = json['version'];
    system = json['system'];
    mode = json['mode'];
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['key'] = key;
    data['created'] = created;
    data['expiration'] = expiration;
    data['status'] = status;
    data['age'] = age;
    data['version'] = version;
    data['system'] = system;
    data['mode'] = mode;
    return data;
  }
}
