// // To parse this JSON data, do
// //
// //     final searchProduct = searchProductFromJson(jsonString);

// import 'dart:convert';

// SearchProduct searchProductFromJson(String str) => SearchProduct.fromJson(json.decode(str));

// String searchProductToJson(SearchProduct data) => json.encode(data.toJson());

// class SearchProduct {
//     SearchProduct({
//         required this.message,
//         required this.product,
//     });

//     String message;
//     List<Search> product;

//     factory SearchProduct.fromJson(Map<String, dynamic> json) => SearchProduct(
//         message: json["message"],
//         product: List<Search>.from(json["product"].map((x) => Search.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "message": message,
//         "product": List<dynamic>.from(product.map((x) => x.toJson())),
//     };
// }

// class Search {
//     Search({
//         required this.id,
//         required this.name,
//         required this.title,
//         required this.price,
//         required this.quantity,
//         required this.image1,
//         required this.image2,
//         required this.shortDescription,
//         required this.detailDescription,
//         required this.disclaimer,
//         required this.categoryId,
//         required this.createdAt,
//         required this.updatedAt,
//         this.rating,
//     });

//     int id;
//     String name;
//     String title;
//     String price;
//     String quantity;
//     String image1;
//     String image2;
//     String shortDescription;
//     String detailDescription;
//     String disclaimer;
//     String categoryId;
//     String createdAt;
//     String updatedAt;
//     dynamic rating;

//     factory Search.fromJson(Map<String, dynamic> json) => Search(
//         id: json["id"],
//         name: json["name"],
//         title: json["title"],
//         price: json["price"],
//         quantity: json["quantity"],
//         image1: json["image1"],
//         image2: json["image2"],
//         shortDescription: json["short_description"],
//         detailDescription: json["detail_description"],
//         disclaimer: json["disclaimer"],
//         categoryId: json["category_id"],
//         createdAt: json["created_at"],
//         updatedAt: json["updated_at"],
//         rating: json["rating"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "title": title,
//         "price": price,
//         "quantity": quantity,
//         "image1": image1,
//         "image2": image2,
//         "short_description": shortDescription,
//         "detail_description": detailDescription,
//         "disclaimer": disclaimer,
//         "category_id": categoryId,
//         "created_at": createdAt,
//         "updated_at": updatedAt,
//         "rating": rating,
//     };
// }
