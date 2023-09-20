import 'package:flutter/material.dart';
import 'package:holo_zoo/views/widgets/gradient_text.dart';
import 'package:holo_zoo/views/widgets/topic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Column(
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Topic(
                      text: "TOP TRENDING",
                      icon: Icon(Icons.local_fire_department_sharp)),
                  Topic(
                      text: "BIRDS",
                      icon: Icon(Icons.favorite_outline_rounded)),
                  Topic(
                      text: "MAMMALS", icon: Icon(Icons.electric_bolt_rounded)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
