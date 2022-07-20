import 'package:flutter/material.dart';
import './notifications_api/notifications_api.dart' as notifications;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo notificaciones',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => notifications.NotificationsAPI.showNotification(
              title: "lalala", body: "ololololo"),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Notificaciones'),
        ),
        body: const Center(
          child: Text('Nada'),
        ),
      ),
    );
  }
}
