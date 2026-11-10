import 'package:flutter/material.dart';

import 'services/api_service.dart';

void main() => runApp(const CovoitCampusApp());

class CovoitCampusApp extends StatelessWidget {
  const CovoitCampusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PingPage());
  }
}

class PingPage extends StatelessWidget {
  const PingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Covoit'Campus")),
      body: Center(
        child: FutureBuilder<String>(
          future: ApiService().ping(),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Text('API injoignable : ${snapshot.error}');
            }
            return Text('API : ${snapshot.data}');
          },
        ),
      ),
    );
  }
}
