import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/ali_hasanli.png'), // Add your image asset
            ),
            SizedBox(height: 20),
            Text(
              'Ali Hasanli',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                labelText: "lorem@ipsum.com",
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)
                ),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                labelText: "+994 999 99 99",
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)
                ),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
          ],
      ),
    );
  }
}