import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: [
              Card(
                  clipBehavior: Clip.antiAlias,
                  shape: const CircleBorder(),
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Image.network(
                    'https://avatars.githubusercontent.com/u/85206010?v=4',
                    width: 150,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        'assets/images/profile_placeholder.jpg',
                        width: 150,
                      );
                    },
                  )),
              const Text(
                'Thiago Serafina',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.person),
                        label: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Edit profile'),
                              Icon(Icons.arrow_forward_ios_rounded)
                            ]),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_bag_rounded),
                        label: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('My reservations'),
                              Icon(Icons.arrow_forward_ios_rounded)
                            ]),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)))),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                      label: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Settings'),
                            Icon(Icons.arrow_forward_ios_rounded)
                          ]),
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            icon: const Icon(Icons.logout),
            label: const Text('Log out'),
            style: const ButtonStyle(splashFactory: NoSplash.splashFactory),
          )
        ],
      ),
    );
  }
}
