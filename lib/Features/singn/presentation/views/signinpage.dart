import 'package:flutter/material.dart';
import 'package:schoolapp/Features/HomePage/view/homepage.dart';
import 'package:schoolapp/core/utils/assets.dart';
import 'package:schoolapp/core/utils/styles.dart';
import 'wedgits/custom_TextFormField.dart';
import 'wedgits/signin_button.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  var usernameController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var passwordController = TextEditingController();
  bool keeplogedin = false;
  bool isPasswordHidden = true;
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: formkey,
              child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 85.0, vertical: 56),
                      child: SizedBox(
                        width: double.infinity,
                        height: size.height/4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(AssetsData.signinimage),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "User name",
                          style: Styles.maintextstyle,
                        ),
                        SizedBox(
                          height: size.height * 0.019,
                        ),
                        CustomTextFormField(
                          obscureText: false,
                            hint: "Enter your school username.",
                            controller: usernameController,
                            icon: IconButton(
                              icon: const Icon(
                                null,
                              ),
                              onPressed: () {},
                            )),
                        SizedBox(
                          height: size.height * 0.039,
                        ),
                        const Text(
                          "Password",
                          style: Styles.maintextstyle,
                        ),
                        SizedBox(
                          height: size.height * 0.019,
                        ),
                        CustomTextFormField(
                          obscureText: isPasswordHidden,
                            hint: "Enter your password",
                            controller: passwordController,
                            icon: IconButton(
                              icon:  Icon(
                               isPasswordHidden? Icons.visibility_off_outlined:Icons.visibility_outlined,
                              ),
                              onPressed: () {
                                 setState(() {
                                   isPasswordHidden=!isPasswordHidden;
                                 });
                              },
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                checkboxitem(),
                                const Text(
                                  "Remember Me",
                                  style: Styles.rememberme,
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('Forget Password? ',
                                  style: Styles.forgetpassword),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        SiginButton(
                          hint: "Log In",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                        )
                      ],
                    )
                  ]),

           
              ),
            ),
          
        ],
      ),
    );
  }

  Checkbox checkboxitem() {
    return Checkbox(
   shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(3),
   ),
   
        checkColor: Colors.black,
        activeColor: Colors.white,
        value: keeplogedin,
        onChanged: (vlaue) {
          setState(() {
            keeplogedin = vlaue!;
          });
        });
  }
}

