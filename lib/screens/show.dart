
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'styleup.dart';

class Show extends StatelessWidget {
  const Show({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
          elevation: 0,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                    height: 500,
                    width: 500,
                    child: Lottie.asset('assets/lottie/fashion.json')),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const StyleUp()));
                      },
                      child: const Text('Style me up'))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ]));
  }
}
