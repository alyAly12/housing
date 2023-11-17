import 'package:bayut/features/home/presentation/view/widgets/proerty_card.dart';
import 'package:flutter/material.dart';
import '../../../data/models/property_model.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
          itemCount: Property.sampleData.length,
          itemBuilder: (context,index){
            final property = Property.sampleData[index];
            return PropertyCard(property: property);
          }
      ),
    );
  }
}
