/*import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore

class Car {
  final String name;
  final String imageUrl;
  final String description;

  Car({
    required this.name,
    required this.imageUrl,
    required this.description,
  });

  // Factory method to create a Car object from Firestore data
  factory Car.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Car(
      name: data['name'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      description: data['description'] ?? '',
    );
  }
}*/
