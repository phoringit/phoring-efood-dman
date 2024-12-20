class TrackModel {
  String? token;
  double? longitude;
  double? latitude;
  String? location;
  String? orderId;

  TrackModel(
      {this.token, this.longitude, this.latitude, this.location, this.orderId});

  TrackModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    location = json['location'];
    orderId = json['order_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['location'] = location;
    data['order_id'] = orderId;
    return data;
  }
}
