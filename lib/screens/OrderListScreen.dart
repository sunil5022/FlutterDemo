import 'package:flutter/material.dart';
import 'package:flutter_ui/AppTheme/AppTextStyle.dart';
import 'package:flutter_ui/screens/controller/ControllerOrderScreen.dart';
import 'package:flutter_ui/widgets/CustomAppBar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key});

  @override
  State<OrderListScreen> createState() => _OrderlistscreenState();
}

class _OrderlistscreenState extends State<OrderListScreen> {

  List<Widget>? _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      mainBody(),
      settings(),
    ];
  }
  // final ControllerOrderScreen controller =
  // Get.put(ControllerOrderScreen(), permanent: false);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerOrderScreen>(
        init:ControllerOrderScreen(),
        builder: (controller){
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: CustomAppBar.toolBarForOrderList("Order List", context),
              bottomNavigationBar: buildBottomNavigationMenu(context,controller),
              body: Obx(()=>Center(
                child:_pages![controller.tabIndex.value],

              )
              // body: mainBody(),
            ),
            ),
          );

    });

  }
}

Widget mainBody() {
  return Column(
    children: [
      TabLayout(),
      Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [leftSidePart(), rightSidePart()],
        ),
      )
    ],
  );
}

Widget TabLayout() {
  return Container(
    height: 48,
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: Colors.black12),
    ),
    child: TabBar(
      labelStyle: const TextStyle(
          color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
      unselectedLabelColor: Colors.grey,
      splashBorderRadius: BorderRadius.circular(20),
      tabs: const [
        Tab(text: 'Active Order'),
        Tab(text: 'Order History'),
      ],
    ),
  );
}

Column leftSidePart() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 20,
      ),
      Text("#123493838983", style: AppTextStyle.boldTextStyle),
      SizedBox(height: 2),
      Row(
        children: [
          Text("Name : ", style: AppTextStyle.robotoMediumTextStyleColorGrey),
          Text("Sunil", style: AppTextStyle.nameOfTextStyle),
        ],
      ),
      SizedBox(height: 2),
      Row(
        children: [
          Text("Phone : ", style: AppTextStyle.robotoMediumTextStyleColorGrey),
          Text("9830492944", style: AppTextStyle.nameOfTextStyle),
        ],
      ),
      SizedBox(height: 2),
      Row(
        children: [
          Text("Order Type : ",
              style: AppTextStyle.robotoMediumTextStyleColorGrey),
          Text("Takeout", style: AppTextStyle.nameOfTextStyle),
        ],
      ),
      SizedBox(height: 2),
      Row(
        children: [
          Text("Status : ", style: AppTextStyle.robotoMediumTextStyleColorGrey),
          Text("Open", style: AppTextStyle.nameOfTextStyle),
        ],
      ),
      SizedBox(height: 2),
    ],
  );
}

Column rightSidePart() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 20,
      ),
      OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text('Hide'),
      ),
      const SizedBox(height: 2),
      OutlinedButton(
        onPressed: () {},
        child: Text('Print'),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

    ],
  );
}

final TextStyle unselectedLabelStyle = TextStyle(
    color: Colors.white.withOpacity(0.5),
    fontWeight: FontWeight.w500,
    fontSize: 12);

final TextStyle selectedLabelStyle =
TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

buildBottomNavigationMenu(BuildContext context,ControllerOrderScreen controller){
  return Obx(()=> MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: SizedBox(
        height: 60,
        child: BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            backgroundColor: Colors.blue,
            unselectedItemColor: Colors.white.withOpacity(0.4),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(icon: Container(
                child: Icon(
                    Icons.home,
                    size: 30,

                ),

              ),
                label: 'Home',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(icon: Container(
                child: Icon(
                  Icons.settings,
                  size: 30,

                ),
              ),
                label: 'settings',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              )
            ]),
      ))
  );
}


Widget settings(){
  return Container(
    child: const Center(
      child: Text("Setting Screen", style:TextStyle(color: Colors.blue),),
    ),

  );
}


