import "package:flutter/material.dart";
import "package:ttr_app/core/router/app_router.dart";
import "package:ttr_app/core/theme/app_theme.dart";

class TicketToRideApp extends StatelessWidget {
  const TicketToRideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Ticket to Ride",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}
