import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyLoginForm());
}

class MyLoginForm extends StatelessWidget {
  MyLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Login Form by Flutter', home: LoginFrom());
  }
}

class LoginFrom extends StatefulWidget {
  const LoginFrom({super.key});

  @override
  State<LoginFrom> createState() => _LoginFormSate();
}

class _LoginFormSate extends State<LoginFrom> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login',
            style: TextStyle(
                color: Color.fromARGB(255, 250, 116, 214),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700)),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(onPressed: _submit, child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('${_email}-${_password}');
    }
  }
}
