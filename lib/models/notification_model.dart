// To parse this JSON data, do
//
//     final notification = notificationFromJson(jsonString);

import 'dart:convert';

Notification notificationFromJson(String str) => Notification.fromJson(json.decode(str));

String notificationToJson(Notification data) => json.encode(data.toJson());

class Notification {
    Notification({
        required this.message,
        required this.notification,
    });

    String message;
    NotificationClass notification;

    factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        message: json["message"],
        notification: NotificationClass.fromJson(json["notification"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "notification": notification.toJson(),
    };
}

class NotificationClass {
    NotificationClass({
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
    List<Notify> data;
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

    factory NotificationClass.fromJson(Map<String, dynamic> json) => NotificationClass(
        currentPage: json["current_page"],
        data: List<Notify>.from(json["data"].map((x) => Notify.fromJson(x))),
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

    Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
    };
}

class Notify {
    Notify({
        required this.id,
        required this.userId,
        required this.orderId,
        required this.message,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String userId;
    String orderId;
    String message;
    DateTime createdAt;
    DateTime updatedAt;

    factory Notify.fromJson(Map<String, dynamic> json) => Notify(
        id: json["id"],
        userId: json["user_id"],
        orderId: json["order_id"],
        message: json["message"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "order_id": orderId,
        "message": message,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
