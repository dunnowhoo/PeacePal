import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _handleLogin(BuildContext context) {
    // Logika untuk memeriksa kredensial dan menangani login
    String email = emailController.text;
    String password = passwordController.text;

    // Contoh: Pemeriksaan kredensial sederhana (gantilah dengan logika otentikasi yang sesuai)
    if (email == 'user@example.com' && password == 'password') {
      // Navigasi ke halaman beranda jika login berhasil
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // Menampilkan pesan kesalahan jika login gagal
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login gagal. Periksa kembali email dan password Anda.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PeacePal Mental Health'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Selamat datang di PeacePal',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _handleLogin(context);
              },
              child: Text('Masuk'),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                // Navigasi ke halaman pendaftaran atau reset password
              },
              child: Text('Lupa Password?'),
            ),
          ],
        ),
      ),
    );
  }
}
