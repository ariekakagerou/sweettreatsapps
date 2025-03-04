import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sweet Treats'),
        backgroundColor: Colors.pinkAccent, // Warna sesuai dengan tema kue
        actions: [
          // Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: 200, // Lebar search bar
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari...',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.pink[200],
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigasi ke halaman keranjang belanja
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Navigasi ke halaman profil pengguna
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          // Gambar besar di atas
          Image.asset(
            'assets/cake_banner.jpg', // Gambar banner kue
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),

          // Saldo dan tombol
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      'ShopeePay',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    const Text(
                      'Rp1.000.000',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'SPayLater',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    const Text(
                      'Rp20.000.000',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Tombol-tombol
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Logika untuk isi saldo
                  },
                  child: const Text('Isi Saldo'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Logika untuk kode bayar
                  },
                  child: const Text('Kode Bayar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Logika untuk transfer
                  },
                  child: const Text('Transfer'),
                ),
              ],
            ),
          ),

          // Kategori Kue
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Kategori Kue',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
            ),
          ),
          // Daftar kategori kue
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(categoryName: 'Ulang Tahun', icon: Icons.cake),
                CategoryCard(categoryName: 'Pernikahan', icon: Icons.favorite),
                CategoryCard(categoryName: 'Kue Kering', icon: Icons.cookie),
                CategoryCard(categoryName: 'Cupcakes', icon: Icons.cake),
              ],
            ),
          ),

          // Produk Unggulan
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Produk Unggulan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
            ),
          ),
          // Daftar produk
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.builder(
              shrinkWrap: true, // Agar gridview hanya sebesar kontennya
              physics: const NeverScrollableScrollPhysics(), // Menonaktifkan scrollable
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 kolom dalam grid
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: 4, // Ganti dengan jumlah produk yang sesuai
              itemBuilder: (context, index) {
                return ProductCard(productName: 'Kue $index', price: '\$10');
              },
            ),
          ),
        ],
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
        borderRadius: BorderRadius.circular(8),
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

  const ProductCard({super.key, required this.productName, required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman detail produk
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            // Gambar produk placeholder
            Image.asset(
              'assets/cake_placeholder.jpg', // Gambar produk placeholder
              width: double.infinity,
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
