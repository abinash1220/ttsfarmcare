// To parse this JSON data, do
//
//     final verifyOtp = verifyOtpFromJson(jsonString);

import 'dart:convert';

VerifyOtp verifyOtpFromJson(String str) => VerifyOtp.fromJson(json.decode(str));

String verifyOtpToJson(VerifyOtp data) => json.encode(data.toJson());

class VerifyOtp {
    VerifyOtp({
        required this.user,
    });

    UserVerify user;

    factory VerifyOtp.fromJson(Map<String, dynamic> json) => VerifyOtp(
       
        user: UserVerify.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
    };
}

class UserVerify {
    UserVerify({
        required this.id,
    });

    int id;
    
    factory UserVerify.fromJson(Map<String, dynamic> json) => UserVerify(
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
    };
}
