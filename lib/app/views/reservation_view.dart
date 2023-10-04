import 'package:flutter/material.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Your Button Text'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 35,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Table$index'),
                subtitle: Text('Reservation for $index people'),
              );
            },
          ),
        ),
      ],
    );
  }
}
