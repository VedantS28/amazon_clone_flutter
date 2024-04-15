import 'package:amazon_clone/constants/global_variable.dart';
import 'package:amazon_clone/widgets/custombutton.dart';
import 'package:amazon_clone/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  static const String routeName = "/auth-screen";
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              margin: const EdgeInsets.all(8),
              child: const Text(
                "Welcome",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              tileColor: _auth==Auth.signup?GlobalVariable.backgroundColor:GlobalVariable.greyBackgroundCOlor,
              title: const Text(
                "Create account",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariable.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(
                    () {
                      _auth = val!;
                    },
                  );
                },
              ),
            ),
            if (_auth == Auth.signup)
              Container(
                padding: EdgeInsets.all(8),
                child: Form(
                  key: _signUpFormKey,
                  child: Column(
                    children: [
                      CustomTextField(controller: _name,mytext: "Name",isHidden: false,),
                      CustomTextField(controller: _email,mytext: "Email",isHidden: false,),
                      CustomTextField(controller: _pass,mytext: "Pass",isHidden: true,),
                      const SizedBox(height: 10,),
                      CustomButton(text: "SignUp", onTap: (){})
                    ],
                  ),
                ),
              ),
            ListTile(
               tileColor: _auth==Auth.signin?GlobalVariable.backgroundColor:GlobalVariable.greyBackgroundCOlor,
              title: const Text(
                "Sign-In",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariable.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(
                    () {
                      _auth = val!;
                    },
                  );
                },
              ),
            ),
            if (_auth == Auth.signin)
              Container(
                padding: EdgeInsets.all(8),
                child: Form(
                  key: _signUpFormKey,
                  child: Column(
                    children: [
                      CustomTextField(controller: _email,mytext: "Email",isHidden: false,),
                      CustomTextField(controller: _pass,mytext: "Pass",isHidden: true,),
                      const SizedBox(height: 10,),
                      CustomButton(text: "SignUp", onTap: (){})
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
