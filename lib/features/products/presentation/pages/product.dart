import 'package:clean_app/features/products/presentation/bloc/product/remote/remote_product_bloc.dart';
import 'package:clean_app/features/products/presentation/bloc/product/remote/remote_product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(context),
      body: _buildBody(),
    );
  }

  BlocBuilder<RemoteProductBloc, RemoteProductState> _buildBody() {
    return BlocBuilder<RemoteProductBloc, RemoteProductState>(
      builder: (_, state) {
        if (state is RemoteProductsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is RemoteProductsError) {
          return const Center(
            child: Icon(Icons.refresh),
          );
        }
        if (state is RemoteProductsDone) {
          return ListView.builder(
            itemCount: state.products!.length,
            itemBuilder: (_, index) {
              final product = state.products![index];
              return ListTile(
                title: Text(product.productName ?? ''),
                subtitle: Text(product.description ?? ''),
              );
            },
          );
        }
        return const SizedBox();
      },
    );
  }

  AppBar _buildAppbar(BuildContext context) {
    return AppBar(
      title: const Text('Products'),
      actions: [
        IconButton(
          onPressed: () => _onThemePressed(context),
          icon: const Icon(Icons.palette),
        ),
      ],
    );
  }

  void _onThemePressed(BuildContext context) {
    Navigator.of(context).pushNamed('/theme');
  }
}
