import 'package:chef_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:Routes.intitlRoute ,
      onGenerateRoute: AppRoutes.generateRoute,
      title: 'Chef APP',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    
    );
  }
}

