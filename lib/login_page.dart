import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';
import 'user.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userProvider = context.read<UserProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Username',
                  prefixIcon: Icon( 
                    Icons.email, 
                    color: Colors.green, 
                  ), 
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Password',
                  prefixIcon: Icon( 
                    Icons.key, 
                    color: Colors.green, 
                  ), 
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                  // Retrieve email and password values from text fields
                    final username = nameController.text;
                    final password = passwordController.text;

                    if (username == 'admin' && password == 'password') {
                      final user = User('Ann Moraa');
                      userProvider.setUser(user);
                    } else {
                      // Handle invalid login
                      // You can display a SnackBar or showDialog for errors.
                    }
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            /*ElevatedButton(
              onPressed: () {
                // Retrieve email and password values from text fields
                final email = emailController.text;
                final password = passwordController.text;

                if (email.isEmpty) {
                  setState(() {
                    emailError = 'Email is required';
                  });
                } else {
                  emailError = null;
                }

                if (password.isEmpty) {
                  setState(() {
                    passwordError = 'Password is required';
                  });
                } else {
                  passwordError = null;
                }

                if (emailError == null && passwordError == null) {
                  if (email == 'admin' && password == 'password') {
                    final user = User('Ann Moraa');
                    userProvider.setUser(user);
                  } else {
                    // Handle invalid login
                    // You can display a SnackBar or showDialog for errors.
                  }
                }
              },
              child: Text('Login'),
            ),*/
          ],
        ),
      ),
    );
  }
}
