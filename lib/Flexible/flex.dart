import 'package:flutter/material.dart';

class FlexWidgetPage extends StatefulWidget {
  const FlexWidgetPage({super.key});

  @override
  State<FlexWidgetPage> createState() => _FlexWidgetPageState();
}

class _FlexWidgetPageState extends State<FlexWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlexWidgetPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          // padding contains 20% of all screen
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Flexible(
                  flex: 4, // this container contains 40% of width screen
                  fit: FlexFit.tight,
                  child: Container(
                    height: 150,
                    // width: 215,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 6, // this container contains 60% of width screen
                  child: Container(
                    height: 150,
                    // width: 215,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
                ],
              ),
              const SizedBox(height: 20,),
             Flexible(
              flex: 1,
              fit: FlexFit.tight,
               child: Container(
                  height: 200,
                  width: 450,
                  decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                  ),
                ),
             ),
              const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Flexible(
                  flex: 6,
                  fit: FlexFit.tight,
                  child: Container(
                    height: 200,
                    width: 215,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: Container(
                    height: 200,
                    width: 215,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}