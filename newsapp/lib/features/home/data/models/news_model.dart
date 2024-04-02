class NewsModel {
  final String? image;
  final String? title;
  final String? desc;
  final String? name;
  final String? url;
  final String? publishedat;
  final String? author;

  NewsModel({
    required this.name,
    required this.url,
    required this.publishedat,
    required this.author,
    required this.image,
    required this.title,
    required this.desc,
  });
  factory NewsModel.fromJson(json) {
    return NewsModel(
      name: json["source"]["name"],
      url: json["url"],
      publishedat: json["publishedAt"],
      author: json["author"],
      image: json["urlToImage"],
      title: json["title"],
      desc: json["description"],
    );
  }
}
