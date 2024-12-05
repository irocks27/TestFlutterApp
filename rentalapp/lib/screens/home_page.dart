/*import 'package:flutter/material.dart';
import 'package:rentalapp/widgets/car_item.dart';
import 'package:rentalapp/models/car.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Ensure this import is added
//import 'package:rentalapp/services/car_service.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Car>> _cars;

  @override
  void initState() {
    super.initState();
    _cars = fetchCarsFromFirestore(); // Fetching car data from service
  }

    // Fetch car data from Firestore
 Future<List<Car>> fetchCarsFromFirestore() async {
  try {
    final snapshot = await FirebaseFirestore.instance.collection('cars').get();
    print("Fetched ${snapshot.docs.length} cars from Firestore."); // Debug log
    return snapshot.docs.map((doc) {
      print("Car data: ${doc.data()}"); // Debug log
      return Car.fromFirestore(doc);
    }).toList();
  } catch (e) {
    print("Error fetching cars: $e"); // Debug log
    return [];
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Car Rental Marketplace')),
      body: FutureBuilder<List<Car>>(
        future: _cars,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No cars available.'));
          } else {
            var cars = snapshot.data!;
            return ListView.builder(
              itemCount: cars.length,
              itemBuilder: (context, index) => CarItem(
                car: cars[index],
                onTap: () {
                  // Action when a car item is tapped
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('You selected ${cars[index].name}')),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}*/
