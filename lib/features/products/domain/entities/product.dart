import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String? id;
  final String? productName;
  final String? description;
  final double? price;

  const ProductEntity({
    this.id,
    this.productName,
    this.description,
    this.price,
  });

  @override
  List<Object?> get props {
    return [
      id,
      productName,
      description,
      price,
    ];
  }
}
