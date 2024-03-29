import 'package:appjam/data/event_data.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final int price;
  final List<EventData> eventList;
  const DetailScreen(this.price, this.eventList);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0XFF87A922),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: const Color(0XFF87A922),
        title: const Text(
          'LIMOSA',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: PageView.builder(
          itemCount: widget.eventList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: width * 0.8,
              height: height * 0.5,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 64.0, horizontal: 18),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(45.0),
                  child: Card.filled(
                    elevation: 5,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          widget.eventList[index].image,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 0,
                          width: width * 0.89,
                          height: height * 0.07,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color(0xff1E1E1E).withOpacity(0.5)),
                            child: Text(
                              widget.eventList[index].name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: width * 0.89,
                            height: height * 0.3,
                            color: const Color(0xff1E1E1E).withOpacity(0.9),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    'Ücret',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 32.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    '${widget.price}₺',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 32.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 64.0),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Rotaya Git',
                                      style: TextStyle(fontSize: 24.0, color: Colors.black),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
