
class NewsModel{
  NewsModel({
    this.author,
    this.country,
    this.language,
    this.publishedDate,
    this.summary,
    this.title,
    this.url
  });

  String author='Anonymous';
  String country;
  String language;
  String url;
  String publishedDate;
  String summary;
  String title;

  factory NewsModel.fromJson(Map<String, dynamic> parsedJson){
    return new NewsModel(
      author: parsedJson['author'].toString(),
      country: parsedJson['country'].toString(),
      language: parsedJson['language'].toString(),
      url: parsedJson['link'].toString(),
      publishedDate: parsedJson['published_date'].toString(),
      summary: parsedJson['summary'].toString(),
      title: parsedJson['title'].toString(),
    );
  }
}