// // To parse this JSON data, do
// //
// //     final viewCart = viewCartFromJson(jsonString);

// import 'dart:convert';

// ViewCart viewCartFromJson(String str) => ViewCart.fromJson(json.decode(str));

// String viewCartToJson(ViewCart data) => json.encode(data.toJson());

// class ViewCart {
//     ViewCart({
//         required this.message,
//         required this.cartDetails,
//     });

//     String message;
//     Cartdetail cartDetails;

//     factory ViewCart.fromJson(Map<String, dynamic> json) => ViewCart(
//         message: json["message"],
//         cartDetails: Cartdetail.fromJson(json["cart_details"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "message": message,
//         "cart_details": cartDetails.toJson(),
//     };
// }

// class Cartdetail {
//     Cartdetail({
//         required this.id,
//         required this.userId,
//         required this.productId,
//         required this.quantity,
//         this.price,
//         required this.noOfItem,
//         required this.activeFlag,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.product,
//         required this.users,
//     });

//     int id;
//     String userId;
//     String productId;
//     String quantity;
//     dynamic price;
//     int noOfItem;
//     String activeFlag;
//     DateTime createdAt;
//     DateTime updatedAt;
//     Product product;
//     Users users;

//     factory Cartdetail.fromJson(Map<String, dynamic> json) => Cartdetail(
//         id: json["id"],
//         userId: json["user_id"],
//         productId: json["product_id"],
//         quantity: json["quantity"],
//         price: json["price"],
//         noOfItem: json["no_of_item"],
//         activeFlag: json["active_flag"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         product: Product.fromJson(json["product"]),
//         users: Users.fromJson(json["users"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "user_id": userId,
//         "product_id": productId,
//         "quantity": quantity,
//         "price": price,
//         "no_of_item": noOfItem,
//         "active_flag": activeFlag,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "product": product.toJson(),
//         "users": users.toJson(),
//     };
// }

// class Product {
//     Product({
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
//         required this.customerPriceAttributes,
//         required this.retailerPriceAttributes,
//         required this.district,
//         required this.productNew,
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
//     ErPriceAttributes customerPriceAttributes;
//     ErPriceAttributes retailerPriceAttributes;
//     String district;
//     String productNew;
//     DateTime createdAt;
//     DateTime updatedAt;
//     dynamic rating;

//     factory Product.fromJson(Map<String, dynamic> json) => Product(
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
//         customerPriceAttributes: ErPriceAttributes.fromJson(json["customer_price_attributes"]),
//         retailerPriceAttributes: ErPriceAttributes.fromJson(json["retailer_price_attributes"]),
//         district: json["district"],
//         productNew: json["new"],
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
//         "customer_price_attributes": customerPriceAttributes.toJson(),
//         "retailer_price_attributes": retailerPriceAttributes.toJson(),
//         "district": district,
//         "new": productNew,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "rating": rating,
//     };
// }

// class ErPriceAttributes {
//     ErPriceAttributes({
//         required this.the50Ml,
//         required this.the100Ml,
//         required this.the250Ml,
//         required this.the500Ml,
//         required this.the1Ltr,
//         required this.the5Ltr,
//         this.the1Kg,
//         this.the2Kg,
//         this.the4Kg,
//         this.the12Gms,
//         this.the40Gms,
//         this.the100Gms,
//         this.the500Gms,
//     });

//     String the50Ml;
//     String the100Ml;
//     String the250Ml;
//     String the500Ml;
//     String the1Ltr;
//     String the5Ltr;
//     dynamic the1Kg;
//     dynamic the2Kg;
//     dynamic the4Kg;
//     dynamic the12Gms;
//     dynamic the40Gms;
//     dynamic the100Gms;
//     dynamic the500Gms;

//     factory ErPriceAttributes.fromJson(Map<String, dynamic> json) => ErPriceAttributes(
//         the50Ml: json["50ml"],
//         the100Ml: json["100ml"],
//         the250Ml: json["250ml"],
//         the500Ml: json["500ml"],
//         the1Ltr: json["1LTR"],
//         the5Ltr: json["5LTR"],
//         the1Kg: json["1kg"],
//         the2Kg: json["2kg"],
//         the4Kg: json["4kg"],
//         the12Gms: json["12gms"],
//         the40Gms: json["40gms"],
//         the100Gms: json["100gms"],
//         the500Gms: json["500gms"],
//     );

//     Map<String, dynamic> toJson() => {
//         "50ml": the50Ml,
//         "100ml": the100Ml,
//         "250ml": the250Ml,
//         "500ml": the500Ml,
//         "1LTR": the1Ltr,
//         "5LTR": the5Ltr,
//         "1kg": the1Kg,
//         "2kg": the2Kg,
//         "4kg": the4Kg,
//         "12gms": the12Gms,
//         "40gms": the40Gms,
//         "100gms": the100Gms,
//         "500gms": the500Gms,
//     };
// }

// class Users {
//     Users({
//         required this.id,
//         this.roleId,
//         required this.name,
//         this.companyName,
//         this.dateOfBirth,
//         required this.email,
//         required this.avatar,
//         required this.mobileNumber,
//         this.photo,
//         this.aadharNo,
//         required this.otpCode,
//         required this.userType,
//         this.emailVerified,
//         required this.password,
//         required this.address,
//         required this.district,
//         this.gstNumber,
//         required this.mobileVerification,
//         required this.status,
//         required this.role,
//         required this.approved,
//         required this.accessToken,
//         required this.createdAt,
//         required this.updatedAt,
//         this.deletedAt,
//     });

//     int id;
//     dynamic roleId;
//     String name;
//     dynamic companyName;
//     dynamic dateOfBirth;
//     String email;
//     String avatar;
//     String mobileNumber;
//     dynamic photo;
//     dynamic aadharNo;
//     String otpCode;
//     String userType;
//     dynamic emailVerified;
//     String password;
//     String address;
//     String district;
//     dynamic gstNumber;
//     String mobileVerification;
//     String status;
//     String role;
//     String approved;
//     String accessToken;
//     DateTime createdAt;
//     DateTime updatedAt;
//     dynamic deletedAt;

//     factory Users.fromJson(Map<String, dynamic> json) => Users(
//         id: json["id"],
//         roleId: json["role_id"],
//         name: json["name"],
//         companyName: json["company_name"],
//         dateOfBirth: json["date_of_birth"],
//         email: json["email"],
//         avatar: json["avatar"],
//         mobileNumber: json["mobile_number"],
//         photo: json["photo"],
//         aadharNo: json["aadhar_no"],
//         otpCode: json["otp_code"],
//         userType: json["user_type"],
//         emailVerified: json["email_verified"],
//         password: json["password"],
//         address: json["address"],
//         district: json["district"],
//         gstNumber: json["gst_number"],
//         mobileVerification: json["mobile_verification"],
//         status: json["status"],
//         role: json["role"],
//         approved: json["approved"],
//         accessToken: json["access_token"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         deletedAt: json["deleted_at"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "role_id": roleId,
//         "name": name,
//         "company_name": companyName,
//         "date_of_birth": dateOfBirth,
//         "email": email,
//         "avatar": avatar,
//         "mobile_number": mobileNumber,
//         "photo": photo,
//         "aadhar_no": aadharNo,
//         "otp_code": otpCode,
//         "user_type": userType,
//         "email_verified": emailVerified,
//         "password": password,
//         "address": address,
//         "district": district,
//         "gst_number": gstNumber,
//         "mobile_verification": mobileVerification,
//         "status": status,
//         "role": role,
//         "approved": approved,
//         "access_token": accessToken,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "deleted_at": deletedAt,
//     };
// }
