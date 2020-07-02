import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _launchURL(String toMailId) async {
    var url = 'mailto:$toMailId';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Hexcolor('#F2ECFF'),
        elevation: 0,
        iconTheme: new IconThemeData(
          color: Hexcolor('#8685EF'),
        ),
      ),
      drawer: Container(
        width: 1000,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(400, 20, 0, 20),
                    child: Text(
                      'My Flutter Projects',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    Navigator.pop(context);
                  },
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(400, 20, 0, 20),
                  child: Text(
                    'Work Experience',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(425, 20, 0, 20),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Hexcolor('#F2ECFF'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(100.0, 100.0, 100.0, 100.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 1000,
                            height: 325,
                            child: Card(
                              color: Hexcolor('#8685EF'),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Hey! I am Amey.',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 60.0,
                                          color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 25, 10, 0),
                                      child: Text(
                                        'I am a final year Computer Science student at VIT University, Vellore, India and an aspiring Flutter Developer for both Mobile and Web Apps.',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 25.0,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 25, 10, 0),
                                        child: Text(
                                          'You can find my resume, projects and my contacts here.',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 25.0,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 300,
                        width: 300,
                        child: Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Image.asset('images/IMG_2590.jpeg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Hexcolor('#E67DDB'),
                width: double.infinity,
                height: 1500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'My Flutter Projects',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 90,
                                color: Hexcolor('#7E287D')),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
                          child: SizedBox(
                            height: 400,
                            width: 1000,
                            child: Card(
                              elevation: 3.0,
                              color: Hexcolor('#F58650'),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      'Watered',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 0),
                                    child: Text(
                                      'Watered is an app, which monitors water usage and leakages in your daily household. It also calls nearby plumbers and show their last seen and how far they are, from your current location. It also provides an awareness feature, where users can read about how they can save Earth\'s resources and also donate for the cause.',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: RaisedButton(
                                        color: Hexcolor('#EC4B5C'),
                                        elevation: 3.0,
                                        child: Text(
                                          'View Source',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.white),
                                        ),
                                        onPressed: () async {
                                          if (await canLaunch(
                                              "https://github.com/ameysunu/watered.git")) {
                                            await launch(
                                                "https://github.com/ameysunu/watered.git");
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Container(
                            height: 540.0,
                            width: 270.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/watered.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(180, 120, 0, 0),
                            child: Container(
                              height: 540.0,
                              width: 270.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/newsforcovid.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
                          child: SizedBox(
                            height: 400,
                            width: 1000,
                            child: Card(
                              elevation: 3.0,
                              color: Hexcolor('#3E3A3D'),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      'News For Covid',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 0),
                                    child: Text(
                                      'This app helps providing only adequate news required regarding the pandemic of Corona-Virus. It covers all sectors of business, stocks, health and much more. This app provides only news regarding COVID\'s impact on these sectors with the help of NewsApi, an open source news API and with a personalized dashboard, users can update their preferences. ',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: RaisedButton(
                                        color: Hexcolor('#74535D'),
                                        elevation: 3.0,
                                        child: Text(
                                          'View Source',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.white),
                                        ),
                                        onPressed: () async {
                                          if (await canLaunch(
                                              "https://github.com/ameysunu/newsforcovid.git")) {
                                            await launch(
                                                "https://github.com/ameysunu/newsforcovid.git");
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Work Experience',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 90.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 80, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 300.0,
                            width: 700.0,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Card(
                                color: Colors.black,
                                elevation: 3.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 0),
                                      child: Text(
                                        'Human Resources Head',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 40,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 0),
                                      child: Text(
                                        'Instrument Society of India-VIT Vellore',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 0, 0),
                                      child: Text(
                                        'April 2019 - May 2020',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          color: Colors.white54,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      child: Text(
                                        'Managed student recruitments, delegation and any discrepancies in the chapter',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          color: Colors.white38,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 300.0,
                            width: 800.0,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Card(
                                color: Colors.black,
                                elevation: 3.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 0),
                                      child: Text(
                                        'Technical Intern',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 40,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 0),
                                      child: Text(
                                        'Computer Revolution(U) Ltd.',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 0, 0),
                                      child: Text(
                                        'May 2018 - June 2018',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          color: Colors.white54,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      child: Text(
                                        'Microsoft Office 365 Migration for enterprises depending on user requirement and developing web apps on Azure Cloud and Docker were the main domains I worked on.',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          color: Colors.white38,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black,
                width: double.infinity,
                height: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Contact',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 90.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'I would really appreciate, if you would hit me up with any doubts or any task. I\'ll be in touch as soon as I can.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(200, 20, 0, 0),
                            child: SizedBox(
                              height: 100.0,
                              width: 100.0,
                              child: InkWell(
                                child: Card(
                                  color: Colors.black,
                                  child: Image.asset('images/email.png'),
                                ),
                                onTap: () =>
                                    _launchURL('ameysunu00719@gmail.com'),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(200, 20, 0, 0),
                            child: SizedBox(
                              height: 100.0,
                              width: 100.0,
                              child: InkWell(
                                child: Card(
                                  color: Colors.black,
                                  child: Image.asset('images/linkedin.png'),
                                ),
                                onTap: () async {
                                  if (await canLaunch(
                                      "https://www.linkedin.com/in/amey-sunu-187103171/")) {
                                    await launch(
                                        "https://www.linkedin.com/in/amey-sunu-187103171/");
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(200, 20, 0, 0),
                            child: SizedBox(
                              height: 100.0,
                              width: 100.0,
                              child: InkWell(
                                child: Card(
                                  color: Colors.black,
                                  child: Image.asset('images/facebook.png'),
                                ),
                                onTap: () async {
                                  if (await canLaunch(
                                      "https://www.facebook.com/ameysunu.sunu")) {
                                    await launch(
                                        "https://www.facebook.com/ameysunu.sunu");
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(200, 20, 0, 0),
                            child: SizedBox(
                              height: 100.0,
                              width: 100.0,
                              child: InkWell(
                                child: Card(
                                  color: Colors.black,
                                  child: Image.asset('images/github.png'),
                                ),
                                onTap: () async {
                                  if (await canLaunch(
                                      "https://www.github.com/ameysunu")) {
                                    await launch(
                                        "https://www.github.com/ameysunu");
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Hexcolor('#363636'),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Made with 💖 by Amey on Flutter',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.white,
                      ),
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
}
