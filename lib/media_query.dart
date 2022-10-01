import 'package:flutter/material.dart';

class MediaQueryPage extends StatefulWidget {
  const MediaQueryPage({super.key});

  @override
  State<MediaQueryPage> createState() => _MediaQueryPageState();
}

class _MediaQueryPageState extends State<MediaQueryPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQueryPage'),
        centerTitle: true,
      ),
      body: Center(
        // padding takes 10% screen
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 150,
                    width: size.width * .3 - 20, // first container takes 30% of width screen
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 150,
                    width: size.width * .7 - 30, //// second container takes 70% of width screen
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                width: size.width - 20, // -20 pixel screen contains top of the padding
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber
                )
                ),
                const SizedBox(height: 10,),
                 Row(
                children: [
                  Container(
                    height: 200,
                    width: size.width * .7 - 20, // first container takes 70% of width screen
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 200,
                    width: size.width * .3 - 30, //// second container takes 30% of width screen
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(20),
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