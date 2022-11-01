class Itemviewmodel {
  String? status;
  List<Data>? data;

  Itemviewmodel({this.status, this.data});

  Itemviewmodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDescrbtion;
  String? itemsDescrbtionAr;
  int? itemsCount;
  String? itemsImage;
  int? itemsActive;
  int? itemsPrice;
  // int? itemsDiscount;
  String? itemsTime;
  int? itemsReletion;
  // int? categoriesId;
  // String? categoriesName;
  // String? categoriesNameAr;
  // String? categoriesTime;
  // String? categoriesImages;

  Data({
    this.itemsId,
    this.itemsName,
    this.itemsNameAr,
    this.itemsDescrbtion,
    this.itemsDescrbtionAr,
    this.itemsCount,
    this.itemsImage,
    this.itemsActive,
    this.itemsPrice,
    // this.itemsDiscount,
    this.itemsTime,
    this.itemsReletion,
    // this.categoriesId,
    // this.categoriesName,
    // this.categoriesNameAr,
    // this.categoriesTime,
    // this.categoriesImages
  });

  Data.fromJson(Map<String, dynamic> json) {
    itemsId = int.parse(json['items_id']);
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDescrbtion = json['items_descrbtion'];
    itemsDescrbtionAr = json['items_descrbtion_ar'];
    itemsCount = int.parse(json['items_count']);
    itemsImage = json['items_image'];
    itemsActive = int.parse(json['items_active']);
    itemsPrice = int.parse(json['items_price']);
    //itemsDiscount = int.parse(json['items_discount']);
    itemsTime = json['items_time'];
    itemsReletion = int.parse(json['items_reletion']);
    // categoriesId = json['categories_id'];
    // categoriesName = json['categories_name'];
    // categoriesNameAr = json['categories_name_ar'];
    // categoriesTime = json['categories_time'];
    // categoriesImages = json['categories_images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['items_id'] = itemsId;
    data['items_name'] = itemsName;
    data['items_name_ar'] = itemsNameAr;
    data['items_descrbtion'] = itemsDescrbtion;
    data['items_descrbtion_ar'] = itemsDescrbtionAr;
    data['items_count'] = itemsCount;
    data['items_image'] = itemsImage;
    data['items_active'] = itemsActive;
    data['items_price'] = itemsPrice;
    // data['items_discount'] = itemsDiscount;
    data['items_time'] = itemsTime;
    data['items_reletion'] = itemsReletion;
    // data['categories_id'] = categoriesId;
    // data['categories_name'] = categoriesName;
    // data['categories_name_ar'] = categoriesNameAr;
    // data['categories_time'] = categoriesTime;
    // data['categories_images'] = categoriesImages;
    return data;
  }
}
