// // To parse this JSON data, do
// //
// //     final orderHistory = orderHistoryFromJson(jsonString);

// import 'dart:convert';

// OrderHistory orderHistoryFromJson(String str) => OrderHistory.fromJson(json.decode(str));

// String orderHistoryToJson(OrderHistory data) => json.encode(data.toJson());

// class OrderHistory {
//     OrderHistory({
//         required this.message,
//         required this.orders,
//     });

//     String message;
//     Orders orders;

//     factory OrderHistory.fromJson(Map<String, dynamic> json) => OrderHistory(
//         message: json["message"],
//         orders: Orders.fromJson(json["orders"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "message": message,
//         "orders": orders.toJson(),
//     };
// }

// class Orders {
//     Orders({
//         required this.currentPage,
//         required this.data,
//         required this.firstPageUrl,
//         required this.from,
//         required this.lastPage,
//         required this.lastPageUrl,
//         this.nextPageUrl,
//         required this.path,
//         required this.perPage,
//         this.prevPageUrl,
//         required this.to,
//         required this.total,
//     });

//     int currentPage;
//     List<OrderData> data;
//     String firstPageUrl;
//     int from;
//     int lastPage;
//     String lastPageUrl;
//     dynamic nextPageUrl;
//     String path;
//     int perPage;
//     dynamic prevPageUrl;
//     int to;
//     int total;

//     factory Orders.fromJson(Map<String, dynamic> json) => Orders(
//         currentPage: json["current_page"],
//         data: List<OrderData>.from(json["data"].map((x) => OrderData.fromJson(x))),
//         firstPageUrl: json["first_page_url"],
//         from: json["from"],
//         lastPage: json["last_page"],
//         lastPageUrl: json["last_page_url"],
//         nextPageUrl: json["next_page_url"],
//         path: json["path"],
//         perPage: json["per_page"],
//         prevPageUrl: json["prev_page_url"],
//         to: json["to"],
//         total: json["total"],
//     );

//     Map<String, dynamic> toJson() => {
//         "current_page": currentPage,
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//         "first_page_url": firstPageUrl,
//         "from": from,
//         "last_page": lastPage,
//         "last_page_url": lastPageUrl,
//         "next_page_url": nextPageUrl,
//         "path": path,
//         "per_page": perPage,
//         "prev_page_url": prevPageUrl,
//         "to": to,
//         "total": total,
//     };
// }

// class OrderData {
//     OrderData({
//         required this.id,
//         required this.userId,
//         required this.productId,
//         required this.no_of_item,
//         this.orderNo,
//         required this.subTotal,
//         required this.amount,
//         required this.currency,
//         this.notes,
//         required this.status,
//         required this.paymentId,
//         required this.addressId,
//         this.paymentStatus,
//         required this.activeFlag,
//         required this.txnStatus,
//         this.txnTime,
//         this.txnMsg,
//         this.txnId,
//         this.txnPayMode,
//         this.serviceCharge,
//         required this.fundTransferFee,
//         this.gst,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.users,
//         required this.product,
//         required this.rating,
//     });

//     int id;
//     String userId;
//     String productId;
//     String no_of_item;
//     dynamic orderNo;
//     String subTotal;
//     String amount;
//     String currency;
//     dynamic notes;
//     String status;
//     String paymentId;
//     String addressId;
//     dynamic paymentStatus;
//     String activeFlag;
//     String txnStatus;
//     dynamic txnTime;
//     dynamic txnMsg;
//     dynamic txnId;
//     dynamic txnPayMode;
//     dynamic serviceCharge;
//     String fundTransferFee;
//     dynamic gst;
//     DateTime createdAt;
//     DateTime updatedAt;
//     Users users;
//     Product product;
//     Rating rating;

//     factory OrderData.fromJson(Map<String, dynamic> json) => OrderData(
//         id: json["id"],
//         userId: json["user_id"],
//         productId: json["product_id"],
//         no_of_item: json["quantity"],
//         orderNo: json["order_no"],
//         subTotal: json["sub_total"],
//         amount: json["amount"],
//         currency: json["currency"],
//         notes: json["notes"],
//         status: json["status"],
//         paymentId: json["payment_id"],
//         addressId: json["address_id"],
//         paymentStatus: json["payment_status"],
//         activeFlag: json["active_flag"],
//         txnStatus: json["txn_status"],
//         txnTime: json["txn_time"],
//         txnMsg: json["txn_msg"],
//         txnId: json["txn_id"],
//         txnPayMode: json["txn_pay_mode"],
//         serviceCharge: json["service_charge"],
//         fundTransferFee: json["fund_transfer_fee"],
//         gst: json["gst"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         users: Users.fromJson(json["users"]),
//         product: Product.fromJson(json["product"] ??Product(
//           priceCustomer: ""
//           ,
//           priceRetailer: "",
//           categoryId: "",id: 1,image1: "",image2: "",createdAt: "",updatedAt: "",name: "",title: "",rating: "",shortDescription: "",  quantity: "",detailDescription: "",disclaimer: "",
//         ).toJson() ),
//         rating: Rating.fromJson(json["rating"] ?? Rating(id: 1, rating: "", review: "", productId: "", userId: "", createdAt: DateTime.now(), updatedAt: DateTime.now()).toJson()),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "user_id": userId,
//         "product_id": productId,
//         "quantity": no_of_item,
//         "order_no": orderNo,
//         "sub_total": subTotal,
//         "amount": amount,
//         "currency": currency,
//         "notes": notes,
//         "status": status,
//         "payment_id": paymentId,
//         "address_id": addressId,
//         "payment_status": paymentStatus,
//         "active_flag": activeFlag,
//         "txn_status": txnStatus,
//         "txn_time": txnTime,
//         "txn_msg": txnMsg,
//         "txn_id": txnId,
//         "txn_pay_mode": txnPayMode,
//         "service_charge": serviceCharge,
//         "fund_transfer_fee": fundTransferFee,
//         "gst": gst,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "users": users.toJson(),
//         "product": product == null ? null : product.toJson(),
//         "rating": rating == null ? null : rating.toJson(),
//     };
// }

// class Product {
//     Product({
//         required this.id,
//         required this.name,
//         required this.title,
//         this.priceCustomer,
//         this.priceRetailer,
//         required this.quantity,
//         required this.image1,
//         required this.image2,
//         required this.shortDescription,
//         required this.detailDescription,
//         required this.disclaimer,
//         required this.categoryId,
//         required this.createdAt,
//         required this.updatedAt,
//         dynamic this.rating,
//     });

//     int id;
//     String name;
//     String title;
//     dynamic priceCustomer;
//     dynamic priceRetailer;
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
//         createdAt: json["created_at"],
//         updatedAt: json["updated_at"],
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
//         "created_at": createdAt,
//         "updated_at": updatedAt,
//         "rating": rating,
//     };
// }

// class Rating {
//     Rating({
//         required this.id,
//         required this.rating,
//         required this.review,
//         required this.productId,
//         required this.userId,
//         required this.createdAt,
//         required this.updatedAt,
//     });

//     int id;
//     String rating;
//     String review;
//     String productId;
//     String userId;
//     DateTime createdAt;
//     DateTime updatedAt;

//     factory Rating.fromJson(Map<String, dynamic> json) => Rating(
//         id: json["id"],
//         rating: json["rating"]
//         ?? "",
//         review: json["review"] ?? "",
//         productId: json["product_id"],
//         userId: json["user_id"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "rating": rating,
//         "review": review == null ? null : review,
//         "product_id": productId,
//         "user_id": userId,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//     };
// }

// class Users {
//     Users({
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
//     String mobileVerification;
//     String status;
//     String role;
//     String accessToken;
//     DateTime createdAt;
//     DateTime updatedAt;
//     dynamic deletedAt;

//     factory Users.fromJson(Map<String, dynamic> json) => Users(
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
