import 'package:appjam/data/lists.dart';
import 'package:appjam/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class RouteScreen extends StatefulWidget {
  final int budget;
  const RouteScreen(this.budget);

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  final Lists eventList = Lists();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        actions: [
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  children: [
                    const Icon(Icons.wallet, color: Colors.white,),
                    Text(
                      '${widget.budget} ₺',
                      style: const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              )),
        ],
        centerTitle: true,
        backgroundColor: const Color(0XFF87A922),
        title: const Text(
          'LIMOSA',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      backgroundColor: const Color(0xff87A922),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PhysicalModel(
                elevation: 5,
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: width * 0.8,
                  height: height * 0.25,
                  child: Image.asset(
                    'images/places.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              PhysicalModel(
                elevation: 5,
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  width: width * 0.8,
                  height: height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.keyboard_arrow_up_outlined),
                      Text('Ulaşım Maliyeti: ${widget.budget~/10} ₺', style: const TextStyle(fontSize: 20.0),),
                      Text('Kafe, Restoran Maliyeti: ${widget.budget~/2} ₺', style: const TextStyle(fontSize: 20.0)),
                      Text('Gezilecek Yerler Maliyeti: ${widget.budget~/5} ₺', style: const TextStyle(fontSize: 20.0)),
                      Text('Etkinlik Maliyeti: ${widget.budget~/5} ₺', style: const TextStyle(fontSize: 20.0)),
                      const Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: width * 0.36,
                      height: height * 0.12,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff114232),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(widget.budget ~/ 5, eventList.museum)));
                          },
                          child: Icon(Icons.museum_outlined,
                              color: const Color(0xffF7F6BB), size: width * 0.15))),
                  SizedBox(
                    width: width * 0.08,
                  ),
                  SizedBox(
                      width: width * 0.36,
                      height: height * 0.12,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff114232),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(widget.budget ~/ 2, eventList.cafeRestaurant)));
                          },
                          child: Icon(Icons.emoji_food_beverage_rounded,
                              color: const Color(0xffF7F6BB), size: width * 0.15))),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: width * 0.36,
                      height: height * 0.12,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff114232),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(widget.budget ~/ 10, eventList.transport)));
                          },
                          child: Icon(Icons.subway,
                              color: const Color(0xffF7F6BB), size: width * 0.15))),
                  SizedBox(
                    width: width * 0.08,
                  ),
                  SizedBox(
                      width: width * 0.36,
                      height: height * 0.12,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff114232),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(widget.budget ~/ 5, eventList.theater)));
                          },
                          child: Icon(Icons.theater_comedy,
                              color: const Color(0xffF7F6BB), size: width * 0.15))),
                ],
              ),
              SizedBox(height: height*0.02,)
            ],
          ),
        ),
      ),
    );
  }
}
