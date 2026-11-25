import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String eventName;
  final String address;
  final String dateTime;

  const EventCard({
    super.key,
    required this.eventName,
    required this.address,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,

      decoration: BoxDecoration(
        color: const Color(0xFFE4DFD0),
        borderRadius: BorderRadius.circular(18),
      ),

      clipBehavior: Clip.antiAlias,

      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // Event image
          Image.asset(
            'assets/events_example.jpg',
            width: double.infinity,
            height: 120,
            fit: BoxFit.cover,
          ),

          // Event information
          Padding(
            padding: const EdgeInsets.all(10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 4),

                Text(
                  address,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6D4740),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 2),

                Text(
                  dateTime,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6D4740),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}