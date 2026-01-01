import "package:flutter/material.dart";
import "package:ttr_app/core/router/app_router.dart";

class TicketToRideApp extends StatelessWidget {
  const TicketToRideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Ticket to Ride: Europe",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      routerConfig: appRouter,
    );
  }
}
