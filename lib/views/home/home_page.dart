import 'package:flutter/material.dart';

class RobinHoodHomePage extends StatelessWidget {
  const RobinHoodHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Robin Hood'),
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Donate to Robin Hood',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text('Donate Food')),

            const SizedBox(height: 20),
            // RaisedButton(
            //   onPressed: () {
            //     // handle donate water button press
            //   },
            //   child: Text('Donate Water'),
            // ),
          ],
        ),
      ),
    );
  }
}
