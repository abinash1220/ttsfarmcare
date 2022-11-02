import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
    Products({
        required this.currentPage,
        required this.data,
        required this.firstPageUrl,
        required this.from,
        required this.lastPage,
        required this.lastPageUrl,
        required this.nextPageUrl,
        required this.path,
        required this.perPage,
        this.prevPageUrl,
        required this.to,
        required this.total,
    });

    int currentPage;
    List<ProductData> data;
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

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        currentPage: json["current_page"],
        data: List<ProductData>.from(json["data"].map((x) => ProductData.fromJson(x))),
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

class ProductData {
    ProductData({
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
        required this.rating,
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
    int categoryId;
    String createdAt;
    String updatedAt;
    dynamic rating;

    factory ProductData.fromJson(Map<String, dynamic> json) => ProductData(
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
