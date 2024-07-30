// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'get_books_response.g.dart';

@JsonSerializable()
class GetBooksResponse {
  @JsonKey(name: 'items')
  List<BookModel>? booksList;
  GetBooksResponse(
    this.booksList,
  );
  factory GetBooksResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBooksResponseFromJson(json);
}

@JsonSerializable()
class BookModel {
  String? id;
  VolumeInfo? volumeInfo;
  BookModel(
    this.id,
    this.volumeInfo,
  );
  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}

@JsonSerializable()
class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? description;
  int? pageCount;
  BookImage? imageLinks;
  String? previewLink;
  VolumeInfo(
    this.title,
    this.authors,
    this.publisher,
    this.description,
    this.pageCount,
    this.imageLinks,
  );
  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}

@JsonSerializable()
class BookImage {
  String? thumbnail;
  String? smallThumbnail;
  BookImage(
    this.smallThumbnail,
    this.thumbnail,
  );
  factory BookImage.fromJson(Map<String, dynamic> json) =>
      _$BookImageFromJson(json);
}
