// Booking form (user selects dates, delivery, etc.)
/*import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Booking Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextButton(
              onPressed: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2023),
                  lastDate: DateTime(2030),
                );
                if (picked != null) {
                  setState(() {
                    _startDate = picked;
                  });
                }
              },
              child: Text(
                _startDate != null
                    ? 'Start Date: ${_startDate!.toLocal()}'
                    : 'Select Start Date',
              ),
            ),
            TextButton(
              onPressed: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2023),
                  lastDate: DateTime(2030),
                );
                if (picked != null) {
                  setState(() {
                    _endDate = picked;
                  });
                }
              },
              child: Text(
                _endDate != null
                    ? 'End Date: ${_endDate!.toLocal()}'
                    : 'Select End Date',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle booking logic here (use a service)
              },
              child: const Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}
*/