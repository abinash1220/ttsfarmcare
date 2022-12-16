// // To parse this JSON data, do
// //
// //     final verifyOtp = verifyOtpFromJson(jsonString);

// import 'dart:convert';

// VerifyOtp verifyOtpFromJson(String str) => VerifyOtp.fromJson(json.decode(str));

// String verifyOtpToJson(VerifyOtp data) => json.encode(data.toJson());

// class VerifyOtp {
//     VerifyOtp({
//         required this.message,
//         required this.status,
//         required this.user,
//     });

//     String message;
//     int status;
//     UserVerify user;

//     factory VerifyOtp.fromJson(Map<String, dynamic> json) => VerifyOtp(
//         message: json["message"],
//         status: json["status"],
//         user: UserVerify.fromJson(json["user"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "message": message,
//         "status": status,
//         "user": user.toJson(),
//     };
// }

// class UserVerify {
//     UserVerify({
//         required this.id,
//         required this.name,
//         required this.companyName,
//         this.dateOfBirth,
//         required this.email,
//         required this.mobileNumber,
//         this.photo,
//         this.aadharNo,
//         required this.otpCode,
//         required this.userType,
//         this.emailVerifiedAt,
//         required this.address,
//         required this.district,
//         required this.gstNumber,
//         required this.mobileVerification,
//         required this.status,
//         required this.role,
//         required this.accessToken,
//         required this.createdAt,
//         required this.updatedAt,
//         this.deletedAt,
//     });

//     int id;
//     String name;
//     dynamic companyName;
//     dynamic dateOfBirth;
//     String email;
//     String mobileNumber;
//     dynamic photo;
//     dynamic aadharNo;
//     String otpCode;
//     String userType;
//     dynamic emailVerifiedAt;
//     String address;
//     String district;
//     dynamic gstNumber;
//     dynamic mobileVerification;
//     String status;
//     String role;
//     String accessToken;
//     DateTime createdAt;
//     DateTime updatedAt;
//     dynamic deletedAt;

//     factory UserVerify.fromJson(Map<String, dynamic> json) => UserVerify(
//         id: json["id"],
//         name: json["name"],
//         companyName: json["company_name"],
//         dateOfBirth: json["date_of_birth"],
//         email: json["email"],
//         mobileNumber: json["mobile_number"],
//         photo: json["photo"],
//         aadharNo: json["aadhar_no"],
//         otpCode: json["otp_code"],
//         userType: json["user_type"],
//         emailVerifiedAt: json["email_verified_at"],
//         address: json["address"],
//         district: json["district"],
//         gstNumber: json["gst_number"],
//         mobileVerification: json["mobile_verification"],
//         status: json["status"],
//         role: json["role"],
//         accessToken: json["access_token"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         deletedAt: json["deleted_at"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "company_name": companyName,
//         "date_of_birth": dateOfBirth,
//         "email": email,
//         "mobile_number": mobileNumber,
//         "photo": photo,
//         "aadhar_no": aadharNo,
//         "otp_code": otpCode,
//         "user_type": userType,
//         "email_verified_at": emailVerifiedAt,
//         "address": address,
//         "district": district,
//         "gst_number": gstNumber,
//         "mobile_verification": mobileVerification,
//         "status": status,
//         "role": role,
//         "access_token": accessToken,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "deleted_at": deletedAt,
//     };
// }
