import 'package:flutter/material.dart';
import './src/app.dart';
import './src/notifications_api/notifications_api.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationsAPI.initialize();
  runApp(MyApp());
}
