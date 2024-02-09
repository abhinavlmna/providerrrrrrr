import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerrrrrrr/proapi/Products.dart';

class Productsss with ChangeNotifier {
  List<Products>? products;

  void fetchProducts() {
    List<Products> products;
    notifyListeners();
  }
}

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<Productsss>(create: (_) => Productsss())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Products>? products;

  void fetchProducts() {
    setState(() {
      List<Products>? products;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Productsss>(context);
    return Scaffold(
      body:ListView.builder(itemBuilder: (BuildContext context, int index) {
        
      },)
    );
  }
}
