// To parse this JSON data, do
//
//     final completeOrder = completeOrderFromJson(jsonString);

import 'dart:convert';

CompleteOrder completeOrderFromJson(String str) => CompleteOrder.fromJson(json.decode(str));

String completeOrderToJson(CompleteOrder data) => json.encode(data.toJson());

class CompleteOrder {
    CompleteOrder({
        required this.message,
        required this.orders,
    });

    String message;
    Orders orders;

    factory CompleteOrder.fromJson(Map<String, dynamic> json) => CompleteOrder(
        message: json["message"],
        orders: Orders.fromJson(json["orders"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "orders": orders.toJson(),
    };
}

class Orders {
    Orders({
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
    List<FinishOrderData> data;
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

    factory Orders.fromJson(Map<String, dynamic> json) => Orders(
        currentPage: json["current_page"],
        data: List<FinishOrderData>.from(json["data"].map((x) => FinishOrderData.fromJson(x))),
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

class FinishOrderData {
    FinishOrderData({
        required this.id,
        required this.userId,
        required this.productId,
        required this.noOfItem,
        this.orderNo,
        required this.subTotal,
        required this.amount,
        required this.currency,
        this.notes,
        required this.status,
        required this.paymentId,
        required this.addressId,
        this.paymentStatus,
        required this.activeFlag,
        required this.cartId,
        required this.txnStatus,
        this.txnTime,
        this.txnMsg,
        this.txnId,
        this.txnPayMode,
        this.serviceCharge,
        required this.fundTransferFee,
        this.gst,
        required this.role,
        required this.createdAt,
        required this.updatedAt,
        required this.users,
        required this.product,
        this.rating,
    });

    int id;
    String userId;
    String productId;
    String noOfItem;
    dynamic orderNo;
    String subTotal;
    String amount;
    String currency;
    dynamic notes;
    String status;
    String paymentId;
    String addressId;
    dynamic paymentStatus;
    String activeFlag;
    String cartId;
    String txnStatus;
    dynamic txnTime;
    dynamic txnMsg;
    dynamic txnId;
    dynamic txnPayMode;
    dynamic serviceCharge;
    String fundTransferFee;
    dynamic gst;
    String role;
    DateTime createdAt;
    DateTime updatedAt;
    Users users;
    Product product;
    dynamic rating;

    factory FinishOrderData.fromJson(Map<String, dynamic> json) => FinishOrderData(
        id: json["id"],
        userId: json["user_id"],
        productId: json["product_id"],
        noOfItem: json["no_of_item"],
        orderNo: json["order_no"],
        subTotal: json["sub_total"],
        amount: json["amount"],
        currency: json["currency"],
        notes: json["notes"],
        status: json["status"],
        paymentId: json["payment_id"],
        addressId: json["address_id"],
        paymentStatus: json["payment_status"],
        activeFlag: json["active_flag"],
        cartId: json["cart_id"],
        txnStatus: json["txn_status"],
        txnTime: json["txn_time"],
        txnMsg: json["txn_msg"],
        txnId: json["txn_id"],
        txnPayMode: json["txn_pay_mode"],
        serviceCharge: json["service_charge"],
        fundTransferFee: json["fund_transfer_fee"],
        gst: json["gst"],
        role: json["role"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        users: Users.fromJson(json["users"]),
        product: Product.fromJson(json["product"]),
        rating: json["rating"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "product_id": productId,
        "no_of_item": noOfItem,
        "order_no": orderNo,
        "sub_total": subTotal,
        "amount": amount,
        "currency": currency,
        "notes": notes,
        "status": status,
        "payment_id": paymentId,
        "address_id": addressId,
        "payment_status": paymentStatus,
        "active_flag": activeFlag,
        "cart_id": cartId,
        "txn_status": txnStatus,
        "txn_time": txnTime,
        "txn_msg": txnMsg,
        "txn_id": txnId,
        "txn_pay_mode": txnPayMode,
        "service_charge": serviceCharge,
        "fund_transfer_fee": fundTransferFee,
        "gst": gst,
        "role": role,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "users": users.toJson(),
        "product": product.toJson(),
        "rating": rating,
    };
}

class Product {
    Product({
        required this.id,
        required this.name,
        required this.title,
        required this.priceCustomer,
        this.priceRetailer,
        required this.quantity,
        required this.image1,
        required this.image2,
        required this.shortDescription,
        required this.detailDescription,
        required this.disclaimer,
        required this.categoryId,
        required this.status,
        required this.customerPriceAttributes,
        required this.retailerPriceAttributes,
        required this.district,
        required this.productNew,
        required this.createdAt,
        required this.updatedAt,
        this.rating,
    });

    int id;
    String name;
    String title;
    String priceCustomer;
    dynamic priceRetailer;
    String quantity;
    String image1;
    String image2;
    String shortDescription;
    String detailDescription;
    String disclaimer;
    String categoryId;
    String status;
    ErPriceAttributes customerPriceAttributes;
    ErPriceAttributes retailerPriceAttributes;
    String district;
    String productNew;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic rating;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        title: json["title"],
        priceCustomer: json["price_customer"],
        priceRetailer: json["price_retailer"],
        quantity: json["quantity"],
        image1: json["image1"],
        image2: json["image2"],
        shortDescription: json["short_description"],
        detailDescription: json["detail_description"],
        disclaimer: json["disclaimer"],
        categoryId: json["category_id"],
        status: json["status"],
        customerPriceAttributes: ErPriceAttributes.fromJson(json["customer_price_attributes"]),
        retailerPriceAttributes: ErPriceAttributes.fromJson(json["retailer_price_attributes"]),
        district: json["district"],
        productNew: json["new"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        rating: json["rating"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "title": title,
        "price_customer": priceCustomer,
        "price_retailer": priceRetailer,
        "quantity": quantity,
        "image1": image1,
        "image2": image2,
        "short_description": shortDescription,
        "detail_description": detailDescription,
        "disclaimer": disclaimer,
        "category_id": categoryId,
        "status": status,
        "customer_price_attributes": customerPriceAttributes.toJson(),
        "retailer_price_attributes": retailerPriceAttributes.toJson(),
        "district": district,
        "new": productNew,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "rating": rating,
    };
}

class ErPriceAttributes {
    ErPriceAttributes({
        required this.the50Ml,
        this.the100Ml,
        this.the250Ml,
        this.the500Ml,
        required this.the1Ltr,
        this.the5Ltr,
        required this.the1Kg,
        this.the2Kg,
        this.the4Kg,
        this.the12Gms,
        this.the40Gms,
        this.the100Gms,
        this.the500Gms,
    });

    String the50Ml;
    dynamic the100Ml;
    dynamic the250Ml;
    dynamic the500Ml;
    String the1Ltr;
    dynamic the5Ltr;
    String the1Kg;
    dynamic the2Kg;
    dynamic the4Kg;
    dynamic the12Gms;
    dynamic the40Gms;
    dynamic the100Gms;
    dynamic the500Gms;

    factory ErPriceAttributes.fromJson(Map<String, dynamic> json) => ErPriceAttributes(
        the50Ml: json["50ml"],
        the100Ml: json["100ml"],
        the250Ml: json["250ml"],
        the500Ml: json["500ml"],
        the1Ltr: json["1LTR"],
        the5Ltr: json["5LTR"],
        the1Kg: json["1kg"],
        the2Kg: json["2kg"],
        the4Kg: json["4kg"],
        the12Gms: json["12gms"],
        the40Gms: json["40gms"],
        the100Gms: json["100gms"],
        the500Gms: json["500gms"],
    );

    Map<String, dynamic> toJson() => {
        "50ml": the50Ml,
        "100ml": the100Ml,
        "250ml": the250Ml,
        "500ml": the500Ml,
        "1LTR": the1Ltr,
        "5LTR": the5Ltr,
        "1kg": the1Kg,
        "2kg": the2Kg,
        "4kg": the4Kg,
        "12gms": the12Gms,
        "40gms": the40Gms,
        "100gms": the100Gms,
        "500gms": the500Gms,
    };
}

class Users {
    Users({
        required this.id,
        this.roleId,
        required this.name,
        this.companyName,
        this.dateOfBirth,
        required this.email,
        required this.avatar,
        required this.mobileNumber,
        this.photo,
        this.aadharNo,
        required this.otpCode,
        required this.userType,
        this.emailVerified,
        required this.password,
        required this.address,
        required this.district,
        this.gstNumber,
        required this.mobileVerification,
        required this.status,
        required this.role,
        required this.approved,
        required this.accessToken,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
    });

    int id;
    dynamic roleId;
    String name;
    dynamic companyName;
    dynamic dateOfBirth;
    String email;
    String avatar;
    String mobileNumber;
    dynamic photo;
    dynamic aadharNo;
    String otpCode;
    String userType;
    dynamic emailVerified;
    String password;
    String address;
    String district;
    dynamic gstNumber;
    String mobileVerification;
    String status;
    String role;
    String approved;
    String accessToken;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        roleId: json["role_id"],
        name: json["name"],
        companyName: json["company_name"],
        dateOfBirth: json["date_of_birth"],
        email: json["email"],
        avatar: json["avatar"],
        mobileNumber: json["mobile_number"],
        photo: json["photo"],
        aadharNo: json["aadhar_no"],
        otpCode: json["otp_code"],
        userType: json["user_type"],
        emailVerified: json["email_verified"],
        password: json["password"],
        address: json["address"],
        district: json["district"],
        gstNumber: json["gst_number"],
        mobileVerification: json["mobile_verification"],
        status: json["status"],
        role: json["role"],
        approved: json["approved"],
        accessToken: json["access_token"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "role_id": roleId,
        "name": name,
        "company_name": companyName,
        "date_of_birth": dateOfBirth,
        "email": email,
        "avatar": avatar,
        "mobile_number": mobileNumber,
        "photo": photo,
        "aadhar_no": aadharNo,
        "otp_code": otpCode,
        "user_type": userType,
        "email_verified": emailVerified,
        "password": password,
        "address": address,
        "district": district,
        "gst_number": gstNumber,
        "mobile_verification": mobileVerification,
        "status": status,
        "role": role,
        "approved": approved,
        "access_token": accessToken,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}

