import 'package:flutter/material.dart';
import 'package:provider_app/services/firestore_service.dart';
import 'screens/home.dart';
import 'package:provider/provider.dart';
import 'providers/settings_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FirestoreService _db = FirestoreService();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context)=> SettingsProvider(),),
        StreamProvider(create: (BuildContext context) => _db.getReports(),)
      ],
          child: MaterialApp(
        title: 'Wax App',
        theme: ThemeData(        
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrangeAccent),
        home: Home()
      ),
    );
  }
}