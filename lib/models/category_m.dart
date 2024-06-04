class CategoryM {
  String imgUrl, title, description;

  CategoryM({
    required this.imgUrl,
    required this.title,
    required this.description,
  });

  factory CategoryM.fromJson(Map<String, dynamic> data) {
    return CategoryM(
      imgUrl: data['imgUrl'],
      title: data['title'],
      description: data['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'imgUrl': imgUrl,
      'title': title,
      'description': description,
    };
  }
}
