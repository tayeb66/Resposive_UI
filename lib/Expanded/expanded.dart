import 'package:flutter/material.dart';

class ExpandedWidgetPage extends StatefulWidget {
  const ExpandedWidgetPage({super.key});

  @override
  State<ExpandedWidgetPage> createState() => _ExpandedWidgetPageState();
}

class _ExpandedWidgetPageState extends State<ExpandedWidgetPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpandedWidgetPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // padding contains 20% of all screen
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 6, // this container contains 60% of width screen
                    child: Container(
                                  height: 150,
                                  //width: size.width,
                                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                    child: Text('${size.toString()}',textScaleFactor: 2,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                                  ),
                                ),
                  ),
              const SizedBox(width: 10,),
              Expanded(
                flex: 4, // this container contains 30% of width screen
                child: Container(
                  height: 150,
                  //width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text('${size.toString()}',textScaleFactor: 2,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                  ),
                ),
              ),
                ],
              ),
              const SizedBox(height: 10,),
              Expanded(
                child: Container(
                height: 150,
                //width: size.width,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text('${size.toString()}',textScaleFactor: 2,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                ),
              ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 150,
                //width: size.width,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text('${size.toString()}',textScaleFactor: 2,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}