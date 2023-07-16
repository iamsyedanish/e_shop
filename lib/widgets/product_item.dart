import 'package:e_shop/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(
      {super.key,
      required this.id,
      required this.title,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey, width: 0.5)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading:
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            title: Text(title),
            trailing: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(
                context, ProductDetailScreen.routeName,
                arguments: id),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
