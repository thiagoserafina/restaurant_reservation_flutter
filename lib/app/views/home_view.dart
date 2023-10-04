import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: Column(
          children: [
            const Text(
              'Select a table',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(30, (index) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/27/9f/45/bc/restaurant.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          ListTile(
                            title: const Text('Table 2'),
                            subtitle: const Text('\$ 200'),
                            onTap: () {
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
