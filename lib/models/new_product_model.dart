// To parse this JSON data, do
//
//     final newProductList = newProductListFromJson(jsonString);

import 'dart:convert';

import 'package:ttsfarmcare/models/get_all_products_model.dart';

import 'all_product_model.dart';

NewProductList newProductListFromJson(String str) => NewProductList.fromJson(json.decode(str));

// String newProductListToJson(NewProductList data) => json.encode(data.toJson());

class NewProductList {
    NewProductList({
        required this.currentPage,
        required this.data,
        required this.firstPageUrl,
        required this.from,
        required this.lastPage,
        required this.lastPageUrl,
        this.nextPageUrl,
        required this.path,
        required this.perPage,
        this.prevPageUrl,
        required this.to,
        required this.total,
    });

    int currentPage;
    List<Products> data;
    String firstPageUrl;
    int from;
    int lastPage;
    String lastPageUrl;
   
    dynamic nextPageUrl;
    String path;
    int perPage;
    dynamic prevPageUrl;
    int to;
    int total;

    factory NewProductList.fromJson(Map<String, dynamic> json) => NewProductList(
        currentPage: json["current_page"],
        data: List<Products>.from(json["data"].map((x) => Products.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
     
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
    );

    // Map<String, dynamic> toJson() => {
    //     "current_page": currentPage,
    //     "data": List<dynamic>.from(data.map((x) => x.toJson())),
    //     "first_page_url": firstPageUrl,
    //     "from": from,
    //     "last_page": lastPage,
    //     "last_page_url": lastPageUrl,
    //     "next_page_url": nextPageUrl,
    //     "path": path,
    //     "per_page": perPage,
    //     "prev_page_url": prevPageUrl,
    //     "to": to,
    //     "total": total,
    // };
}

// class ProductData {
//     ProductData({
//         required this.id,
//         required this.name,
//         required this.title,
//         required this.priceCustomer,
//         required this.priceRetailer,
//         required this.quantity,
//         required this.image1,
//         required this.image2,
//         required this.shortDescription,
//         required this.detailDescription,
//         required this.disclaimer,
//         required this.categoryId,
//         required this.status,
//         required this.datumNew,
//         required this.createdAt,
//         required this.updatedAt,
//         this.rating,
//     });

//     int id;
//     String name;
//     String title;
//     String priceCustomer;
//     String priceRetailer;
//     String quantity;
//     String image1;
//     String image2;
//     String shortDescription;
//     String detailDescription;
//     String disclaimer;
//     String categoryId;
//     String status;
//     String datumNew;
//     DateTime createdAt;
//     DateTime updatedAt;
//     dynamic rating;

//     factory ProductData.fromJson(Map<String, dynamic> json) => ProductData(
//         id: json["id"],
//         name: json["name"],
//         title: json["title"],
//         priceCustomer: json["price_customer"],
//         priceRetailer: json["price_retailer"],
//         quantity: json["quantity"],
//         image1: json["image1"],
//         image2: json["image2"],
//         shortDescription: json["short_description"],
//         detailDescription: json["detail_description"],
//         disclaimer: json["disclaimer"],
//         categoryId: json["category_id"],
//         status: json["status"],
//         datumNew: json["new"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         rating: json["rating"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "title": title,
//         "price_customer": priceCustomer,
//         "price_retailer": priceRetailer,
//         "quantity": quantity,
//         "image1": image1,
//         "image2": image2,
//         "short_description": shortDescription,
//         "detail_description": detailDescription,
//         "disclaimer": disclaimer,
//         "category_id": categoryId,
//         "status": status,
//         "new": datumNew,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "rating": rating,
//     };
// }

class Link {
    Link({
        required this.url,
        required this.label,
        required this.active,
    });

    String url;
    String label;
    bool active;

    factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"],
        active: json["active"],
    );

    Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label,
        "active": active,
    };
}
