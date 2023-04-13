import 'package:flutter/material.dart';
import 'package:proje1/components/bottomNavigation.dart';
import 'package:proje1/home.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LilZey Butik'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Şifre',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                buildLogin(context);
                // Handle login
              },
              child: Text('Giriş Yap'),
            ),
          ],
        ),
      ),
      //bottomNavigationBar("profile"),
    );
  }
}

Widget buildLogin (context) {
  return GestureDetector(
      onTap: () {
    Navigator.push(context!, MaterialPageRoute(builder: (context) {
      return HomePage();
    }));
  }
  );
}