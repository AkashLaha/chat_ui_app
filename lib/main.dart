import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        drawerTheme: DrawerThemeData(scrimColor: Colors.transparent),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Social Media UI',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color(0xFF171717),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 10),
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Messages',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Online',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Groups',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'More',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              height: 220,
              top: 120,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                decoration: BoxDecoration(
                  color: Color(0xFF27c1a9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Favourite contacts',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildContactAvatar('Alia', 'img1.jpeg'),
                          buildContactAvatar('Rose', 'img2.jpeg'),
                          buildContactAvatar('Sandeep', 'img3.jpeg'),
                          buildContactAvatar('Laura', 'img4.jpg'),
                          buildContactAvatar('Ramirez', 'img5.jpeg'),
                          buildContactAvatar('Gordon', 'img6.jpeg'),
                          buildContactAvatar('Arun', 'img7.jpeg'),
                          buildContactAvatar('Asha', 'img8.jpg'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 296,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                child: ListView(
                  padding: EdgeInsets.only(left: 25, top: 30),
                  children: [
                    buildConversationRow(
                        'Rose', 'hlo how r u???', 'img2.jpeg', 2),
                    buildConversationRow(
                        'Sandeep', 'Good Morning', 'img3.jpeg', 0),
                    buildConversationRow(
                        'Laura', 'Can u solve this!!!!', 'img4.jpg', 6),
                    buildConversationRow('Arun', 'Kaha ho bro', 'img7.jpeg', 0),
                    buildConversationRow('Asha', 'hiii', 'img8.jpg', 0),
                    buildConversationRow(
                        'Alia', 'Boss is calling u!!!!', 'img1.jpeg', 1),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFEFFFFC),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit_outlined),
        backgroundColor: Color(0xFF27c1a9),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(40),
          ),
        ),
        backgroundColor: Colors.transparent,
        width: 275,
        elevation: 30,
        child: Container(
          decoration: BoxDecoration(color: Color(0xF71F1E1E), boxShadow: [
            BoxShadow(
                color: Color(0x3D000000), spreadRadius: 30, blurRadius: 50)
          ]),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    DrawerItem(
                      name: 'Settings',
                      icon: Icons.arrow_back_ios,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 29,
                            child: Text(
                              'A',
                              style: TextStyle(fontSize: 40),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Akash',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    DrawerItem(name: 'Account', icon: Icons.key),
                    DrawerItem(name: 'Chats', icon: Icons.message),
                    DrawerItem(
                        name: 'Notifications',
                        icon: Icons.notifications_active),
                    DrawerItem(
                      name: 'Data and Storage',
                      icon: Icons.storage,
                    ),
                    DrawerItem(name: 'Help', icon: Icons.help),
                    Divider(
                      height: 35,
                      indent: 0,
                      color: Color(0xFF27c1a9),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DrawerItem(name: 'Invite a Friend', icon: Icons.people)
                  ],
                ),
                DrawerItem(name: 'Log Out', icon: Icons.logout)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildConversationRow(
      String name, String message, String filename, int messageCount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      message,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: [
                  Text(
                    '18:03',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  if (messageCount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color(0xFF27c1a9),
                      child: Text(
                        messageCount.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
        Divider(
          indent: 70,
        )
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String name;
  final IconData icon;
  const DrawerItem({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 56,
            ),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('images/$filename').image,
      ),
    );
  }
}
