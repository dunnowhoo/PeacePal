import 'login_page.dart';

void main() {
  runApp(MyMentalHealthApp());
}

class MyMentalHealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PeacePal Mental Health',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: {
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
