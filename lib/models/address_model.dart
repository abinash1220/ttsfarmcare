// To parse this JSON data, do
//
//     final getAddress = getAddressFromJson(jsonString);

import 'dart:convert';

List<GetAddress> getAddressFromJson(String str) => List<GetAddress>.from(json.decode(str).map((x) => GetAddress.fromJson(x)));

String getAddressToJson(List<GetAddress> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAddress {
    GetAddress({
        required this.id,
        required this.userId,
        required this.location,
        required this.type,
        required this.street,
        required this.area,
        required this.landmark,
        required this.city,
        required this.state,
        required this.pincode,
        required this.activeStatus,
        required this.createdAt,
        required this.updatedAt,
        required this.users,
    });

    int id;
    String userId;
    String location;
    String type;
    String street;
    String area;
    String landmark;
    String city;
    String state;
    String pincode;
    String activeStatus;
    DateTime createdAt;
    DateTime updatedAt;
    Users users;

    factory GetAddress.fromJson(Map<String, dynamic> json) => GetAddress(
        id: json["id"],
        userId: json["user_id"],
        location: json["location"] == null ? null : json["location"],
        type: json["type"],
        street:json["street"],
        area: json["area"],
        landmark: json["landmark"],
        city: json["city"],
        state: json["state"],
        pincode: json["pincode"],
        activeStatus: json["active_status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        users: Users.fromJson(json["users"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "location": location == null ? null : location,
        "type": type,
        "street":street,
        "area": area,
        "landmark": landmark,
        "city": city,
        "state": state,
        "pincode": pincode,
        "active_status": activeStatus,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "users": users.toJson(),
    };
}



class Users {
    Users({
        required this.id,
        required this.name,
        required this.companyName,
        this.dateOfBirth,
        required this.email,
        required this.mobileNumber,
        this.photo,
        this.aadharNo,
        required this.otpCode,
        required this.userType,
        this.emailVerifiedAt,
        required this.address,
        required this.district,
        required this.gstNumber,
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
    String companyName;
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
    String gstNumber;
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
        companyName:json["company_name"],
        dateOfBirth: json["date_of_birth"],
        email: json["email"],
        mobileNumber: json["mobile_number"],
        photo: json["photo"],
        aadharNo: json["aadhar_no"],
        otpCode: json["otp_code"],
        userType: json["user_type"],
        emailVerifiedAt: json["email_verified_at"],
        address:json["address"],
        district:json["district"],
        gstNumber: json["gst_number"],
        mobileVerification: json["mobile_verification"],
        status:json["status"],
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
        "email":email,
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
        "status":status,
        "role": role,
        "access_token": accessToken,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}

