import 'package:badges/badges.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iboon_application/modules/leads/leads_controller.dart';
import 'package:iboon_application/shared/shared.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api/api_repository.dart';
import '../../routes/routes.dart';


class LeadsScreen extends  GetView<LeadsController>  {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<LeadsController>(
        init: controller,
        builder: (_controller) {
          return   Scaffold(
            appBar: AppBar(
              backgroundColor: Get.theme.accentColor,
              title: Text("Leads"),
              centerTitle: true,
            ),
            body:Column(
              children: [
                IntrinsicHeight(

                  child: Row(
                    children: [
                      Expanded(

                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),

                            border: Border.all(color: Colors.grey.withOpacity(0.05)),
                          ),
                          margin: EdgeInsets.all(10),
                          child: TextField(
                            // controller: controller.emailController,
                              decoration: InputDecoration(

                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xff60A053)),
                                  borderRadius: BorderRadius.circular(10),

                                ),
                                hintStyle: TextStyle(color: Color(0xffC1C1C1)),
                                suffixIcon:  Icon(Icons.search, color:Color(0xffC1C1C1)),
                                suffixIconConstraints:  BoxConstraints.expand(width: 38, height: 38) ,
                                floatingLabelBehavior: FloatingLabelBehavior.never,

                                hintText: "Search",

                              ),

                          ),
                        ),
                      ),
                      Badge(
                        badgeColor: Get.theme.accentColor,
          position:BadgePosition.topEnd(top: -1,end: 1),
                        badgeContent: Text(
                          '2',
                          style: TextStyle(
                              color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: OutlinedButton(
                            onPressed: (){},child:           SvgPicture.asset(
                            "assets/svgs/dashboard_one.svg",
                            width:20,
                            height:20,
                            color: Color(0xff60A053),
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: OutlinedButton(

                            onPressed: (){},
                            child: Icon(Icons.filter_list_rounded,color: Colors.black,size: 28,)),
                      ),


                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.LeadList.value.length,
                    itemBuilder: (BuildContext context, int index) {
                      var leadList = controller.LeadList[index];

                      return InkWell(
                        onTap: (){


                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          // border: Border(
                          // left: BorderSide(width: 3.0, color: Colors.green),
                          // ),


                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                ),
                              ],
                              // border: Border( left: BorderSide(width: 3.0, color: Colors.green), right: BorderSide(color:Colors.grey.withOpacity(0.05)),bottom: BorderSide( color:Colors.grey.withOpacity(0.05)), top: BorderSide( color:Colors.grey.withOpacity(0.05)), ),
                            ),
                            margin: EdgeInsets.all(10),
                            child: Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [


                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.fromLTRB(16,4,8,4),
                                        child: Text(leadList!.contactName.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.fromLTRB(16,8,8,4),
                                        child: Text(leadList!.cmpName.toString(),style: TextStyle(fontSize: 15,color: Colors.grey),),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.fromLTRB(16,4,8,16),
                                        child: Text(leadList!.designation.toString(),style: TextStyle(fontSize: 15,color: Colors.grey),),
                                      ),
                                    ],
                                  ),
                                 Column(
                                   children: [
                                     Padding(
                                       padding:  EdgeInsets.all(16.0),
                                       child: OutlinedButton(onPressed: (){},
                                           style: OutlinedButton.styleFrom(
                                             side: BorderSide(width: 1.0, color: Color(0xff60A053)),
                                           ),
                                           child: Text(leadList!.state.toString(),style: TextStyle(color: Colors.black),)),
                                     )
                                   ],
                                 )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );


                    },
                  ),
                ),
              ],
            ),
          );
        }
    );
  }

}
