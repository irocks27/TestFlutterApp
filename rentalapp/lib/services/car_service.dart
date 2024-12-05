/*import 'package:rentalapp/models/car.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CarService {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static Future<List<Car>> fetchCars() async {
    try {
      final QuerySnapshot snapshot = await _db.collection('cars').get();
      return snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return Car(
          name: data['name'],
          imageUrl: data['imageUrl'],
          description: data['description'],
        );
      }).toList();
    } catch (e) {
      print('Error fetching cars: $e');
      return [];
    }
  }
}*/
