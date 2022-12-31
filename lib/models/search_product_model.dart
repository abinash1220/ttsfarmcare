// To parse this JSON data, do
//
//     final searchProduct = searchProductFromJson(jsonString);

import 'dart:convert';

SearchProduct searchProductFromJson(String str) => SearchProduct.fromJson(json.decode(str));


class SearchProduct {
    SearchProduct({
        required this.message,
        required this.product,
    });

    String message;
    List<Search> product;

    factory SearchProduct.fromJson(Map<String, dynamic> json) => SearchProduct(
        message: json["message"],
        product: List<Search>.from(json["product"].map((x) => Search.fromJson(x))),
    );

    // Map<String, dynamic> toJson() => {
    //     "message": message,
    //     "product": List<dynamic>.from(product.map((x) => x.toJson())),
    // };
}

class Search {
    Search({
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
        required this.district,
        required this.productNew,
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
    String district;
    String productNew;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic rating;

    factory Search.fromJson(Map<String, dynamic> json) => Search(
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
        customerPriceAttributes: getPriceList(json["customer_price_attributes"]),
        retailerPriceAttributes: getPriceList(json["retailer_price_attributes"]),
        district: json["district"],
        productNew: json["new"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        rating: json["rating"],
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
    //     "new": productNew,
    //     "created_at": createdAt.toIso8601String(),
    //     "updated_at": updatedAt.toIso8601String(),
    //     "rating": rating,
    // };
}


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
