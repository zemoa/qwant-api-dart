import 'package:qwant_api/src/models/results/qwResult.dart';

import 'qwData.dart';

class QWSearchResult<T extends QWResult> {
  String status;
  QWData<T> data;

  QWSearchResult({this.status, this.data});

  QWSearchResult.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? QWData<T>.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}
