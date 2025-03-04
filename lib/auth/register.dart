import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Colors.pinkAccent, // Warna sesuai tema
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Pilih Jenis Akun',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Tombol untuk Penjual
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman pendaftaran untuk penjual
                  // Anda bisa menambahkan logika atau halaman baru untuk penjual di sini
                  _navigateToSellerRegistration(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Daftar sebagai Penjual',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              // Tombol untuk Pembeli
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman pendaftaran untuk pembeli
                  // Anda bisa menambahkan logika atau halaman baru untuk pembeli di sini
                  _navigateToBuyerRegistration(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Daftar sebagai Pembeli',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk menavigasi ke halaman registrasi penjual
  void _navigateToSellerRegistration(BuildContext context) {
    // Logika navigasi untuk penjual
    // Gantilah dengan halaman khusus penjual (misalnya SellerRegistrationPage)
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SellerRegistrationPage(),
      ),
    );
  }

  // Fungsi untuk menavigasi ke halaman registrasi pembeli
  void _navigateToBuyerRegistration(BuildContext context) {
    // Logika navigasi untuk pembeli
    // Gantilah dengan halaman khusus pembeli (misalnya BuyerRegistrationPage)
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BuyerRegistrationPage(),
      ),
    );
  }
}

// Halaman pendaftaran Penjual (contoh)
class SellerRegistrationPage extends StatelessWidget {
  const SellerRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendaftaran Penjual'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text('Formulir Pendaftaran Penjual'),
      ),
    );
  }
}

// Halaman pendaftaran Pembeli (contoh)
class BuyerRegistrationPage extends StatelessWidget {
  const BuyerRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendaftaran Pembeli'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('Formulir Pendaftaran Pembeli'),
      ),
    );
  }
}
