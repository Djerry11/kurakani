import 'package:flutter/material.dart';
import 'package:kurakani_lite/components/my_button.dart';
import 'package:kurakani_lite/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pwcontroller = TextEditingController();

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});
  void login() {}

  void signup() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.chat,
                size: 90,
                color: Theme.of(context).colorScheme.primary,
              ),

              const SizedBox(
                height: 50,
              ),

              //welcome message
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Let\'s initiate a conversation with our nearest and dearest.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //username textfield
              MyTextField(
                hintText: 'Email',
                obsecured: false,
                controller: _emailcontroller,
              ),

              const SizedBox(
                height: 10,
              ),

              //pw textfield
              MyTextField(
                hintText: 'Password',
                obsecured: true,
                controller: _pwcontroller,
              ),
              const SizedBox(
                height: 20,
              ),
              //login button
              MyButton(
                buttonName: 'Login',
                onTap: login,
              ),

              const SizedBox(
                height: 10,
              ),

              //not member message
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member? ',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      'Register Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  )
                ],
              ),
              //signup button
            ],
          ),
        ),
      ),
    );
  }
}
