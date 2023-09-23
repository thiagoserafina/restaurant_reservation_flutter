import 'package:flutter/material.dart';
import 'package:restaurant_reservation/app_widget.dart';
import 'package:restaurant_reservation/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          "EasyTable",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: 5,
            fontFamily: 'Satisfy',
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Image.network(
                      'https://media-cdn.tripadvisor.com/media/photo-s/27/9f/45/bc/restaurant.jpg',
                      height: 200,
                    )
                  ],
                ),
              ),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined)),
                autofillHints: const [AutofillHints.email],
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                    contentPadding: EdgeInsets.all(15),
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_outlined)),
                obscureText: true,
                autofillHints: const [AutofillHints.password],
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    final email = _emailController.text;
                    final password = _passwordController.text;

                    if (email != 'admin' || password != 'admin') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.redAccent,
                            content: Row(
                              children: [
                                Icon(Icons.warning_amber_rounded,
                                    color: Colors.white),
                                SizedBox(width: 10),
                                Text('Invalid email or password.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: 'Inter')),
                              ],
                            )),
                      );
                      return;
                    }

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const AppWidget(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width * 0.4, 35)),
                    backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                  ),
                  child: const Text('Login',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 50,
        width: double.infinity,
        color: Colors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account?',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: const Text(
                'Sign up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
