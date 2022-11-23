// To parse this JSON data, do
//
//     final viewCart = viewCartFromJson(jsonString);

import 'dart:convert';

ViewCart viewCartFromJson(String str) => ViewCart.fromJson(json.decode(str));

String viewCartToJson(ViewCart data) => json.encode(data.toJson());

class ViewCart {
    ViewCart({
        required this.message,
        required this.cartdetails,
    });

    String message;
    List<Cartdetail> cartdetails;

    factory ViewCart.fromJson(Map<String, dynamic> json) => ViewCart(
        message: json["message"],
        cartdetails: List<Cartdetail>.from(json["cartdetails"].map((x) => Cartdetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "cartdetails": List<dynamic>.from(cartdetails.map((x) => x.toJson())),
    };
}

class Cartdetail {
    Cartdetail({
        required this.id,
        required this.userId,
        required this.productId,
        required this.quantity,
        required this.activeFlag,
        required this.createdAt,
        required this.updatedAt,
        required this.product,
        required this.users,
    });

    int id;
    String userId;
    String productId;
    String quantity;
    String activeFlag;
    DateTime createdAt;
    DateTime updatedAt;
    Product product;
    Users users;

    factory Cartdetail.fromJson(Map<String, dynamic> json) => Cartdetail(
        id: json["id"],
        userId: json["user_id"],
        productId: json["product_id"],
        quantity: json["quantity"],
        activeFlag: json["active_flag"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        product: Product.fromJson(json["product"]),
        users: Users.fromJson(json["users"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "product_id": productId,
        "quantity": quantity,
        "active_flag": activeFlag,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "product": product.toJson(),
        "users": users.toJson(),
    };
}

class Product {
    Product({
        required this.id,
        required this.name,
        required this.title,
        required this.price,
        required this.quantity,
        required this.image1,
        required this.image2,
        required this.shortDescription,
        required this.detailDescription,
        required this.disclaimer,
        required this.categoryId,
        required this.createdAt,
        required this.updatedAt,
        this.rating,
    });

    int id;
    String name;
    String title;
    String price;
    String quantity;
    String image1;
    String image2;
    String shortDescription;
    String detailDescription;
    String disclaimer;
    String categoryId;
    String createdAt;
    String updatedAt;
    dynamic rating;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        title: json["title"],
        price: json["price"],
        quantity: json["quantity"],
        image1: json["image1"],
        image2: json["image2"],
        shortDescription: json["short_description"],
        detailDescription: json["detail_description"],
        disclaimer: json["disclaimer"],
        categoryId: json["category_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        rating: json["rating"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "title": title,
        "price": price,
        "quantity": quantity,
        "image1": image1,
        "image2": image2,
        "short_description": shortDescription,
        "detail_description": detailDescription,
        "disclaimer": disclaimer,
        "category_id": categoryId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "rating": rating,
    };
}

class Users {
    Users({
        required this.id,
        required this.name,
        this.companyName,
        this.dateOfBirth,
        required this.email,
        required this.mobileNumber,
        this.photo,
        this.aadharNo,
        required this.otpCode,
        required this.userType,
        required this.emailVerifiedAt,
        required this.address,
        required this.district,
        this.gstNumber,
        required this.mobileVerification,
        required this.status,
        required this.role,
        required this.accessToken,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
    });

    int id;
    String name;
    dynamic companyName;
    dynamic dateOfBirth;
    String email;
    String mobileNumber;
    dynamic photo;
    dynamic aadharNo;
    String otpCode;
    String userType;
    dynamic emailVerifiedAt;
    String address;
    String district;
    dynamic gstNumber;
    String mobileVerification;
    String status;
    String role;
    String accessToken;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        name: json["name"],
        companyName: json["company_name"],
        dateOfBirth: json["date_of_birth"],
        email: json["email"],
        mobileNumber: json["mobile_number"],
        photo: json["photo"],
        aadharNo: json["aadhar_no"],
        otpCode: json["otp_code"],
        userType: json["user_type"],
        emailVerifiedAt: json["email_verified_at"],
        address: json["address"],
        district: json["district"],
        gstNumber: json["gst_number"],
        mobileVerification: json["mobile_verification"],
        status: json["status"],
        role: json["role"],
        accessToken: json["access_token"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "company_name": companyName,
        "date_of_birth": dateOfBirth,
        "email": email,
        "mobile_number": mobileNumber,
        "photo": photo,
        "aadhar_no": aadharNo,
        "otp_code": otpCode,
        "user_type": userType,
        "email_verified_at": emailVerifiedAt,
        "address": address,
        "district": district,
        "gst_number": gstNumber,
        "mobile_verification": mobileVerification,
        "status": status,
        "role": role,
        "access_token": accessToken,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}
