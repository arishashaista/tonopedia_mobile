import 'package:flutter/material.dart';
import 'package:tonopedia_mobile/models/product_entry.dart';
import 'package:tonopedia_mobile/screens/list_productentry.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailPage(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const ProductEntryPage()),
          ),
        ),
        title: const Text("Product Detail"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                product.fields.name,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Price: ${product.fields.price}",
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  product.fields.description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
