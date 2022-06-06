import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/button_with_icon.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isGrid = true;

  buildmyDrawer() {
    return Drawer(
      child: ListView(
        children: [
          // DrawerHeader(
          //
          //   child: Text(
          //     "My Notes",
          //     style: TextStyle(
          //       fontSize: 30,
          //
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 40,
          ),
          Text(
            "My Notes",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ButtonWithIcon(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: buildmyDrawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          title: Material(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 244, 247, 252),
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                    IconButton(
                      splashRadius: 22,
                      onPressed: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Search your notes",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    // SizedBox(),
                    IconButton(
                      splashRadius: 22,
                      onPressed: () {},
                      icon: isGrid
                          ? Icon(
                              Icons.grid_view,
                              color: Colors.black,
                            )
                          : Icon(
                              Icons.splitscreen,
                              color: Colors.black,
                              size: 25,
                            ),
                    ),
                    IconButton(
                      splashRadius: 22,
                      onPressed: () {},
                      icon: CircleAvatar(
                        radius: 18,
                        backgroundColor: Color.fromARGB(255, 120, 144, 156),
                        child: Center(
                          child: Text(
                            "A",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
