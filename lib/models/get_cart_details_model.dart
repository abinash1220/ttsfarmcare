// // To parse this JSON data, do
// //
// //     final getCartDetails = getCartDetailsFromJson(jsonString);

// import 'dart:convert';

// GetCartDetails getCartDetailsFromJson(String str) => GetCartDetails.fromJson(json.decode(str));

// String getCartDetailsToJson(GetCartDetails data) => json.encode(data.toJson());

// class GetCartDetails {
//     GetCartDetails({
//         this.message,
//         this.cartdetails,
//     });

//     String message;
//     List<Cartdetail> cartdetails;

//     factory GetCartDetails.fromJson(Map<String, dynamic> json) => GetCartDetails(
//         message: json["message"],
//         cartdetails: List<Cartdetail>.from(json["cartdetails"].map((x) => Cartdetail.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "message": message,
//         "cartdetails": List<dynamic>.from(cartdetails.map((x) => x.toJson())),
//     };
// }

// class Cartdetail {
//     Cartdetail({
//         this.id,
//         this.userId,
//         this.productId,
//         this.quantity,
//         this.activeFlag,
//         this.createdAt,
//         this.updatedAt,
//     });

//     int id;
//     String userId;
//     String productId;
//     String quantity;
//     String activeFlag;
//     DateTime createdAt;
//     DateTime updatedAt;

//     factory Cartdetail.fromJson(Map<String, dynamic> json) => Cartdetail(
//         id: json["id"],
//         userId: json["user_id"],
//         productId: json["product_id"],
//         quantity: json["quantity"],
//         activeFlag: json["active_flag"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "user_id": userId,
//         "product_id": productId,
//         "quantity": quantity,
//         "active_flag": activeFlag,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//     };
// }
