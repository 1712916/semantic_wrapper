import 'package:flutter/material.dart';

import 'widget/auto_semantic_wrapper.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Page'),
      ),
      body: Column(
        children: [
          Text('This is a product page'),
          ProductCard(),
        ],
      ),
    ).wrapWithAutoSemantic();
  }
}

class ProductCard extends StatelessWidget with CWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      semanticContainer: false,
      child: Row(
        children: [
          Icon(
            Icons.image,
            size: 80,
            semanticLabel: 'Product Image',
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Product Name', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Product Description', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    ).wrapWithAutoSemantic();
  }
}
