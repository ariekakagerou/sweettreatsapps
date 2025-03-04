import 'package:flutter/material.dart';
import '../dashboard/home.dart'; // Mengimpor halaman chat
import '../dashboard/product.dart'; // Mengimpor halaman status
import '../dashboard/promotion.dart'; // Mengimpor halaman community
import '../dashboard/order.dart'; // Mengimpor halaman call
import '../dashboard/profile.dart'; // Mengimpor halaman event


class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

  class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0; // Menyimpan indeks halaman yang dipilih

  // Daftar halaman yang akan ditampilkan
  final List<Widget> _pages = [
    const HomePage(),
    const ProductPage(),
    const PromotionPage(),
    const OrderPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Mengubah halaman yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: _getBackgroundColor(), // Menggunakan metode untuk mendapatkan warna latar belakang
        child: _pages[_selectedIndex], // Menampilkan halaman yang dipilih
      ),
      bottomNavigationBar: _buildBottomNavigationBar(), // Memanggil metode untuk membangun BottomNavigationBar
    );
  }

  Color _getBackgroundColor() {
    switch (_selectedIndex) {
      case 0:
        return Colors.pink[100]!; // Warna latar belakang untuk Chat
      case 1:
        return Colors.white; // Warna latar belakang untuk Status
      case 2:
        return Colors.lightBlue[100]!; // Warna latar belakang untuk Community
      case 3:
      default:
        return Colors.pink[100]!; // Warna latar belakang untuk Call
    }
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.stairs),
          label: 'Produk',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Promosi',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.folder),
          label: 'Pesanan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profil',
        ),
  
      ],
      currentIndex: _selectedIndex, // Indeks halaman yang dipilih
      selectedItemColor: Colors.pink, // Warna item yang dipilih
      unselectedItemColor: Colors.grey, // Warna item yang tidak dipilih
      backgroundColor: Colors.white, // Warna latar belakang BottomNavigationBar
      showSelectedLabels: true, // Menampilkan label yang dipilih
      showUnselectedLabels: true, // Menampilkan label yang tidak dipilih
      onTap: _onItemTapped, // Menangani perubahan halaman
    );
  }
}