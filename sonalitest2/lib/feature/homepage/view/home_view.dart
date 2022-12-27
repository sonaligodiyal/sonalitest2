import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sonalitest2/feature/homepage/controller/homeController.dart';
import 'package:sonalitest2/feature/navfirstpage/view/navfirst.dart';
import 'package:sonalitest2/feature/navsecondpage/view/navsecond.dart';
import 'package:sonalitest2/feature/navthirdpage/view/navthird.dart';


class HomeView extends GetView<HomeController>{
        HomeView({super.key});
        HomeController bottomNavigationController = Get.put(HomeController());

    final screen = [
        navfirst(),
        navsecond(),
        navthird(),
        ];

        @override
        Widget build(BuildContext context){
        Size size = MediaQuery.of(context).size;
        return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Obx(()=>Scaffold(
                        body: Center(
                            child: IndexedStack(
                                    index: controller.selectedIndex.value,
                                    children: screen,
                            ),
                        ),
                        bottomNavigationBar: Obx(()=> BottomNavigationBar(
                                type: BottomNavigationBarType.shifting,

                                showSelectedLabels: true,

                                onTap: (index){
                                        controller.changeIndex(index);
                                },
                                currentIndex: controller.selectedIndex.value,
                                items: [
                                        BottomNavigationBarItem(
                                                icon: Icon(Icons.home_filled,),
                                                label: "Home",
                                                backgroundColor: Colors.deepPurple,
                                        ),
                                        BottomNavigationBarItem(
                                                icon: Icon(Icons.search,),
                                                label: "My Detail",
                                                backgroundColor: Colors.deepOrangeAccent,
                                        ),
                                        BottomNavigationBarItem(
                                                icon: Icon(Icons.person,),
                                                label: "Profile",
                                                backgroundColor: Colors.redAccent,
                                        ),
                                ],
                        ),
                        ),
                ),
                ),
        );
        }
        }











     //       controller.loader.value==true ? Center(child: CircularProgressIndicator()) : Text(controller.name.value),
       //     ElevatedButton(
         //     child: Text('SignIn'),
           //   onPressed: () {
             //   Get.toNamed(RouteConstant.home);