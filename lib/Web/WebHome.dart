import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Static/Color.dart';

class WebHome extends StatefulWidget {
  const WebHome({Key? key}) : super(key: key);

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  List<bool> selected = [false,false,false];
  List<String> Menus =  ['Beranda','Member','Event'];
  bool Whatsapp = false;
  bool Discord = false;
  bool Login = false;
  Widget Menu(int index){
    return Padding(
      padding: EdgeInsets.only(left: 5,right: 5),
      child: AnimatedContainer(
        height: 50,
        width: 100,
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.only(top: (selected[index]) ? 5 : 10.0, bottom: !(selected[index]) ? 5 : 10),
        curve: Curves.bounceInOut,
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: selected[index] ? Secondary() : null
          ),
          child: Container(
            margin: EdgeInsets.all(10),
            child: InkWell(
              onTap: () {},
              child: Center(child: Text(Menus[index],style: TextStyle(color: Colors.white),)),
              onHover: (val) {
                setState(() {
                  selected[index] = val;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Background(),
        body: ListView(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 0.5),
                  color: Colors.black,
                  child: Image.asset(
                    "assets/img/Background.png",
                    fit: BoxFit.contain,
                    height: 329,
                    width: double.maxFinite,
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                          child: Container(
                              height: 330,
                              width: 220,
                              child: Container(
                                margin: EdgeInsets.only(top: 30),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      alignment: Alignment(-.2, 0),
                                      image: AssetImage("assets/img/favicon.png"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(bottom: 20),
                              )
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black.withOpacity(0.4),
                  height: 330,
                ),
                Column(
                  children: [
                    Container(
                      height: 55,
                      color: Primary(),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: FractionalOffset.centerLeft,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Text("PETA",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20,color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onHover: (value) {
                                        setState(() {
                                          Login = value;
                                        });
                                      },
                                      onTap: () {

                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 2000),
                                          width: 50,
                                          height: 50,
                                          child: Stack(
                                            children: [
                                              Image(image: AssetImage("assets/img/member.png")),
                                              Container(
                                                color: Login ? Colors.black.withOpacity(0.0) : Colors.black.withOpacity(0.4),
                                                height: double.maxFinite,
                                                width: double.maxFinite,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onHover: (value) {
                                        setState(() {
                                          Whatsapp = value;
                                        });
                                      },
                                      onTap: () async{
                                        final Uri url = Uri.parse('https://chat.whatsapp.com/Cn6yzC81Ln57xVFDC6uNSg');
                                        if (!await launchUrl(url)) {
                                        throw Exception('Could not launch $url');
                                        }

                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: AnimatedContainer(
                                            duration: Duration(milliseconds: 2000),
                                            width: 50,
                                            height: 50,
                                            child: Stack(
                                              children: [
                                                Image(image: AssetImage("assets/img/whatsapp.png")),
                                                Container(
                                                  color: Whatsapp ? Colors.black.withOpacity(0.0) : Colors.black.withOpacity(0.4),
                                                  height: double.maxFinite,
                                                  width: double.maxFinite,
                                                ),
                                              ],
                                            ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onHover: (value) {
                                        setState(() {
                                          Discord = value;
                                        });
                                      },
                                      onTap: () async {
                                        final Uri url = Uri.parse('https://chat.whatsapp.com/Cn6yzC81Ln57xVFDC6uNSg');
                                        if (!await launchUrl(url)) {
                                        throw Exception('Could not launch $url');
                                        }
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 2000),
                                          width: 50,
                                          height: 50,
                                          child: Stack(
                                            children: [
                                              Image(image: AssetImage("assets/img/discord.png")),
                                              Container(
                                                color: Discord ? Colors.black.withOpacity(0.0) : Colors.black.withOpacity(0.4),
                                                height: double.maxFinite,
                                                width: double.maxFinite,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Menu(0),
                                    // Menu(1),
                                    // Menu(2),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: FractionalOffset.centerLeft,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Text("",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20,color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: selected[0] ? 0 : 200,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    height: selected[1] ? 0 : 200,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    height: selected[2] ? 0 : 200,
                                    color: Colors.black,
                                  ),
                                  // SubMenuContact()
                                ],
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 330,
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Pembela Tanah Air",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("(PETA)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("Pembela Tanah Air adalah camp casual Undawn di Server Lost City",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 330),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50,right: 50),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 180,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image(image: AssetImage("assets/img/pvp.png"),width: 100,height: 100,),
                                      Text("Member",style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 180,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image(image: AssetImage("assets/img/pvp.png"),width: 100,height: 100,),
                                      Text("PVP Member",style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 180,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image(image: AssetImage("assets/img/pvp.png"),width: 100,height: 100,),
                                      Text("Real Money Trade",style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 180,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image(image: AssetImage("assets/img/pvp.png"),width: 100,height: 100,),
                                      Text("Team Camp Competition",style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 180,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image(image: AssetImage("assets/img/pvp.png"),width: 100,height: 100,),
                                      Text("Team Radiation",style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 180,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image(image: AssetImage("assets/img/pvp.png"),width: 100,height: 100,),
                                      Text("Evaluation",style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30
                                      ),)
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
                ),
              ],
            ),
          ],
        )
    );
  }
}
