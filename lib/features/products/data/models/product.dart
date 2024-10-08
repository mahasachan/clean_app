import 'package:clean_app/features/products/domain/entities/product.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    super.id,
    super.productName,
    super.description,
    super.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] ?? "",
      productName: map['productName'] ?? "",
      description: map['description'] ?? "",
      price: map['price'] ?? 0.00,
    );
  }
}
