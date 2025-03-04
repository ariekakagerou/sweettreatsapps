import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produk Kue'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Kategori Kue
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Kategori Kue',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
              ),
            ),
            Container(
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(categoryName: 'Ulang Tahun', icon: Icons.cake),
                  CategoryCard(categoryName: 'Valentine', icon: Icons.favorite),
                  CategoryCard(categoryName: 'Hari Raya', icon: Icons.calendar_today),
                  CategoryCard(categoryName: 'Pernikahan', icon: Icons.cake),
                  CategoryCard(categoryName: 'Kue Kering', icon: Icons.cookie),
                ],
              ),
            ),

            // Rekomendasi Kue Baru
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Rekomendasi Kue Baru',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Jumlah produk baru
                itemBuilder: (context, index) {
                  return ProductCard(
                    productName: 'Kue Baru $index',
                    price: '\$12',
                    imagePath: 'assets/cake_placeholder.jpg', // Ganti dengan gambar produk
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Kotak
                    ),
                  );
                },
              ),
            ),

            // Kue yang Paling Banyak Dicari
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Kue yang Paling Banyak Dicari',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Jumlah produk populer
                itemBuilder: (context, index) {
                  return ProductCard(
                    productName: 'Kue Populer $index',
                    price: '\$15',
                    imagePath: 'assets/cake_placeholder.jpg', // Ganti dengan gambar produk
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Kotak
                    ),
                  );
                },
              ),
            ),

            // Toko Kue Terdekat
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Toko Kue Terdekat',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Jumlah toko terdekat
                itemBuilder: (context, index) {
                  return StoreCard(
                    storeName: 'Toko Kue $index',
                    location: 'Lokasi $index',
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Kotak
                    ),
                  );
                },
              ),
            ),

            // Kue untuk Acara Khusus
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Kue untuk Acara Khusus',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(categoryName: 'Ulang Tahun', icon: Icons.cake),
                  CategoryCard(categoryName: 'Valentine', icon: Icons.favorite),
                  CategoryCard(categoryName: 'Hari Raya', icon: Icons.calendar_today),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryName;
  final IconData icon;

  const CategoryCard({super.key, required this.categoryName, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink[50],
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.pink),
            const SizedBox(height: 8),
            Text(
              categoryName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final String price;
  final String imagePath;
  final RoundedRectangleBorder shape;

  const ProductCard({super.key, required this.productName, required this.price, required this.imagePath, required this.shape});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman detail produk
      },
      child: Card(
        elevation: 4,
        shape: shape,
        child: Column(
          children: [
            Image.asset(
              imagePath, // Gambar produk
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    price,
                    style: const TextStyle(fontSize: 16, color: Colors.pink),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoreCard extends StatelessWidget {
  final String storeName;
  final String location;
  final RoundedRectangleBorder shape;

  const StoreCard({super.key, required this.storeName, required this.location, required this.shape});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: shape,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Icon(Icons.store, size: 40, color: Colors.pink),
            const SizedBox(height: 8),
            Text(
              storeName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              location,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
