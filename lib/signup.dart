import 'package:flutter/material.dart';
import 'package:new_project/validator/EmailValidator.dart';
import 'package:new_project/validator/PasswordValidator.dart';
import 'package:new_project/validator/PhoneValidator.dart';

import 'validator/NameValidator.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // To Get text from the textField we make controller
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController pass1Controller = TextEditingController();
  TextEditingController pass2Controller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('accets/register.png'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor:
            Color.alphaBlend(Colors.transparent, Colors.transparent),
        body: Stack(
          children: [

            Container(

              padding: const EdgeInsets.only(left: 35, top: 40),
              child: const Text(
                'Create\nAccount',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                  left: 35,
                  right: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    controller: nameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    keyboardType: TextInputType.multiline,
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Phone Number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      controller: mobileController,
                      keyboardType: TextInputType.number),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    controller: pass1Controller,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Confirm Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    controller: pass2Controller,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Color(0xff4c505b),
                            fontSize: 27,
                            fontWeight: FontWeight.w700),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xff4c505b),
                        child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              //TODO write function for validate email

                              if (email_Validator
                                      .validateEmail(emailController.text) &&
                                  pass_validator
                                      .validatePassword(pass1Controller.text) &&
                                  phone_validator
                                      .validateMobile(mobileController.text) &&
                                  pass_validator
                                      .validatePassword(pass2Controller.text) &&
                                  name_validator
                                      .validateName(nameController.text)) {
                                if (pass1Controller.text !=
                                    pass2Controller.text) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text('Password Not Matched'),
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.red,
                                  ));
                                } else {
                                  Navigator.pushNamed(context, 'login');
                                }
                              } else {
                                if (!name_validator
                                    .validateName(nameController.text)) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text('Enter valid Name'),
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.red,
                                  ));
                                } else if (!email_Validator
                                    .validateEmail(emailController.text)) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text('Enter valid Mail'),
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.red,
                                  ));
                                } else if (!phone_validator
                                    .validateMobile(mobileController.text)) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              'Enter Valid Phone Number'),
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: Colors.red,
                                      ));
                                } else if (!pass_validator.validatePassword(
                                        pass1Controller.text) ||
                                    !pass_validator.validatePassword(
                                        pass2Controller.text)) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text('Enter valid Password'),
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.red,
                                  ));
                                }

                                // Scaffold.of(context).showSnackBar(new SnackBar(
                                //     content: new Text('')
                                // ));
                              }
                            },
                            icon: const Icon(Icons.arrow_forward)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        style: const ButtonStyle(),
                        child: const Text('Sign In',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class ShowSnackBar {}
