// To parse this JSON data, do
//
//     final quotesImgs = quotesImgsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<QuotesImgs> quotesImgsFromJson(String str) =>
    List<QuotesImgs>.from(json.decode(str).map((x) => QuotesImgs.fromJson(x)));

String quotesImgsToJson(List<QuotesImgs> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class QuotesImgs {
  QuotesImgs({
    @required this.id,
    @required this.publishedAt,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.img,
  });

  int id;
  DateTime publishedAt;
  DateTime createdAt;
  DateTime updatedAt;
  List<Img> img;

  factory QuotesImgs.fromJson(Map<String, dynamic> json) => QuotesImgs(
        id: json["id"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        img: List<Img>.from(json["img"].map((x) => Img.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "published_at": publishedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "img": List<dynamic>.from(img.map((x) => x.toJson())),
      };
}

class Img {
  Img({
    @required this.id,
    @required this.name,
    @required this.alternativeText,
    @required this.caption,
    @required this.width,
    @required this.height,
    @required this.formats,
    @required this.hash,
    @required this.ext,
    @required this.mime,
    @required this.size,
    @required this.url,
    @required this.previewUrl,
    @required this.provider,
    @required this.providerMetadata,
    @required this.createdAt,
    @required this.updatedAt,
  });

  int id;
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  Formats formats;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  dynamic previewUrl;
  String provider;
  dynamic providerMetadata;
  DateTime createdAt;
  DateTime updatedAt;

  factory Img.fromJson(Map<String, dynamic> json) => Img(
        id: json["id"],
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"].toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Formats {
  Formats({
    @required this.large,
    @required this.small,
    @required this.medium,
    @required this.thumbnail,
  });

  Large large;
  Large small;
  Large medium;
  Large thumbnail;

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        large: Large.fromJson(json["large"]),
        small: Large.fromJson(json["small"]),
        medium: Large.fromJson(json["medium"]),
        thumbnail: Large.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "large": large.toJson(),
        "small": small.toJson(),
        "medium": medium.toJson(),
        "thumbnail": thumbnail.toJson(),
      };
}

class Large {
  Large({
    @required this.ext,
    @required this.url,
    @required this.hash,
    @required this.mime,
    @required this.name,
    @required this.path,
    @required this.size,
    @required this.width,
    @required this.height,
  });

  String ext;
  String url;
  String hash;
  String mime;
  String name;
  dynamic path;
  double size;
  int width;
  int height;

  factory Large.fromJson(Map<String, dynamic> json) => Large(
        ext: json["ext"],
        url: json["url"],
        hash: json["hash"],
        mime: json["mime"],
        name: json["name"],
        path: json["path"],
        size: json["size"].toDouble(),
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "ext": ext,
        "url": url,
        "hash": hash,
        "mime": mime,
        "name": name,
        "path": path,
        "size": size,
        "width": width,
        "height": height,
      };
}
