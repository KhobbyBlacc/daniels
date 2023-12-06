import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

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
       const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
            Text(
              'No Favorites yet',
            ),
            Icon(Icons.favorite, color: Colors.grey,)
         ],
       ),

        const SizedBox(height: 20,),
       ])
    );
  }
}