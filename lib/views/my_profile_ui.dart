// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers
//import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_6419c10002/views/search_ui.dart';

class MyProfileUI extends StatelessWidget {
  const MyProfileUI({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/1.jpg",
      "assets/images/2.jpg",
      "assets/images/3.jpg",
      "assets/images/4.jpg",
      "assets/images/5.jpg",
      "assets/images/6.jpg",
      "assets/images/7.jpg",
      "assets/images/8.jpg",
      "assets/images/9.jpg",
      "assets/images/10.jpg",
      "assets/images/11.jpg",
      "assets/images/12.jpg"
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.15,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: MediaQuery.of(context).size.width * 0.25,
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.25,
                  backgroundImage: AssetImage(
                    'assets/images/wichaya.jpg',
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                "Tong",
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.09,
                ),
              ),
              Text(
                "Wichaya Pultanaanun",
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
              Text(
                "ID: 6419C10002",
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.01,
              ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'FOLLOW ME',
                style: GoogleFonts.kanit(),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                MediaQuery.of(context).size.width * 0.9,
                MediaQuery.of(context).size.width * 0.14,
              ),
              backgroundColor: Colors.black54
              ),
            ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.01,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchUI(),
                    ),
                  );
                },
                child: Text(
                  'SEARCH',
                  style: GoogleFonts.kanit(
                    color: Colors.black87,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                MediaQuery.of(context).size.width * 0.9,
                MediaQuery.of(context).size.width * 0.14,
              ),
              backgroundColor: Colors.white70
              ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.04,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.9,
                child: GridView.builder(
                  padding: EdgeInsets.all(0.0),
                  physics: ScrollPhysics(),
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(images[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
