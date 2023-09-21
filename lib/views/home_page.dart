import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:holo_zoo/views/video.dart';
import 'package:holo_zoo/views/widgets/gradient_text.dart';
import 'package:holo_zoo/views/widgets/topic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
          )
        ],
        title: GradientText(
          text: "HoloZoo",
          size: 24,
          weight: FontWeight.w700,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.search)),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            height: MediaQuery.of(context).size.height / 18,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: TextField(
                                style: TextStyle(color: Colors.black),
                                cursorColor: Colors.black87,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search...",
                                    hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              // onTap: () {
              //   FocusScopeNode currentFocus = FocusScope.of(context);
              //
              //   if (!currentFocus.hasPrimaryFocus) {
              //     currentFocus.unfocus();
              //   }
              // },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Topic(
                      text: "TOP TRENDING",
                      icon: Icon(Icons.local_fire_department_sharp)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => VideoPlayerPage(
                              videoUrl:
                                  "https://siva-pythonpirates.github.io/butterfly.mp4"),
                        ),
                      );
                    },
                    child: Container(
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/butterfly.png'),
                        ),
                      ),
                    ),
                  ),
                  Topic(
                      text: "BIRDS",
                      icon: Icon(Icons.favorite_outline_rounded)),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => VideoPlayerPage(
                                  videoUrl:
                                      "https://siva-pythonpirates.github.io/peacock.mp4"),
                            ),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/peacock.png'),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => VideoPlayerPage(
                                  videoUrl:
                                      "https://siva-pythonpirates.github.io/KingFisher.mp4"),
                            ),
                          );
                        },
                        child: Container(
                          width: 140,
                          height: 84,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage('assets/kingfisher.jpeg'))),
                        ),
                      ),
                    ],
                  ),
                  Topic(
                      text: "MAMMALS", icon: Icon(Icons.electric_bolt_rounded)),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => VideoPlayerPage(
                                  videoUrl:
                                      "https://siva-pythonpirates.github.io/lion.mp4"),
                            ),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/lion.png'),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => VideoPlayerPage(
                                  videoUrl:
                                      "https://siva-pythonpirates.github.io/Dino.mp4"),
                            ),
                          );
                        },
                        child: Container(
                          width: 140,
                          height: 84,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage('assets/dino.jpeg'))),
                        ),
                      ),
                    ],
                  ),
                  Topic(text: "BIOLOGY", icon: Icon(Icons.energy_savings_leaf)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => VideoPlayerPage(
                              videoUrl:
                                  "https://siva-pythonpirates.github.io/Heart.mp4"),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 0.5,
                        height: 200,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(
                                  0.5,
                                  0.5,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('assets/heart.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
