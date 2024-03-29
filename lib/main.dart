import 'package:flutter/material.dart';
import 'package:xox/router/app_router.dart';



Future<void> main()async  {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(const AppState());
}



class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainApp();
  }
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
     theme: ThemeData.dark(),
    );
  }
}



