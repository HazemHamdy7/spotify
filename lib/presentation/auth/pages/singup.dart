import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';

import '../../../common/widgets/appbar/app_bar.dart';
import '../../../core/configs/assets/app_vector.dart';
import 'singin.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signinText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(AppVector.logo, height: 40, width: 40),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _registerText(),
              const SizedBox(height: 30),
              _fullNameFeild(context),
              const SizedBox(height: 20),
              _emailFeild(context),
              const SizedBox(height: 20),
              _passworfFeild(context),
              const SizedBox(height: 20),
              BasicAppButton(
                onPressed: () {},
                title: 'Create Account',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      'Register',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameFeild(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Full Name',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _emailFeild(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Email',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passworfFeild(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Password',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _signinText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Do you have account ?',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SingIn();
                }));
              },
              child: const Text('Sing In',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      fontSize: 14))),
        ],
      ),
    );
  }
}
