import 'package:flutter/material.dart';
import 'package:untitled1/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool ispassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defFormField(
                      type: TextInputType.emailAddress,
                      controller: emailController,
                      lable: 'Email Adress',
                      prefix: Icons.email),
                  SizedBox(
                    height: 15.0,
                  ),
                  defFormField(
                      type: TextInputType.visiblePassword,
                      controller: passwordController,
                      lable: 'Password',
                      prefix: Icons.lock,
                      suffix: ispassword? Icons.visibility:Icons.visibility_off ,
                      isPass: ispassword,
                      suffixpressed: () {
                        setState(() {
                          ispassword = !ispassword;
                        });
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  defButton(
                      text: 'LOGIN',
                      radius: 35,
                      c: Colors.green,
                      width: double.infinity,
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print(emailController.text);
                          print(passwordController.text);
                        }
                      }),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
