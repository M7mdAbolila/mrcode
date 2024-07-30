// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_books_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBooksResponse _$GetBooksResponseFromJson(Map<String, dynamic> json) =>
    GetBooksResponse(
      (json['items'] as List<dynamic>?)
          ?.map((e) => BookModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetBooksResponseToJson(GetBooksResponse instance) =>
    <String, dynamic>{
      'items': instance.booksList,
    };

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
      json['id'] as String?,
      json['volumeInfo'] == null
          ? null
          : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
      'id': instance.id,
      'volumeInfo': instance.volumeInfo,
    };

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) => VolumeInfo(
      json['title'] as String?,
      (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['publisher'] as String?,
      json['description'] as String?,
      (json['pageCount'] as num?)?.toInt(),
      json['imageLinks'] == null
          ? null
          : BookImage.fromJson(json['imageLinks'] as Map<String, dynamic>),
    )..previewLink = json['previewLink'] as String?;

Map<String, dynamic> _$VolumeInfoToJson(VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'description': instance.description,
      'pageCount': instance.pageCount,
      'imageLinks': instance.imageLinks,
      'previewLink': instance.previewLink,
    };

BookImage _$BookImageFromJson(Map<String, dynamic> json) => BookImage(
      json['smallThumbnail'] as String?,
      json['thumbnail'] as String?,
    );

Map<String, dynamic> _$BookImageToJson(BookImage instance) => <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'smallThumbnail': instance.smallThumbnail,
    };
