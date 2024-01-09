import 'package:flutter/material.dart';

import '../../../shared/components/components.dart';


// reusable component

// 1. timing
// 2. refactor
// 3. quality

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  String text1 = 'ahmed';
 // not null variable
  String? text2;
 // null able variable
  late String text3 = 'kdcnkcn';
 // late variable
  @override
  Widget build(BuildContext context) {
    text1 = 'bbxznmxc';
    text3 = 'null';
    text2 = null;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   text1??'djljfds',
                  // ),
                  // Text(
                  //   text3??'dkhldsfkdhs',
                  // ),
                  // Text(
                  //   text2 ?? 'Ahmed Abd Elnasser',
                  // ),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  // defaultFormField(
                  //     controller: emailController,
                  //     type: TextInputType.emailAddress,
                  //     validate: (value)
                  //     {
                  //       if(value.isEmpty)
                  //       {
                  //         return 'email address must not be empty';
                  //       }
                  //       return null;
                  //     },
                  //     label: 'Email',
                  //     prefix: Icons.email,
                  // ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'email address must not be empty ';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPassword,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'password must not be empty ';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                      suffixIcon: IconButton(
                        onPressed: ()
                        {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                        icon: isPassword ? const Icon(
                          Icons.visibility,
                        ) : const Icon(
                          Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'login',
                    function: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                        loginButton();
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  defaultButton(
                    text: 'Register',
                    function: () {
                      print(emailController.text);
                      print(passwordController.text);
                      loginButton();
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
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

void loginButton() {
  print('Login Successful');
}
