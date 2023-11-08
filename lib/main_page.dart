import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = context.read<UserProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              userProvider.signOut();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 4, // Adds a shadow to the card
              margin: EdgeInsets.all(16), // Adds some margin around the card
              child: Padding(
                padding: const EdgeInsets.all(16), // Adds padding within the card
                child: Column(
                  children: <Widget>[
                    Text(
                      'Welcome to Droidcon Kenya 2023!',
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
