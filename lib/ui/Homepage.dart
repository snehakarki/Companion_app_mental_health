import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mental_health_tracker/model/sign_in_page.dart';
import 'package:mental_health_tracker/ui/therapist.dart';
import 'package:mental_health_tracker/ui/todo.dart';
import 'package:mental_health_tracker/util/checkbox_water.dart';
import '../util/Checkboxes.dart';
import '../util/hexcolor.dart';
import 'Breathe.dart';
import 'notification_service.dart';

class homepage extends StatefulWidget {
  String photoUrl;
  String name;
  String id;
   
  homepage(this.photoUrl,this.name,this.id);
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  int currentTab = 0;
  var userDetails;

  final db = FirebaseFirestore.instance;
  void tempFunc() async{
    var docSnapshot = await db.collection('MentalHealth').doc(widget.id).get();
    Map<String, dynamic>? data = docSnapshot.data();
    setState(() {
      userDetails = data;
    });
    // var ppl = data?['People_Talked_to'];
    WidgetsFlutterBinding.ensureInitialized();
    NotificationService().initializeNotification();
    NotificationService().showNotificationPeople(3, 'People Talked To --',data?['People_Talked_to']);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tempFunc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.contact_page_sharp),
                  label: 'Therapist',
                )
              ],
              currentIndex: currentTab,
              selectedItemColor: Colors.green.shade700,
              onTap: (index){
                setState(() {
                    currentTab = index;
                });
              },
            ),
            body: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40.0,left: 8,right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Hi,\n${widget.name}",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 32,
                                color: Colors.lightGreen.shade800,
                                fontFamily: 'JosefinSans',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(Radius
                                .circular(50.0)),
                            image: DecorationImage(image: NetworkImage(
                                widget.photoUrl),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey, //New
                                  blurRadius: 2.0,
                                  offset: Offset(3, 5))
                            ],
                          ),
                        ),
                        PopupMenuButton<int>(
                          icon: Icon(Icons.more_vert,color: Colors.green.shade800,),
                          iconSize: 40,
                          itemBuilder: (context) => [
                            PopupMenuItem(
                                value: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.logout,color: Colors.green,),
                                    Text(
                                      "Log Out",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w700
                                      ),
                                    )
                                  ],
                                )
                            ),
                            PopupMenuItem(
                                value: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.water_drop,size: 20,color: Colors.blue,),
                                    Icon(Icons.timer_rounded,size: 20,color: Colors.green,),
                                    CheckboxWater(userDetails?['Reminder_Water'], widget.id),
                                  ],
                                )
                            ),
                          ],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          color: Colors.white,
                          elevation: 3,
                          onSelected: (value) async {
                            if(value == 1){
                              logout();
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => SignInPage()));
                            }
                            if(value == 2){
                              var docSnapshot = await db.collection('MentalHealth').doc(widget.id).get();
                              setState(() {
                                userDetails = docSnapshot.data();
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18,top: 8,bottom: 8,right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "You Look Perfect :)",
                          style: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                            fontSize: 16
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            const snackBar = SnackBar(
                                content: Text("Smileeeeee :)"),
                                duration: Duration(seconds: 2),
                                backgroundColor: Colors.green
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Container(
                            height: 25,
                            width: 50,
                            child: Image.asset(
                              "images/IMG_20230528_110136.jpg",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  tabSelect(currentTab)

                ]
            ),
          );
  }

  Future<void> logout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }


  Widget tabSelect(int currentTab){
    if(currentTab == 0){
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width-20,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                borderRadius: BorderRadius.circular(20.0),

                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, //New
                      blurRadius: 2.0,
                      offset: Offset(3, 5))
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "How Many People did you\ntalk to today?",
                    style: TextStyle(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'JosefinSans',
                    ),
                  ),
                  Slider(
                    max: 10,
                    min: 0,
                    activeColor: Colors.green,
                    inactiveColor: Colors.grey,
                    divisions: 10,
                    value: userDetails?['People_Talked_to'].toDouble(),
                    onChanged: (double value) async{
                      db.collection('MentalHealth').doc(widget.id).update({"People_Talked_to" : value.round()});
                      var docSnapshot = await db.collection('MentalHealth').doc(widget.id).get();
                      setState(() {
                        userDetails = docSnapshot.data();
                      });
                    },
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.green.shade800,
                    ),
                    child: Center(
                      child: Text(
                        userDetails!['People_Talked_to'].toString(),
                        style: TextStyle(
                            color: Colors.green.shade200,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 8),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 2 - 20,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20.0),

                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, //New
                          blurRadius: 2.0,
                          offset: Offset(3, 5))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "See Your\nTO-DO List",
                        style: TextStyle(
                          color: Colors.green.withOpacity(0.9),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'JosefinSans',
                        ),
                      ),
                      SizedBox(height: 15,),
                      InkWell(
                        child: Icon(
                          Icons.calendar_month_outlined, color: Colors
                            .green.withOpacity(0.7), size: 70,),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TODO(widget.id)));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,top: 10,left: 16),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2- 20,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, //New
                          blurRadius: 2.0,
                          offset: Offset(3, 5))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Did you eat?",
                        style: TextStyle(
                          color: Colors.green.shade700,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'JosefinSans',
                        ),
                      ),
                      Row(
                        children: [
                          CheckboxExample(userDetails?['Breakfast'],widget.id,'Breakfast'),
                          Text(
                            "Breakfast",
                            style: TextStyle(
                              color: Colors.green.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CheckboxExample(userDetails?['Lunch'],widget.id,'Lunch'),
                          Text(
                            "Lunch",
                            style: TextStyle(
                              color: Colors.green.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CheckboxExample(userDetails?['Dinner'],widget.id,'Dinner'),
                          Text(
                            "Dinner",
                            style: TextStyle(
                              color: Colors.green.shade700,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 8,right: 8,bottom: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, //New
                      blurRadius: 2.0,
                      offset: Offset(3, 5))
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Feeling Anxious?\nDon't Worry\nLet's Breathe",
                    style: TextStyle(
                      color: Colors.green.shade800,
                      fontSize: 20,
                      fontFamily: 'JosefinSans',
                    ),
                  ),
                  SizedBox(width: 50,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(50.0)),
                            image: DecorationImage(
                              image: AssetImage("images/icon-512.png",),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey, //New
                                  blurRadius: 2.0,
                                  offset: Offset(3, 5))
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => breathe()));
                        },
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "App developed by - ",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'JosefinSans',
                    color: Colors.blue
                ),
              ),
              Icon(Icons.alternate_email,color: Colors.green,size: 20,),
              Text(
                " karki.sneha786@gmail.com",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'JosefinSans',
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          )
        ],
      );
    }
    else{
      return SizedBox(
        height: MediaQuery.of(context).size.height-250,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context,int index){
              return PeopleCard(context,index);
            }
        ),
      );
      // return Container();
    }
  }
  
  
}
