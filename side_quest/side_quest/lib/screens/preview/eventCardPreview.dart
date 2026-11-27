import 'package:flutter/material.dart';
import 'package:side_quest/widgets/eventCard.dart';

class EventCardPreview extends StatelessWidget {
  const EventCardPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF8F6F0),
      body: Center(
        child: EventCard(
          eventName: 'Art Workshop',
          address: 'Downtown Edmonton',
          dateTime: 'Nov 28 · 6:00 PM',
          saved: false
        ),
      ),
    );
  }
}