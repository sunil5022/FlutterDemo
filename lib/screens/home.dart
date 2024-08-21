import 'package:flutter/material.dart';
import 'package:flutter_ui/AppTheme/AppTextStyle.dart';
import 'package:flutter_ui/widgets/CustomAppBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.toolBar("Home", context),
      body: Container(
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
              color: Colors.yellow,
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Expanded(child: Container(color: Colors.grey,child: Text("START",style: AppTextStyle.nameOfTextStyle))),
                Expanded(child: Container(color: Colors.white,child: Text("CENTER"))),
                Expanded(child: Container(color: Colors.orange,child: Text("END"))),

              ],
            ),
            Expanded(
              child: Container(
              color: Colors.green,
            ),
            ),

          ],
        )),
      ),
    );
  }
}
