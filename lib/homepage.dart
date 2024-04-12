import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:selesua/utils.dart/carouselanimation.dart';
import 'package:selesua/utils.dart/biographies.dart';
import 'package:selesua/utils.dart/blogs.dart';
import 'package:selesua/utils.dart/events.dart';
import 'package:selesua/utils.dart/searchbar.dart';
import 'package:selesua/utils.dart/stories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 2, vsync: this);
  //   // Set vsync to 'this' since this class implements the TickerProvider
  // }

  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    //TabController _tabController = TabController(length: 4, vsync: this);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Selesua',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'BioRhyme',
              fontSize: 25,
              color: Color.fromARGB(255, 238, 53, 115),
            ),
          ),
          actions: [
            Row(
              children: [
                ClipRRect(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/bookicon.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 238, 53, 115),
                  ),
                )
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                const CarouselSliderAnimation(),
                //search bar
                const searchbar(),
                Container(
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                        labelColor: Color.fromARGB(255, 238, 53, 115),
                        unselectedLabelColor: Colors.black,
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 10, right: 20),
                        tabs: [
                          Tab(text: 'Stories'),
                          Tab(text: 'Blog'),
                          Tab(text: 'Events'),
                          Tab(text: 'Biographies'),
                        ]),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: TabBarView(children: [
                    Stories(),
                    Blogs(),
                    Events(),
                    Biographies(),
                  ]),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentindex,
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
            items: [
              SalomonBottomBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                  selectedColor: Colors.pink.shade50),
              SalomonBottomBarItem(
                  icon: Icon(Icons.chat_bubble_outline),
                  title: Text('Chats'),
                  selectedColor: Colors.pink.shade50),
              SalomonBottomBarItem(
                  icon: Icon(Icons.people_alt_outlined),
                  title: Text('Consult'),
                  selectedColor: Colors.pink.shade50),
              SalomonBottomBarItem(
                  icon: Icon(Icons.person_add_alt),
                  title: Text('Vents'),
                  selectedColor: Colors.pink.shade50),
              SalomonBottomBarItem(
                  icon: Icon(Icons.phone_forwarded_sharp),
                  title: Text('Hotline'),
                  selectedColor: Colors.pink.shade50),
            ]),
      ),
    );
  }
}
