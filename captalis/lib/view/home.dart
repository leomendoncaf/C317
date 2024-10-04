import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: const AssetImage("assets/logo.png"),
              width: size.width * .8,
            ),
            const SizedBox(height: 50),
            const Text(
              'Captalis',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 58,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Metrificando a felicidade.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: size.width * .8,
              child: FloatingActionButton(
                onPressed: () {},
                isExtended: true,
                child: const Text('Fazer Feedback',
                style: TextStyle(fontSize: 15),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
