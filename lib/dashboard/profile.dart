import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView(
        children: [
          // Foto Profil Pengguna dan Nama
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://www.example.com/profile_picture.png'),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
              'Nama Pengguna', // Gantilah dengan nama pengguna yang sebenarnya
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              'email@example.com', // Gantilah dengan email pengguna yang sebenarnya
              style: const TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          const SizedBox(height: 32),

          // Pengaturan Aplikasi
          Text(
            'Pengaturan Aplikasi',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
          ),
          const SizedBox(height: 16),

          // Pengaturan Akun
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Pengaturan Akun'),
            subtitle: const Text('Ubah kata sandi atau info akun'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Arahkan ke halaman pengaturan akun
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccountSettingsPage()),
              );
            },
          ),

          // Pengaturan Tema
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: const Text('Tema Aplikasi'),
            subtitle: const Text('Ubah tema aplikasi (Terang/Gelap)'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Arahkan ke halaman pengaturan tema
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThemeSettingsPage()),
              );
            },
          ),

          // Pengaturan Notifikasi
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifikasi'),
            subtitle: const Text('Atur notifikasi aplikasi'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Arahkan ke halaman pengaturan notifikasi
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationSettingsPage()),
              );
            },
          ),

          // Pengaturan Bahasa
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Bahasa'),
            subtitle: const Text('Pilih bahasa aplikasi'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Arahkan ke halaman pengaturan bahasa
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LanguageSettingsPage()),
              );
            },
          ),

          const SizedBox(height: 32),

          // Tombol Keluar
          ElevatedButton(
            onPressed: () {
              // Arahkan untuk keluar dari aplikasi atau logout
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Keluar'),
                    content: const Text('Apakah Anda yakin ingin keluar?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          // Logika untuk membatalkan keluar
                          Navigator.pop(context);
                        },
                        child: const Text('Batal'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Logika untuk keluar aplikasi dan navigasi ke halaman login
                          Navigator.pop(context); // Tutup dialog
                          Navigator.pushReplacementNamed(context, '/login'); // Ganti dengan rute login
                        },
                        child: const Text('Keluar'),
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
              'Keluar',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

// Halaman Pengaturan Akun
class AccountSettingsPage extends StatelessWidget {
  const AccountSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan Akun'),
      ),
      body: Center(
        child: const Text('Halaman untuk mengubah kata sandi dan info akun'),
      ),
    );
  }
}

// Halaman Pengaturan Tema
class ThemeSettingsPage extends StatelessWidget {
  const ThemeSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan Tema'),
      ),
      body: Center(
        child: const Text('Halaman untuk mengubah tema aplikasi'),
      ),
    );
  }
}

// Halaman Pengaturan Notifikasi
class NotificationSettingsPage extends StatelessWidget {
  const NotificationSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan Notifikasi'),
      ),
      body: Center(
        child: const Text('Halaman untuk mengatur notifikasi aplikasi'),
      ),
    );
  }
}

// Halaman Pengaturan Bahasa
class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan Bahasa'),
      ),
      body: Center(
        child: const Text('Halaman untuk memilih bahasa aplikasi'),
      ),
    );
  }
}
