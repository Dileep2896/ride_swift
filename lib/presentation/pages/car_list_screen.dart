import 'package:flutter/material.dart';
import 'package:ride_swift/data/models/car_model.dart';
import 'package:ride_swift/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});

  final List<Car> cars = [
    Car(
        model: "Fortuner GR",
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45),
    Car(
        model: "Fortuner GR",
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45),
    Car(
        model: "Fortuner GR",
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
        itemCount: cars.length,
      ),
    );
  }
}
