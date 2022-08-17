import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise/constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
                hintText: "Your Phone number",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.person),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: TextFormField(
            textInputAction: TextInputAction.done,
            cursorColor: kPrimaryColor,
            obscureText: true,
            decoration: const InputDecoration(
                hintText: "Your Password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Hero(
              tag: "login_tag",
              child: ElevatedButton(onPressed: () {}, child: Text("Login"))),
        ),
        const SizedBox(height: defaultPadding),
      ],
    ));
  }
}
