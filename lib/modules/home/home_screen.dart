import 'package:badges/badges.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iboon_application/shared/shared.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api/api_repository.dart';
import '../../routes/routes.dart';
import 'home_controller.dart';

class HomeScreen extends  GetView<HomeController>  {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
        init: controller,
        builder: (_controller) {
          return   Scaffold(
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
                      if (controller.user != null)
                      ListTile(
                        horizontalTitleGap: 16.0, // The horizontal gap between the titles and the leading/trailing widgets.
                        leading:controller.user!.profileImage != null ? CircleAvatar(
                            radius: Get.height * 0.05,
                            child: Image.asset(controller.user!.profileImage.toString())):  FlutterLogo(size: 50,),
                        title: Text(controller.user!.fullName.toString(),style: TextStyle(color: Colors.white,fontSize: 18),),
                        subtitle: Text(controller.user!.cmpName.toString(),style: TextStyle(color: Colors.white,fontSize: 12)),
                        trailing: Container(
                          height: 35,
                          decoration: new BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: (){
                              Get.toNamed(Routes.EDIT_PROFILE,arguments: controller.user!.toJson())!.then((value) => controller.loadProfile());
                            },
                            icon: Icon(Icons.edit,color: Colors.white,),
                          ),
                        ),
                      ),

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
                  height:   Get.height * 0.5,
                  padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  width: Get.width - 30,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.count(
                    padding: EdgeInsets.all(10),
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    children: [
                      Badge(
                        badgeColor: Get.theme.accentColor,

                        badgeContent: Text(
                          '12',
                          style: TextStyle(
                              color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Get.toNamed(Routes.LEADS);
                          },
                          child: Card(
                            color: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[                            SvgPicture.asset(
                                  "assets/svgs/dashboard_one.svg",
                                  width: Get.height *0.05,
                                  height:Get.height *0.05,
                                  color: ColorConstants.secondaryAppColor,
                                ), Text('Leads',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Badge(
                        badgeColor: Get.theme.accentColor,

                        badgeContent: Text(
                          '12',
                          style: TextStyle(
                              color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        child: Card(
                          color: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                SvgPicture.asset(
                                  "assets/svgs/dashboard_two.svg",
                                  width: Get.height *0.05,
                                  height:Get.height *0.05,
                                  color: ColorConstants.secondaryAppColor,
                                ), Text('Tasks',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[SizedBox(height: Get.height *0.05,), Padding(
                              padding:  EdgeInsets.all(16.0),
                              child: Text('Follow Up \n  Leads',textAlign:TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                            )],
                          ),
                        ),
                      ),
                      Card(

                        color: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child:  Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(height: Get.height *0.05,),
                              Padding(
                              padding:  EdgeInsets.all(16.0),
                              child: Text('Due Follow Up \n  Leads',textAlign:TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                            )],
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),

            ],
          ),
        );
      }
    );
  }

}
