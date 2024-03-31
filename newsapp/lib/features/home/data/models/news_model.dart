class NewsModel {
  final String image;
  final String title;
  final String desc;

  NewsModel({required this.image, required this.title, required this.desc});
  factory NewsModel.fromJson(json) {
    return NewsModel(
        title: json["title"], image: json["url"], desc: json["description"]);
  }
}
