import 'package:flutter/material.dart';
import 'package:kurakani_lite/components/my_button.dart';
import 'package:kurakani_lite/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});
  final _emailcontroller = TextEditingController();
  final _pwcontroller = TextEditingController();
  final _cpwcontroller = TextEditingController();

  void register() {}

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
              const Text(
                'Let\'s initiate a conversation with our nearest and dearest.',
                textAlign: TextAlign.center,
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

              //confirm
              MyTextField(
                hintText: 'Confirm Password',
                obsecured: true,
                controller: _cpwcontroller,
              ),

              const SizedBox(
                height: 20,
              ),
              //login button
              MyButton(
                buttonName: 'Register',
                onTap: register,
              ),

              const SizedBox(
                height: 10,
              ),

              //already member
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      'Login Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
