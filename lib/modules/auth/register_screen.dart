import 'package:flutter/material.dart';
import 'package:iboon_application/modules/auth/auth.dart';
import 'package:iboon_application/shared/shared.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../../shared/utils/palette.dart';

class RegisterScreen extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {

    return Obx(() =>WillPopScope(
      onWillPop: ()async {
        // controller.isValidate!.value = false;
        Get.offAllNamed (Routes.LOGIN, );
        return  true;
      },
      child: Scaffold(
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
                  Text("SignUp",style: TextStyle(fontSize: Get.height *0.05,color: Colors.white),),
                      SizedBox(
                        height: 5,
                      ),
                      Text(

                        "Enter Your Details to create your Account",
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
                  height:controller.isValidate!.value ?  Get.height *0.65:Get.height *0.5,
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


            ],
          ),
        ),
    ),
    );
  }
  Widget _buildForms(BuildContext context) {
    return Form(
      key: controller.registerFormKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(

                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff60A053)),
                  borderRadius: BorderRadius.circular(10),

                ),
                hintText: "Enter Full Name",
                labelText: "Full Name",

              ),
              controller: controller.registerFullNameController,
              keyboardType: TextInputType.text,

              validator: (value) {
                if (value!.isEmpty) {
                  return 'Name is required.';
                }

                if (value.length < 3 || value.length > 25) {
                  return 'Name should be 3~25 characters';
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
                hintText: "Enter Contact No.",
                labelText: "Contact No.",

              ),
              controller: controller.registerContactController,
              keyboardType: TextInputType.phone,


              validator: (value) {
                if (!GetUtils.isPhoneNumber(value!)) {
                  return 'Invalid Contact Number';
                }
                if (value.isEmpty) {
                  return 'Contact No. is required.';
                }

                if (value.length < 6 || value.length > 15) {
                  return 'Contact No. should be 6~15 characters';
                }

                return null;
              },
            ),
            CommonWidget.rowHeight(height: 20),
            TextFormField(

              controller: controller.registerEmailController,
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
              controller: controller.registerPasswordController,
              keyboardType: TextInputType.visiblePassword,

              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password is required.';
                }

                if (value.length < 6 || value.length > 15) {
                  return 'Password should be 6~15 characters';
                }

                return null;
              },
            ),
            CommonWidget.rowHeight(height: 20),
            TextFormField(
              controller: controller.registerConfirmPasswordController,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff60A053)),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Enter Password",
                labelText: "Password",

              ),
              obscureText: true,
              validator: (value) {
                if (controller.registerPasswordController.text !=
                    controller.registerConfirmPasswordController.text) {
                  return 'Confirm Password is not consistence with Password.';
                }

                if (value!.isEmpty) {
                  return 'Confirm Password is required.';
                }
                return null;
              },
            ),

            CommonWidget.rowHeight(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: Get.width * 0.35,
                  height: Get.width * 0.13,
                  child: MaterialButton(
                    color:Color(0xff60A053) ,
                    child: Text('Sign Up',style: TextStyle(fontSize: 15,)),

                    elevation: 4,
                    onPressed: () {
                      controller.register(context);
                    },
                  ),
                ),
                MaterialButton(
                  // color:Color(0xff60A053) ,
                  child: Text('Cancel',style: TextStyle(fontSize: 15,color: Color(0xFF60A053)),),

                  // elevation: 4,
                  onPressed: () {
                    Get.offAllNamed (Routes.LOGIN, );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
