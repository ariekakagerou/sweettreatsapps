import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesanan Saya'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Daftar Kue yang Dipesan
            Expanded(
              child: ListView(
                children: [
                  OrderItemCard(
                    productName: 'Kue Ulang Tahun',
                    quantity: 2,
                    pricePerItem: 15,
                  ),
                  OrderItemCard(
                    productName: 'Kue Coklat Valentine',
                    quantity: 1,
                    pricePerItem: 20,
                  ),
                  OrderItemCard(
                    productName: 'Kue Kering Lebaran',
                    quantity: 3,
                    pricePerItem: 10,
                  ),
                ],
              ),
            ),

            // Total Harga
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Harga:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$70', // Total harga berdasarkan item yang dipesan
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
                  ),
                ],
              ),
            ),

            // Tombol Pembayaran
            ElevatedButton(
              onPressed: () {
                // Arahkan ke halaman pembayaran
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Pembayaran'),
                      content: const Text('Klik untuk melanjutkan ke halaman pembayaran.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            // Implementasi logika pembayaran
                            Navigator.pop(context);
                          },
                          child: const Text('Lanjutkan'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Batal'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              child: const Text(
                'Bayar Sekarang',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderItemCard extends StatelessWidget {
  final String productName;
  final int quantity;
  final double pricePerItem;

  const OrderItemCard({
    super.key,
    required this.productName,
    required this.quantity,
    required this.pricePerItem,
  });

  @override
  Widget build(BuildContext context) {
    double totalPrice = quantity * pricePerItem;

    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Nama Kue dan Jumlah
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'Jumlah: $quantity',
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),

            // Harga Total per Item
            Text(
              '\$$totalPrice', // Harga total untuk item
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
            ),
          ],
        ),
      ),
    );
  }
}
