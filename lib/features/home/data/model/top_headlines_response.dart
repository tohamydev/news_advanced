import 'package:json_annotation/json_annotation.dart';

part 'top_headlines_response.g.dart';

@JsonSerializable()
class TopHeadlinesResponse {
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "totalResults")
  int? totalResults;
  @JsonKey(name: "articles")
  List<Article>? articles;

  TopHeadlinesResponse({
    this.status,
    this.totalResults,
    this.articles,
  });

  factory TopHeadlinesResponse.fromJson(Map<String, dynamic> json) => _$TopHeadlinesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TopHeadlinesResponseToJson(this);
}

@JsonSerializable()
class Article {
  @JsonKey(name: "source")
  Source? source;
  @JsonKey(name: "author")
  String? author;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "urlToImage")
  String? urlToImage;
  @JsonKey(name: "publishedAt")
  String? publishedAt;
  @JsonKey(name: "content")
  String? content;

  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

@JsonSerializable()
class Source {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;

  Source({
    this.id,
    this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
