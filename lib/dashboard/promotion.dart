import 'package:flutter/material.dart';

class PromotionPage extends StatelessWidget {
  const PromotionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Promosi & Voucher Diskon'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Promo Saat Ini
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Promo Saat Ini',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  PromoCard(
                    promoTitle: 'Diskon 20% untuk Kue Ulang Tahun',
                    promoDescription: 'Dapatkan diskon 20% untuk semua kue ulang tahun. Gunakan kode promo "BIRTHDAY20" di checkout.',
                    validUntil: 'Berlaku sampai 31 Desember 2024',
                  ),
                  PromoCard(
                    promoTitle: 'Diskon 15% untuk Kue Valentine',
                    promoDescription: 'Nikmati diskon 15% untuk semua kue Valentine. Gunakan kode promo "VALENTINE15" saat checkout.',
                    validUntil: 'Berlaku sampai 14 Februari 2024',
                  ),
                  PromoCard(
                    promoTitle: 'Beli 2 Gratis 1 untuk Kue Kering',
                    promoDescription: 'Beli 2 kue kering dan dapatkan 1 gratis. Tidak perlu kode, langsung diterapkan di keranjang.',
                    validUntil: 'Berlaku sampai 31 Januari 2024',
                  ),
                ],
              ),
            ),

            // Voucher Diskon
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Voucher Diskon',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  VoucherCard(
                    voucherCode: 'SAVE10',
                    voucherDescription: 'Dapatkan diskon 10% untuk pembelian pertama Anda.',
                    expirationDate: 'Berlaku sampai 30 Juni 2024',
                  ),
                  VoucherCard(
                    voucherCode: 'FREESHIP',
                    voucherDescription: 'Gratis ongkos kirim untuk pembelian minimal \$50.',
                    expirationDate: 'Berlaku sampai 31 Desember 2024',
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

class PromoCard extends StatelessWidget {
  final String promoTitle;
  final String promoDescription;
  final String validUntil;

  const PromoCard({
    super.key,
    required this.promoTitle,
    required this.promoDescription,
    required this.validUntil,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              promoTitle,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.pink),
            ),
            const SizedBox(height: 8),
            Text(
              promoDescription,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 8),
            Text(
              'Berlaku sampai: $validUntil',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class VoucherCard extends StatelessWidget {
  final String voucherCode;
  final String voucherDescription;
  final String expirationDate;

  const VoucherCard({
    super.key,
    required this.voucherCode,
    required this.voucherDescription,
    required this.expirationDate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Voucher Kode: $voucherCode',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.pink),
            ),
            const SizedBox(height: 8),
            Text(
              voucherDescription,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 8),
            Text(
              'Berlaku sampai: $expirationDate',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
