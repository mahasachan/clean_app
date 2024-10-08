import 'package:clean_app/features/products/presentation/pages/product.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const Products());
      case '/theme':
        return _materialRoute(const Products());
      default:
        return _materialRoute(const Products());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
