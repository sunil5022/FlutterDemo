import 'package:flutter/material.dart';
import 'package:flutter_ui/AppHelper/AppHelper.dart';
import 'package:flutter_ui/AppTheme/AppTextStyle.dart';
import 'package:flutter_ui/screens/controller/ControllerHomeScreen.dart';
import 'package:flutter_ui/widgets/CustomAppBar.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RxString mm="".obs;
  @override
  Widget build(BuildContext context) {
    return GetX<ControllerHomeScreen>(
      init: ControllerHomeScreen(),
      builder: (controller)=>
       Scaffold(
        appBar: CustomAppBar.toolBar("Home", context),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          _showModalBottomSheet(context);
                        },
                        child: const Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.lock_outline),
                                SizedBox(width: 10),
                                Text("sunil_kk"),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    controller.updateFollowers("100088");
                                  },
                                  child: const Icon(Icons.attach_file_rounded)),
                              const SizedBox(width: 10),
                              InkWell(
                                  onTap: () {},
                                  child: const Icon(Icons.add_box_outlined)),
                              const SizedBox(width: 10),
                              InkWell(onTap: () {}, child: Icon(Icons.menu))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.add_reaction_rounded,color:Colors.green,size: 80),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [Text(controller.followers.value),const Text("posts")],
                            ),
                            const SizedBox(width: 30),
                            const Column(
                              children: [Text("107"),Text("followers")],
                            ),
                            const SizedBox(width: 30),
                            const Column(
                              children: [Text("200"),Text("following")],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
      
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black12),
                              color: Colors.black12,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: const Text(
                            "Edit profile",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
                      const SizedBox(width: 10),
      
                      Expanded(
                          child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black12),
                              color: Colors.black12,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: const Text(
                            "Share profile",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
      
                      //MyRow(),
                      const SizedBox(width: 10),
      
                      InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              border: Border.all(width: 1, color: Colors.black12),
                            ),
                            child: const Icon(Icons.hail),
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 60,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 160,
                          color: Colors.red,
                        ),
                        Container(
                          width: 160,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 160,
                          color: Colors.green,
                        ),
                        Container(
                          width: 160,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 160,
                          color: Colors.orange,
                        ),
                      ],
                    ),
      
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  const MyRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Container(
                color: Colors.grey,
                child: Text("START", style: AppTextStyle.nameOfTextStyle))),
        Expanded(child: Container(color: Colors.white, child: Text("CENTER"))),
        Expanded(child: Container(color: Colors.orange, child: Text("END"))),
      ],
    );
  }
}

void _showModalBottomSheet(BuildContext context){
   showModalBottomSheet(
     elevation: 10.0,
     backgroundColor: Colors.white60,
     context: context,
  builder: (BuildContext bc){
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Icon(Icons.linear_scale),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(

          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text("Account center",textAlign: TextAlign.start,),
                Icon(Icons.line_weight_outlined)
              ],
            ),
            SizedBox(height: 10),
            Container(

              padding: const EdgeInsets.all(1.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white54

              ),
              child:bottomSheetContent(context)
            )
          ],
        ),
      ),
    ],
  );
  }
  );
}

Column bottomSheetContent(context){
  return Column(
    children: [
      new ListTile(
          leading: new Icon(Icons.add_reaction_rounded,color:Colors.green,size: 30),
          trailing: new Icon(Icons.check_circle,color: Colors.blue,size: 30,),
          title: new Text('sunil_kk'),
          onTap: () => {}
      ),
      new ListTile(
        leading: new Icon(Icons.add_reaction_rounded,color:Colors.redAccent,size: 30),
        trailing: new Icon(Icons.info_outline_rounded,color: Colors.blue,size: 30),
        title: new Text('Sunil kumar'),
        onTap: () => {},
      ),
      new ListTile(
        leading: new Icon(Icons.add_circle_outline_sharp,color:Colors.green,size: 30),
        title: new Text('Add instragram account'),
        onTap: () => {},
      )
    ],
  );
}

ListView shortVideo(context){
  return ListView(
    children: [
      new ListTile(
          leading: new Icon(Icons.add_reaction_rounded,color:Colors.green,size: 30),
          trailing: new Icon(Icons.check_circle,color: Colors.blue,size: 30,),
          title: new Text('sunil_kk'),
          onTap: () => {}
      ),
      new ListTile(
        leading: new Icon(Icons.add_reaction_rounded,color:Colors.redAccent,size: 30),
        trailing: new Icon(Icons.info_outline_rounded,color: Colors.blue,size: 30),
        title: new Text('Sunil kumar'),
        onTap: () => {},
      ),
      new ListTile(
        leading: new Icon(Icons.add_circle_outline_sharp,color:Colors.green,size: 30),
        title: new Text('Add instragram account'),
        onTap: () => {},
      )
    ],
  );
}
