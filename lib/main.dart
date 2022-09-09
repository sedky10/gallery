import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          title: const Center(
            child: Text(
              'Gallery',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30,
                fontFamily: 'Rale-way',
              ),
            ),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 160,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/img1.jpg')),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/img2.jpg')),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 160,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/img3.jpg')),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/img1.jpg')),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 160,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/img2.jpg')),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/img3.jpg')),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 100));
  }
}
