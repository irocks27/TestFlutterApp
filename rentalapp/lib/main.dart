import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Generated during `flutterfire configure`

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class Car {
  final String name;
  final String imageUrl;
  final String description;

  Car({required this.name, required this.imageUrl, required this.description});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Car Rental App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Car> cars = [
    Car(
      name: 'Tesla Model 3',
      imageUrl: 'https://via.placeholder.com/150', // Placeholder image
      description: 'A fast and electric car, perfect for city driving.',
    ),
    Car(
      name: 'BMW 5 Series',
      imageUrl: 'https://via.placeholder.com/150', // Placeholder image
      description: 'Luxurious and comfortable sedan for long trips.',
    ),
    Car(
      name: 'Audi A4',
      imageUrl: 'https://via.placeholder.com/150', // Placeholder image
      description: 'A sleek and stylish car with excellent handling.',
    ),
    // Add more cars here
  ];

  void _bookCar(String carName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('You have booked $carName!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            final car = cars[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.network(
                      car.imageUrl,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            car.name,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            car.description,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => _bookCar(car.name),
                      child: const Text('Book Now'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}