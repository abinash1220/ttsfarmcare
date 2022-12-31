// To parse this JSON data, do
//
//     final allProducts = allProductsFromJson(jsonString);

import 'dart:convert';

AllProducts allProductsFromJson(String str) => AllProducts.fromJson(json.decode(str));

// String allProductsToJson(AllProducts data) => json.encode(data.toJson());

class AllProducts {
    AllProducts({
       // required this.currentPage,
        required this.data,
        // required this.firstPageUrl,
        // required this.from,
        // required this.lastPage,
        // required this.lastPageUrl,
        // this.nextPageUrl,
        // required this.path,
        // required this.perPage,
        // this.prevPageUrl,
        // required this.to,
        // required this.total,
    });

    //int currentPage;
    List<Products> data;
    // String firstPageUrl;
    // int from;
    // int lastPage;
    // String lastPageUrl;
    // dynamic nextPageUrl;
    // String path;
    // int perPage;
    // dynamic prevPageUrl;
    // int to;
    // int total;

    factory AllProducts.fromJson(Map<String, dynamic> json) => AllProducts(
        //currentPage: json["current_page"] ?? 1,
        data: List<Products>.from(json["data"].map((x) => Products.fromJson(x))),
        // firstPageUrl: json["first_page_url"] ?? "",
        // from: json["from"] ?? 1,
        // lastPage: json["last_page"] ?? 1,
        // lastPageUrl: json["last_page_url"],
        // nextPageUrl: json["next_page_url"],
        // path: json["path"],
        // perPage: json["per_page"],
        // prevPageUrl: json["prev_page_url"],
        // to: json["to"],
        // total: json["total"],
    );

    // Map<String, dynamic> toJson() => {
    //     "current_page": currentPage,
    //     "data": List<dynamic>.from(data.map((x) => x.toJson())),
    //     "first_page_url": firstPageUrl,
    //     "from": from,
    //     "last_page": lastPage,
    //     "last_page_url": lastPageUrl,
    //     "links": List<dynamic>.from(links.map((x) => x.toJson())),
    //     "next_page_url": nextPageUrl,
    //     "path": path,
    //     "per_page": perPage,
    //     "prev_page_url": prevPageUrl,
    //     "to": to,
    //     "total": total,
    // };
}

class Products {
    Products({
        required this.id,
        required this.name,
        required this.title,
        this.priceCustomer,
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
        required this.datumNew,
        required this.createdAt,
        required this.updatedAt,
        this.rating,
    });

    int id;
    String name;
    String title;
    dynamic priceCustomer;
    dynamic priceRetailer;
    String quantity;
    String image1;
    String image2;
    String shortDescription;
    String detailDescription;
    String disclaimer;
    String categoryId;
    String status;
    List<QuantityModel> customerPriceAttributes;
    List<QuantityModel> retailerPriceAttributes;
    String datumNew;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic rating;

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"] ?? 1,
        name: json["name"] ?? "",
        title: json["title"] ?? "",
        priceCustomer: json["price_customer"]?? "",
        priceRetailer: json["price_retailer"] ?? "",
        quantity: json["quantity"]?? "",
        image1: json["image1"]?? "",
        image2: json["image2"]?? "",
        shortDescription: json["short_description"]?? "",
        detailDescription: json["detail_description"]?? "",
        disclaimer: json["disclaimer"] ?? "",
        categoryId: json["category_id"] ?? "",
        status: json["status"] ?? "",
        customerPriceAttributes: getPriceList(json["customer_price_attributes"]),
        retailerPriceAttributes: getPriceList(json["retailer_price_attributes"]),
        datumNew: json["new"] ?? "",
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        rating: json["rating"] ?? "",
    );

    // Map<String, dynamic> toJson() => {
    //     "id": id,
    //     "name": name,
    //     "title": title,
    //     "price_customer": priceCustomer,
    //     "price_retailer": priceRetailer == null ? null : priceRetailer,
    //     "quantity": quantity,
    //     "image1": image1,
    //     "image2": image2,
    //     "short_description": shortDescription,
    //     "detail_description": detailDescription,
    //     "disclaimer": disclaimer,
    //     "category_id": categoryId,
    //     "status": status,
    //     "customer_price_attributes": Map.from(customerPriceAttributes).map((k, v) => MapEntry<String, dynamic>(k, v == null ? null : v)),
    //     "retailer_price_attributes": Map.from(retailerPriceAttributes).map((k, v) => MapEntry<String, dynamic>(k, v == null ? null : v)),
    //     "district": district,
    //     "new": datumNew,
    //     "created_at": createdAt.toIso8601String(),
    //     "updated_at": updatedAt.toIso8601String(),
    //     "rating": rating,
    // };
}

// class Link {
//     Link({
//         required this.url,
//         required this.label,
//         required this.active,
//     });

//     String url;
//     String label;
//     bool active;

//     factory Link.fromJson(Map<String, dynamic> json) => Link(
//         url: json["url"] == null ? null : json["url"],
//         label: json["label"],
//         active: json["active"],
//     );

//     Map<String, dynamic> toJson() => {
//         "url": url == null ? null : url,
//         "label": label,
//         "active": active,
//     };
// }


   List<QuantityModel> getPriceList(var response) {
     List<QuantityModel> quanityList = [];
  
    List<MapEntry> list = response.entries.toList();
  
    for(int i = 0; i < list.length;i++){
      
      if(list[i].value != null){
        
        QuantityModel qtyModel  = QuantityModel(
          quantity:list[i].key,
          price: list[i].value);
          quanityList.add(qtyModel);
       }
      
    
    }

    return quanityList;
   }



class QuantityModel {
  String quantity;
  String price;
  
  QuantityModel({
   required this.price,
    required this.quantity
  });
}
