class Model {
  String imgUrl;
  Model({required this.imgUrl});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(imgUrl: json['url']);
  }
}
// https://api.thecatapi.com/v1/images/search?limit=20&page=1&mime_types=png