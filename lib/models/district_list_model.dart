// To parse this JSON data, do
//
//     final districtList = districtListFromJson(jsonString);

import 'dart:convert';

List<DistrictList> districtListFromJson(List<dynamic> str) => List<DistrictList>.from(str.map((x) => DistrictList.fromJson(x)));

String districtListToJson(List<DistrictList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DistrictList {
    DistrictList({
        required this.id,
        required this.name,
        required this.code,
    });

    int id;
    String name;
    String code;

    factory DistrictList.fromJson(Map<String, dynamic> json) => DistrictList(
        id: json["id"],
        name: json["name"],
        code: json["code"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
    };
}
