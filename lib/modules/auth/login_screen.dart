import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iboon_application/shared/shared.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
import '../../shared/utils/palette.dart';
import 'auth_controller.dart';

class LoginScreen extends  GetView<AuthController>  {

  @override
  Widget build(BuildContext context) {
    return  Obx(() =>Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 350,
                padding: EdgeInsets.only(top: 90, left: 20),
                color: Color(0xFF60A053),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login",style: TextStyle(fontSize: Get.height *0.05,color: Colors.white),),
                    SizedBox(
                      height: 5,
                    ),
                    Text(

                      "Welcome Back",
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceInOut,
              top: 250,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 700),
                curve: Curves.bounceInOut,
                height: controller.isValidate!.value ?  Get.height * 0.35 : Get.height*0.3,
                padding: EdgeInsets.all(20),
                width: Get.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5),
                    ]),
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: _buildForms(context),
                    )
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              top: Get.height - 30,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                        text: "Dont have an account?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade400,
fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text:" Sign Up " ,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                      recognizer: new TapGestureRecognizer()..onTap = () {

                        Get.toNamed(Routes.REGISTER,);
                      }   ,

                          )
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildForms(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(

              controller: controller.loginEmailController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                  borderSide:  BorderSide(color: Colors.red,width: 1),
                  borderRadius: BorderRadius.circular(10),
                ) ,
                border: OutlineInputBorder(
                  borderSide:  BorderSide(color: Color(0xff60A053),width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Enter Email",
                labelText: "Email",


              ),

              validator: (value) {
                if (!Regex.isEmail(value!)) {
                  return 'Email format error.';
                }

                if (value.isEmpty) {
                  return 'Email is required.';
                }
                return null;
              },
            ),
            CommonWidget.rowHeight(height: 20),

            TextFormField(
              decoration: InputDecoration(

                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff60A053)),
                  borderRadius: BorderRadius.circular(10),

                ),
                hintText: "Enter Password",
                labelText: "Password",

              ),
              controller: controller.loginPasswordController,
              keyboardType: TextInputType.visiblePassword,

              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password is required.';
                }

                if (value.length < 3 || value.length > 15) {
                  return 'Password should be 6~15 characters';
                }

                return null;
              },
            ),
            CommonWidget.rowHeight(height: 30),
        MaterialButton(
          color:Color(0xff60A053) ,
          child: Text('Login',style: TextStyle(fontSize: 15,)),

          elevation: 4,
          onPressed: () {
            // Get.offAllNamed(Routes.HOME);
            controller.login(context);
          },
        ),

          ],
        ),
      ),
    );
  }
}
