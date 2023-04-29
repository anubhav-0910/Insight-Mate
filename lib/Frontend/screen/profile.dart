import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class myProfile extends StatefulWidget {
  const myProfile({super.key});

  @override
  State<myProfile> createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
  Widget listTile(
      {required IconData icon, required String title, required onTab1}) {
    return Column(
      children: [
        const Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Gotham',
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          onTap: onTab1,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.network(
              fit: BoxFit.cover,
              'https://static.vecteezy.com/system/resources/previews/021/608/790/large_2x/chatgpt-logo-chat-gpt-icon-on-black-background-free-vector.jpg',
            )),
        title: const Text(
          'AI Assistants',
          style: TextStyle(
              fontFamily: 'Gotham',
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 19),
        ),
        centerTitle: true,
        toolbarHeight: 50,
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 15, 1, 1),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 8, 8, 8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 250,
                            height: 80,
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Aryan Kumar",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: 'Gotham',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Aryan@gmail.com",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                        fontFamily: 'Gotham',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Text(
                          'General',
                          style: TextStyle(
                            fontFamily: 'Gotham',
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        title: Divider(
                          color: Colors.white,
                          height: 36,
                          thickness: 0.2,
                        ),
                      ),
                      listTile(
                          icon: Icons.person,
                          title: "Personal Info",
                          onTab1: () {}),
                      listTile(
                          icon: Icons.security,
                          title: "Security",
                          onTab1: () {}),
                      listTile(
                          icon: Icons.language_outlined,
                          title: "Languages",
                          onTab1: () {}),
                    ],
                  ),
                ),
                const ListTile(
                  leading: Text(
                    ' About',
                    style: TextStyle(
                      fontFamily: 'Gotham',
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Divider(
                    color: Colors.white,
                    height: 36,
                    thickness: 0.2,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 7, 6, 6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      listTile(
                          icon: Icons.help_outline,
                          title: "Help Center",
                          onTab1: () {}),

                      listTile(
                          icon: Icons.policy_outlined,
                          title: "Privacy policy",
                          onTab1: () {}),
                      listTile(
                          icon: Icons.exit_to_app_outlined,
                          title: "About Us",
                          onTab1: () {}),
                      listTile(
                          icon: Icons.exit_to_app_outlined,
                          title: "LogOut",
                          onTab1: () {}),

                      //  listTile(icon: Icons.shop, title: "My orders"),
                    ],
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 30),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromARGB(255, 59, 255, 85),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/robot-doing-peace-sign_1048-3527.jpg?w=2000'),
                  radius: 45,
                  backgroundColor: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const GNav(tabs: [
        GButton(
          icon: Icons.chat,
          rippleColor: Colors.white10,
          iconColor: Colors.white,
          text: ' Chat',
          textColor: Colors.white,
          iconActiveColor: Colors.white,
        ),
        GButton(
          rippleColor: Colors.white10,
          icon: Icons.home,
          iconColor: Colors.white,
          text: ' Home',
          textColor: Colors.white,
          iconActiveColor: Colors.white,
        ),
        GButton(
          rippleColor: Colors.white10,
          icon: Icons.history,
          iconColor: Colors.white,
          text: ' History',
          textColor: Colors.white,
          iconActiveColor: Colors.white,
        ),
        GButton(
          rippleColor: Colors.white10,
          icon: Icons.person,
          iconColor: Colors.white,
          text: ' Profile',
          textColor: Colors.white,
          iconActiveColor: Colors.white,
        ),
      ]),
    );
  }
}
