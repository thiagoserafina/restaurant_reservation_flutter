import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/27/9f/45/bc/restaurant.jpg',
                        width: 150,
                      ),
                      const ListTile(
                        title: Text('Restaurant 1'),
                        subtitle: Text('Location 1'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/27/9f/45/bc/restaurant.jpg',
                        width: 150,
                      ),
                      const ListTile(
                        title: Text('Restaurant 2'),
                        subtitle: Text('Location 2'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
