

import 'package:flutter/material.dart';
import 'package:flutter_new_ui/widgets/custom_listview.dart';
import 'package:flutter_new_ui/widgets/my_custom_appbar.dart';

void main() {
 runApp(const MYApp()); 
}

class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
home: SafeArea(
  child: Scaffold(
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    floatingActionButton: FloatingActionButton(
      shape:  RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
  ),
      backgroundColor: Color.fromARGB(255, 26, 180, 211),
      onPressed: (){},
    child: Icon(Icons.add,size: 25,color: Colors.white,),),
    body: HomeScreen(),
  ),
),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(height: 25),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                FoldingItem(
                  isOpen: !isLoading,
                  child: GradientListCardView(
                    weatherCondition: "Rainy",
                    weatherIcon: Icons.cloud,
                  ),
                ),
                SizedBox(height: 5),
                FoldingItem(
                  isOpen: !isLoading,
                  child: GradientListCardView(
                    colors: [Colors.orange, Colors.amber],
                    iconColor: Colors.yellow,
                    cityName: "Una",
                    temperature: "22°",
                    weatherIcon: Icons.sunny,
                  ),
                ),
                SizedBox(height: 5),
                FoldingItem(
                  isOpen: !isLoading,
                  child: GradientListCardView(
                    colors: [Colors.purple, Colors.lightBlue],
                    iconColor: Colors.blueGrey,
                    weatherIcon: Icons.light,
                    weatherCondition: "Lightning",
                    temperature: "20°",
                  ),
                ),
                SizedBox(height: 5),
                FoldingItem(
                  isOpen: !isLoading,
                  child: GradientListCardView(
                    colors: [Colors.green, Colors.greenAccent],
                    iconColor: Colors.deepOrange,
                    temperature: "32°",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}