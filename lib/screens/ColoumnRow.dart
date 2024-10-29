import 'package:flutter/material.dart';

class ColoumnRow extends StatelessWidget {
  const ColoumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Column 1',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Column 2 ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Column 1',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'Column 2 ',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ],
        ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Text(
        //       'Column 1',
        //         style: Theme.of(context).textTheme.headlineMedium,
        //     ),
        //     Text(
        //       'Column 2 ',
        //        style: Theme.of(context).textTheme.headlineMedium,
        //     ),
        //
        //
        //   ],
        // ),
      ),
    );
  }
}
