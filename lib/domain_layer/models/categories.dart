class Catogeris {
  int? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesTime;
  int? categoriesImages;

  Catogeris(
      {this.categoriesId,
      this.categoriesName,
      this.categoriesNameAr,
      this.categoriesTime,
      this.categoriesImages});

  Catogeris.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesNameAr = json['categories_name_ar'];
    categoriesTime = json['categories_time'];
    categoriesImages = json['categories_images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categories_id'] = categoriesId;
    data['categories_name'] = categoriesName;
    data['categories_name_ar'] = categoriesNameAr;
    data['categories_time'] = categoriesTime;
    data['categories_images'] = categoriesImages;
    return data;
  }
}
