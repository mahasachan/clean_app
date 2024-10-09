import 'package:clean_app/config/routes/routes.dart';
import 'package:clean_app/features/products/presentation/bloc/product/remote/remote_product_bloc.dart';
import 'package:clean_app/features/products/presentation/bloc/product/remote/remote_product_event.dart';
import 'package:clean_app/features/products/presentation/pages/product.dart';
import 'package:clean_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await initializaDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Products(),
      onGenerateRoute: AppRoutes.onGenerateRoutes,
    );
  }
}
