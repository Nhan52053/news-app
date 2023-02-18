class LatestNews {
  int? id;
  String? title;
  String? category;
  String? imageURL;
  String? content;
  String? createAt;

  LatestNews(
      {this.id,
      this.title,
      this.category,
      this.imageURL,
      this.content,
      this.createAt});

  LatestNews.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    category = json['category'];
    imageURL = json['imageURL'];
    content = json['content'];
    createAt = json['createAt'];
  }
}
