import 'package:flutter/material.dart';
//import 'package:flutter_activity_recognition/flutter_activity_recognition.dart';
//import 'package:flutter_activity_recognition/models/permission_request_result.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:fit_kit/fit_kit.dart';
void main() {
  runApp( MyApp());
}

_launchURLApp(String URL) async{
  if(URL == null){
    throw 'coudnt not launch $URL';
  }
  var url = Uri.parse(URL);
  if(await canLaunchUrl(url)){
    await launchUrl(url);}
  else {
    throw 'Could not launch $url';

  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Health Balance',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {

          //'/': (context) => HealthHomePage(title:" Hello User !!! Welcome to our App "),
          '/yoga': (context) => YogaPage(),
          '/exercise': (context) => MyExercises(),
          '/shop': (context) => ShopPage(),
          '/diet': (context) => DietPage(),
          '/healthypeople': (context) => YogaForHealthyHumans(),
          '/disabledpeople': (context) => YogaForDisabled(),
          '/pregnantpeople': (context) => YogaForPregnantWomen(),
          //'/trackactivity': (context) => RecentActivities()
        },
        home: const HealthHomePage(title: 'Flutter MyApp Home Page')
    );
  }
}


class HealthHomePage extends StatelessWidget{
  final String title;
  const HealthHomePage({Key? key,required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text(title),
              backgroundColor: Colors.green,
            ),
            body: Center(child: Column(children: <Widget>[
              Container(
                  child: Text("HEALTH BALANCE",style: TextStyle(fontSize: 50.0),)
              ),
              Container(
                  child: Text(' Health Balance shows amazing features for its users such as YOGA COURSES,Workout exercises, diet plans for maintaining proper health and SHOP clothes and HEALTH products with amazing discount.User  data is protected ', style: TextStyle(fontSize: 20.0),)
              ),
              Container(
                padding: EdgeInsets.all(100.50),
                width: 200.0,
                height: 200.0,
                decoration:   const BoxDecoration(
                    image:  DecorationImage(


                      image: AssetImage(
                          'logo.jpg'
                      ),
                    )
                ),
              ),


              /* Container(
          child: Text(' YOGA', style: TextStyle(fontSize: 50.0),)
    ),
      Container(
        padding: EdgeInsets.all(100.50),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: ExactAssetImage('assets/sunsetyoga.jpg'),
              fit: BoxFit.fitHeight,
            )
        ),
      ),
      Container(
        margin: EdgeInsets.all(25),
        child: TextButton(
          child: Text(' Get Started', style: TextStyle(fontSize: 20.0),),
          onPressed: () {
            Navigator.pushNamed(context, '/yoga');
          },
        ),
      ),
      Container(
          child: Text(' EXERCISE ', style: TextStyle(fontSize: 20.0),)
      ),
    Container(
    margin: EdgeInsets.all(25),
    child: TextButton(
    child: Text(' Get Started', style: TextStyle(fontSize: 20.0),),
    onPressed: () {
      Navigator.pushNamed(context, '/exercise');
    },
    ),
    ),
      Container(
          child: Text(' SHOP ', style: TextStyle(fontSize: 20.0),)
      ),
    Container(
    margin: EdgeInsets.all(25),
    child: TextButton(
    child: Text(' Get Started', style: TextStyle(fontSize: 20.0),),
    onPressed: () {
      Navigator.pushNamed(context, '/shop');
    },
    ),
    ),
      Container(
          child: Text(' Diet ', style: TextStyle(fontSize: 20.0),)
      ),
      Container(
        margin: EdgeInsets.all(25),
        child: TextButton(
          child: Text(' Get Started', style: TextStyle(fontSize: 20.0),),
          onPressed: () {
            Navigator.pushNamed(context, '/diet');
          },
        ),
      )*/
            ]
            )),


            drawer: Drawer(
              child: ListView(
                padding: const EdgeInsets.all(0),
                children:[
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: Colors.green),
                      accountName: Text(
                        "Sumana Yellapantula",
                        style: TextStyle(fontSize: 18),
                      ),
                      accountEmail: Text("sumanayellapantula@gmail.com"),
                      currentAccountPictureSize: Size.square(50),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 165, 255, 137),
                        child: Text(
                          "A",
                          style: TextStyle(fontSize: 30.0, color: Colors.blue),
                        ), //Text
                      ), //circleAvatar
                    ), //UserAccountDrawerHeader
                  ), //DrawerHeader
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text(' My Profile '),
                    onTap: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text(' YOGA '),
                    onTap: () {
                      Navigator.pushNamed(context, '/yoga');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text(' DIET '),
                    onTap: () {
                      Navigator.pushNamed(context, '/diet');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text(' WORKOUT '),
                    onTap: () {
                      Navigator.pushNamed(context, '/exercise');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text(' SHOP '),
                    onTap: () {
                      Navigator.pushNamed(context, '/shop');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text(' Tracking Progress '),
                    onTap: () {
                      Navigator.pushNamed(context,'/trackactivity');
                    },
                  ),
                ],
              ),
            )
        )
    );
  }

}


class YogaPage extends StatelessWidget{
  List<String> Basicimages = [
    "https://www.verywellfamily.com/thmb/W-WwyA7KdWyUtRztkjas2lwAEWE=/800x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/pregnancy-56e0a3b55f9b5854a9f859d6.jpg"
  ];
  List<String> TypesofYoga = [

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WELCOME TO YOGA PAGE"),
        ),
        body: Center(child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(25),
              child: TextButton(
                child: Text("YOGA FOR DISABLED PEOPLE", style: TextStyle(fontSize: 20.0),),
                onPressed: () {
                  Navigator.pushNamed(context,'/disabledpeople');
                },
              )),
          Container(
              margin: EdgeInsets.all(25),
              child: TextButton(
                child: Text("YOGA FOR Pregenant Women", style: TextStyle(fontSize: 20.0),),
                onPressed: () {
                  Navigator.pushNamed(context,'/pregnantpeople');
                },
              )),

          Container(
              margin: EdgeInsets.all(25),
              child: TextButton(
                child: Text("YOGA FOR Healthy PEOPLE", style: TextStyle(fontSize: 20.0),),
                onPressed: () {
                  Navigator.pushNamed(context,'/healthypeople');
                },
              )),
          Container(
            child: TextButton(
              child: Text(' Go Back ', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

        ]),
        ));
  }
}

class YogaForDisabled extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    appBar: AppBar(
      title: Text("WELCOME TO YOGA PAGE"),
    );
    return MaterialApp(
        home: Scaffold(
            body: Center(child: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.all(100.50),
                width: 200.0,
                height: 200.0,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/images.jpeg'),
                      fit: BoxFit.fitHeight,
                    )
                ),
              ),
              Container(
                  margin: EdgeInsets.all(25),
                  child: TextButton(
                    child: Text("GUIDE FOR YOGA", style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _launchURLApp("https://youtu.be/tyeMFy9KkTY");
                    },
                  )),
              Container(
                child: TextButton(
                  child: Text(' Go Back ', style: TextStyle(fontSize: 20.0),),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),

            ]),
            )));
  }
}

class YogaForPregnantWomen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    appBar: AppBar(
      title: Text("WELCOME TO YOGA PAGE"),
    );
    return MaterialApp(
        home: Scaffold(
            body: Center(child: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.all(100.50),
                width: 200.0,
                height: 200.0,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/pregnant-lady-background-illustration-vector.jpg'),
                      fit: BoxFit.fitHeight,
                    )
                ),
              ),
              Container(
                  margin: EdgeInsets.all(25),
                  child: TextButton(
                    child: Text("GUIDE FOR YOGA", style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      _launchURLApp("https://youtu.be/Cc_vRDbp7JE");
                    },
                  )),
              Container(
                child: TextButton(
                  child: Text(' Go Back ', style: TextStyle(fontSize: 20.0),),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),

            ]),
            )));
  }
}

class YogaForHealthyHumans extends StatefulWidget{
  const  YogaForHealthyHumans({Key? key}) : super(key:key);
  @override
  State<YogaForHealthyHumans> createState() => _YogaForHeathyHumans();
}
class _YogaForHeathyHumans extends State<YogaForHealthyHumans>{
  String? Astanga;
  String? Bikram;
  String? Iyengar;
  String? Hatha;
  String? Restorative;
  @override
  Widget build(BuildContext context) {
    var maps = {
      "Episode1": "https://youtu.be/JqZhod-eot8",
      "Episode2": "https://youtu.be/2wYN1IhnXT4",
      "Episode3": "https://youtu.be/rcp84GZa6C0",
      "Episode4": "https://youtu.be/zZRZIcBDgkc",
      "Episode5": "https://youtu.be/dEmqbp5u59s",
      "Episode6": "https://youtu.be/pzSLOAsd0uU",
      "Episode7": "https://youtu.be/ELKBgwl-C3I",
      "Episode8": "https://youtu.be/_e2Xcij207w",
      "Episode9": "https://youtu.be/qJzfZ6w0s4g",
      "Episode10": "https://youtu.be/MbfHqUbVP4A"
    };
    var maps2 = {
      "Episode1":"https://youtu.be/Ocg3InAEZMU",
      "Episode2":"https://youtu.be/1e2pDKZHNaI",
      "Episode3":"https://youtu.be/nnnRHJ12Sd4",
      "Episode4":"https://youtu.be/wzrO5IcICFg",
      "Episode5":"https://youtu.be/6n5q4e8v-KE",
      "Episode6":"https://youtu.be/V5i5Qz2IGJE",
      "Episode7":"https://youtu.be/GNNg30vnxaU"
    };
    var maps3 = {
      "Episode1":"https://youtu.be/JXQuLm0Q1iM",
      "Episode2":"https://youtu.be/LR72KqH24xM",
      "Episode3":"https://youtu.be/CZdKCPwn3gw",
      "Episode4":"https://youtu.be/GESFE2OWCBQ",
      "Episode5":"https://youtu.be/DpRh6nwNkJ0"
    };
    var maps4 = {
      "Episode1":"https://youtu.be/3YOYyQ8cb5c",
      "Episode2":"https://youtu.be/mzf2kFNf8Yw",
      "Episode3":"https://youtu.be/sdaYb7Pzl5E",
      "Episode4":"https://youtu.be/T5v8wMYWT9c",
      "Episode5":"https://youtu.be/01L4f_oT6DM",
      "Episode6":"https://youtu.be/sVqH6qPDdh0"

    };
    var maps5 = {
      "Episode1":"https://youtu.be/rrLkhg3fA0M",
      "Episode2":"https://youtu.be/40bPxbFUCj4",
      "Episode3":"https://youtu.be/ifH3uFL3-YU",
      "Episode4":"https://youtu.be/c56tAJ9KjRg",
      "Episode5":"https://youtu.be/VG6l3ddRGbY",
      "Episode6":"https://youtu.be/HUiZ_Rki4G8"
    };
    return Scaffold(
        appBar: AppBar(
          title: Text("WELCOME TO YOGA Courses"),
        ),
        body: Center(child: Column(children: <Widget>[
          Container(
              color: Colors.blue,
              child: const Text("Want to take course in Astanga Yoga? ",style:TextStyle(fontSize: 20))
          ),
          Container(

            child: DropdownButton<String>(
              value: Astanga,
              //elevation: 5,
              style: TextStyle(color: Colors.black),
              items: <String>[
                "Episode1",
                "Episode2",
                "Episode3",
                "Episode4",
                "Episode5",
                "Episode6",
                "Episode7",
                "Episode8",
                "Episode9",
                "Episode10"
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              hint: Text(
                "Please Choose What you want",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              onChanged: (String? value) {
                setState(() {
                  Astanga = value;
                });
                _launchURLApp(maps[Astanga].toString());
              },
            ),

          ),
          Container(
              color: Colors.blue,
              child: const Text("Want to take course in Bikram Yoga? ",style:TextStyle(fontSize: 20))
          ),
          Container(

            child: DropdownButton<String>(
              value: Bikram,
              //elevation: 5,
              style: TextStyle(color: Colors.black),
              items: <String>[
                "Episode1",
                "Episode2",
                "Episode3",
                "Episode4",
                "Episode5",
                "Episode6",
                "Episode7"
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              hint: Text(
                "Please Choose What you want",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              onChanged: (String? value) {
                setState(() {
                  Bikram = value;
                });
                _launchURLApp(maps2[Bikram].toString());
              },
            ),

          ),

          Container(
              color: Colors.blue,
              child: const Text("Want to take course in Iyengar Yoga? ",style:TextStyle(fontSize: 20))
          ),
          Container(

            child: DropdownButton<String>(
              value: Iyengar,
              //elevation: 5,
              style: TextStyle(color: Colors.black),
              items: <String>[
                "Episode1",
                "Episode2",
                "Episode3",
                "Episode4",
                "Episode5"
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              hint: Text(
                "Please Choose What you want",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              onChanged: (String? value) {
                setState(() {
                  Iyengar = value;
                });
                _launchURLApp(maps3[Iyengar].toString());
              },
            ),

          ),

          Container(
              color: Colors.blue,
              child: const Text("Want to take course in Hatha Yoga? ",style:TextStyle(fontSize: 20))
          ),
          Container(

            child: DropdownButton<String>(
              value: Hatha,
              //elevation: 5,
              style: TextStyle(color: Colors.black),
              items: <String>[
                "Episode1",
                "Episode2",
                "Episode3",
                "Episode4",
                "Episode5",
                "Episode6"
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              hint: Text(
                "Please Choose What you want",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              onChanged: (String? value) {
                setState(() {
                  Hatha = value;
                });
                _launchURLApp(maps4[Hatha].toString());
              },
            ),

          ),

          Container(
              color: Colors.blue,
              child: const Text("Want to take course in Restorative Yoga? ",style:TextStyle(fontSize: 20))
          ),
          Container(

            child: DropdownButton<String>(
              value: Restorative,
              //elevation: 5,
              style: TextStyle(color: Colors.black),
              items: <String>[
                "Episode1",
                "Episode2",
                "Episode3",
                "Episode4",
                "Episode5"
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              hint: Text(
                "Please Choose What you want",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              onChanged: (String? value) {
                setState(() {
                  Restorative = value;
                });
                _launchURLApp(maps5[Restorative].toString());
              },
            ),

          ),


          Container(
            child: TextButton(
              child: Text(' Go Back ', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

        ]),
        )
    );

  }
}


class MyExercises extends StatelessWidget{
  String dropdownvalue = 'Exercise for Eyes';
  var items = {
    'Exercise for Eyes': "https://youtu.be/-qkx4CdBMnM",
    'Exercise for Face': 'https://youtu.be/7dCpiRSGxT4',
    'Exercise for BURN CALORIES': 'https://youtu.be/_WCxWQdB3SI',
    'Exercise for ThighFat': 'https://youtu.be/UFBv0F3WQw4',
    'Exercise for Squats': 'https://youtu.be/_uZLFUnKSaM',
    'Exercise for Leg Exercises': 'https://youtu.be/Opi9dfVfACc',
    'Exercise for ABS': 'https://youtu.be/2pLT-olgUJs',
    'Exercise for Hips Dips Workout': 'https://youtu.be/LjmZ1YMOwws',
    'Exercise for Slim Arms Workout': 'https://youtu.be/8qDDtm6BOfw',
    'Exercise for Lose Nose Fat': 'https://youtu.be/0p1HKw3e_Pw',
    'Exercise for Chin Fat': 'https://youtu.be/wg-uslIi1J4'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WELCOME TO EXERCISE PAGE"),
        ),
        body: Center(child: Column(children: <Widget>[
          /*DropdownButton(
        value: dropdownvalue,
        icon: const Icon(Icons.keyboard_arrow_down), onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        for(var key in items.key) {
          return DropdownMenuItem(
            value: values,
            child: Text(key)
        )};
      ),*/
          Container(
            child: TextButton(
              child: Text(' Exercise for Eyes ', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _launchURLApp(items['Exercise for Eyes'].toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text(' Exercise for Face ', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _launchURLApp(items['Exercise for Face'].toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text('Exercise for BURN CALORIES', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _launchURLApp(items['Exercise for BURN CALORIES'].toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text('Exercise for ThighFat', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _launchURLApp(items['Exercise for ThighFat'].toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text('Exercise for Squats', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _launchURLApp(items['Exercise for Squats'].toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text('Exercise for Leg Exercises', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _launchURLApp(items['Exercise for Leg Exercises'].toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text('Exercise for ABS', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _launchURLApp(items['Exercise for ABS'].toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text('Exercise for Hips Dips Workout', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _launchURLApp(items['Exercise for Hips Dips Workout'].toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text('Exercise for Slim Arms Workout', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _launchURLApp(items['Exercise for Slim Arms Workout'].toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text('Exercise for Lose Nose Fat', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _launchURLApp(items['Exercise for Lose Nose Fat'].toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text('Exercise for Chin Fat', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _launchURLApp(items['Exercise for Chin Fat'].toString());
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text(' Go Back ', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ]),
        ));
  }
}
class ShopPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop now for best offers"),
      ),
      body: ListView(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: ExactAssetImage("womenwear.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: ExactAssetImage("assets/yogamat.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: ExactAssetImage("assets/fitbit.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: ExactAssetImage("assets/jacket.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: ExactAssetImage("assets/dailyvitals.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: ExactAssetImage("assets/choclate.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: ExactAssetImage("assets/menwear.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              ],options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),),
          ]),
    );
  }
}

class DietPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME TO DIET PAGE"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blueGrey,
          onPressed: () {

          },

          child: TextButton(
            child: Text(' Go Back ', style: TextStyle(fontSize: 20.0),),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



