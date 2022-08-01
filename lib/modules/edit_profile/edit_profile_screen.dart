import 'package:badges/badges.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iboon_application/modules/edit_profile/edit_profile_controller.dart';
import 'package:iboon_application/shared/shared.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';


class EditProfileScreen extends  GetView <EditProfileController>{

  @override
  Widget build(BuildContext context) {
    return Obx(() =>Scaffold(
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
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Badge(
              badgeColor : Colors.white,
              position:  BadgePosition.bottomEnd(bottom: 3),
                        badgeContent: Container(
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            // height: 50,
                            child: Icon(Icons.camera_alt_outlined,color:Get.theme.accentColor ,)),
                        child: CircleAvatar(
                          radius: Get.height * 0.05,
                            child: FlutterLogo(size: 50,)),
                      )
                    ],
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
              height:controller.isValidate!.value ?  Get.height *0.65:Get.height *0.45,
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

    );
  }
  Widget _buildForms(BuildContext context) {
    return Form(
      key: controller.editProfileFormKey,
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
              controller: controller.editProfileFullNameController,
              keyboardType: TextInputType.text,


              validator: (value) {
                if (value!.isEmpty) {
                  return 'Name is required.';
                }

                if ( value.length > 25) {
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
                hintText: "Enter Company Name",
                labelText: "Company Name",

              ),
              controller: controller.editProfileCcompanyNameController,
              keyboardType: TextInputType.text,


              validator: (value) {

                if (value!.isEmpty) {
                  return 'Company Name is required.';
                }

                if (value.length > 15) {
                  return 'Company Name should be 6~15 characters';
                }

                return null;
              },
            ),
            CommonWidget.rowHeight(height: 20),
            TextFormField(

              controller: controller.editProfileEmailController,
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
                hintText: "Enter Mobile No.",
                labelText: "Mobile No.",

              ),
              controller: controller.editProfileContactController,
              keyboardType: TextInputType.phone,

              validator: (value) {
                if (!GetUtils.isPhoneNumber(value!)) {
                  return 'Invalid Contact Number';
                }
                if (value.isEmpty) {
                  return 'Contact No. is required.';
                }

                if (value.length < 10 || value.length > 10) {
                  return 'Contact No. should be 6~15 characters';
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
                    child: Text('Submit',style: TextStyle(fontSize: 15,)),

                    elevation: 4,
                    onPressed: () {
                      controller.editProfile(context);
                    },
                  ),
                ),
                MaterialButton(
                  // color:Color(0xff60A053) ,
                  child: Text('Cancel',style: TextStyle(fontSize: 15,color: Color(0xFF60A053)),),

                  // elevation: 4,
                  onPressed: () {
                    Get.back();
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
