import 'package:flutter/material.dart';

import '../constants/dummy_product.dart';
import '../widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Shop"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return ProductItem(
            id: DUMMY_PRODUCTS[index].id,
            title: DUMMY_PRODUCTS[index].title,
            imageUrl: DUMMY_PRODUCTS[index].imageUrl,
          );
        },
        itemCount: DUMMY_PRODUCTS.length,
      ),
    );
  }
}
