import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:remotway_login_assignment/Widget/drawer.dart';
import '../Utilities/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widget/bottom_app_bar.dart';
import '../Widget/popular_restarunt.dart';
import '../Widget/restarunt_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final user =FirebaseAuth.instance.currentUser!;

late String username;
late String useremail;
late String photourl;


  @override
  Widget build(BuildContext context) {
    if(user != null)
    {
      username = user.displayName!;
      useremail=user.email!;
      photourl=user.photoURL!;

    }
    else
      {
        username="Harsh";
        useremail="harshbhnderi@gmail.com";
        photourl="";
      }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MyDrawer(username,useremail,photourl),
        appBar: AppBar(
          elevation: 0,
           foregroundColor: Colors.black,
           backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Deliver to ",style: ktext14_400_blue,),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              ),
              Text("$username"+ ", India",style: ktext14_400_red,)
            ],
          ),
          actions: [
            Container(
              child:Padding( 
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(photourl,
                      height: MediaQuery.of(context).size.height/5,
                      width: MediaQuery.of(context).size.width/7,
                    ),
                  ),
                  ),
                )
              )
    ]
            ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text("Welcome Foody!",style: ktext20_600,),
                SizedBox(
                  height: MediaQuery.of(context).size.height/50,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Find Your Food",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(FontAwesomeIcons.sliders, color:Color.fromRGBO(254, 114, 76, 1) ,),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nearby Me", style: ktext18_500_blue,),
                    Text("See All(12)", style: ktext18_500_red,)
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/50,
                ),
                RestaurantContainer(
                  RName: "Hungry Station",
                  RAddress: "Jail Road,Zinda Bazar,Syhlet",
                  prefiximage: "restarunt1.jpg",
                  suffiximage: "mirchi.png",

                ),
                SizedBox(height: 5,),
                RestaurantContainer(
                  RName: "Artisan Coffee Shop",
                  RAddress: "Mira Bazar,Syhlet",
                  prefiximage: "restarunt2.jpg",
                  suffiximage: "coffee.png",

                ),
                SizedBox(height: 5,),
                RestaurantContainer(
                  RName: "KFC",
                  RAddress: " Zindabazar Road, Syhlet",
                  prefiximage: "restarunt3.jpg",
                  suffiximage: "leaf.png",
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Restarunt", style: ktext18_500_blue,),
                    Text("See All(12)", style: ktext18_500_red,)
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/50,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularRestarunt(),
                      PopularRestarunt(),
                      PopularRestarunt(),
                      PopularRestarunt(),
                      PopularRestarunt(),
                      PopularRestarunt(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
          bottomNavigationBar: BottomBar()
      ),
    );
  }
}



