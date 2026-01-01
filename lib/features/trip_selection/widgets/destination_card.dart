import "dart:ui";
import "package:flutter/material.dart";
import "package:ttr_app/core/models/destination.dart";

class DestinationCard extends StatelessWidget {
  final Destination destination;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isBlurred;

  const DestinationCard({
    super.key,
    required this.destination,
    required this.isSelected,
    required this.onTap,
    this.isBlurred = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 2.3,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: Stack(
            children: [
              InkWell(
                onTap: onTap,
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/background.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              if (isSelected)
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.check, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color(0xCCFFFFFF),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "${destination.departureCityName.toUpperCase()} > ${destination.arrivalCityName.toUpperCase()}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Text(
                                destination.points.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (isBlurred)
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                    child: Container(color: Colors.transparent),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
