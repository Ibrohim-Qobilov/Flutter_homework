
// To parse this JSON data, do
//
//     final images = imagesFromJson(jsonString);

import 'dart:convert';

List<Images> imagesFromJson(String str) => List<Images>.from(json.decode(str).map((x) => Images.fromJson(x)));

String imagesToJson(List<Images> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Images {
    Images({
        this.id,
        this.author,
        this.width,
        this.height,
        this.url,
        this.downloadUrl,
    });

    String? id;
    String? author;
    int? width;
    int? height;
    String? url;
    String? downloadUrl;

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        id: json["id"],
        author: json["author"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        downloadUrl: json["download_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "author": author,
        "width": width,
        "height": height,
        "url": url,
        "download_url": downloadUrl,
    };
}