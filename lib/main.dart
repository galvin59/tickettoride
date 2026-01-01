import "package:flutter/material.dart";
import "package:ttr_app/app.dart";
import "package:ttr_app/core/di/injection.dart";
import "package:ttr_app/core/services/i_game_service.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();
  await getIt<IGameService>().initialize();

  runApp(const TicketToRideApp());
}
