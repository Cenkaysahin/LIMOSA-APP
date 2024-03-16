import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF87A922),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: Color(0XFF87A922),
        title: Text(
          'LIMOSA',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          PageView.builder(
            itemCount: 10,
            itemBuilder: (context, index){
            return Container(

            );
          },)
        ],
      ),
    );
  }
}
