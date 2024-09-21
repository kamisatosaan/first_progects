import 'package:flutter/material.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  List<String> imageUrls = [
    'https://i1.sndcdn.com/artworks-mfc9N5eUn6ys6WXH-8iPPqw-t500x500.jpg',
    'https://example.com/image2.jpg',
    'https://example.com/image3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Галерея!'),
      ),
      body: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Image.network(
              imageUrls[index],
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
