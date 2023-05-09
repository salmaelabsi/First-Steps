/*Code by Iman Nabil*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../assets/colors.dart';

Future<bool> savePreferences(String name, String age) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("name",name);
  prefs.setString("age",age);
  return prefs.commit();

}

Future<String?> getBabyname() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.getString("name");
}
Future<String?> getBabyage() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.getString("age");
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({ super.key });
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TextEditingController  babyname = TextEditingController();
TextEditingController  babyage = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: (h*0.15), bottom: (h*0.1)),
          child: Text(" FIRST\nSTEPS", style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: "NexaBold"
          ),),
        ),
        Container(
          margin: EdgeInsets.only(right: (w*0.3),left: (w*0.3) ),
          child: TextFormField(

    keyboardType: TextInputType.text,
    maxLines: null,
    controller: babyname,
    textInputAction: TextInputAction.done,
    style: TextStyle(color: Colors.black),
    cursorColor: Colors.amber,
    decoration: InputDecoration(
    prefixIcon: Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      child: Icon(
        FontAwesomeIcons.babyCarriage,
      color: kbottomAppBarColor,
      ),
    ),
        hintText: "Enter yours baby's name",
        hintStyle:
        const TextStyle(color: Colors.grey, fontFamily: "NexaBold"),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
   ),
            ),

        ),

        Container(
          margin: EdgeInsets.only(right: (w*0.3),left: (w*0.3), top: (h*0.05) ),
          child: TextFormField(
controller: babyage,
            keyboardType: TextInputType.number,
            maxLines: null,
            textInputAction: TextInputAction.done,
            style: TextStyle(color: Colors.black),
            cursorColor: Colors.amber,
            decoration: InputDecoration(
              prefixIcon: Container(
                margin: EdgeInsets.only(right: 10, left: 10),

                child: Icon(
                  FontAwesomeIcons.calendar,
                  color: kbottomAppBarColor,
                ),
              ),
              hintText: "Enter yours baby's age in months",
              hintStyle:
              const TextStyle(color: Colors.grey, fontFamily: "NexaBold"),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),




        ),



        GestureDetector(
          onTap: () async{
          String babynamestring =   babyname.text;
          String babyagestring =   babyage.text;

if(babynamestring.isEmpty){
  showSnackBar("Plese enter your baby's name");

}else if(babyagestring.isEmpty){
  showSnackBar("Plese enter your baby's age");

}else{

savePreferences(babynamestring,babyagestring );

  showSnackBar("$babynamestring's information has been saved");


}
          },
            child: Container(
                height: kToolbarHeight,
                width: w*0.2 ,
                margin:  EdgeInsets.only(top: (h*0.1)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: kbottomAppBarColor),
                child: const Center(
                  child: Text("SAVE BABY INFORMATION",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "NexaBold",
                        color: Colors.white,
                      )),
                ),
               ),
        )
      ],
    ));
  }

  void showSnackBar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(
            text,
          )));
  }
}
