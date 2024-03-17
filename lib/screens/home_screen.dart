import 'package:appjam/screens/route_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0XFF87A922),
        appBar: AppBar(
          backgroundColor: const Color(0XFF87A922),
          title: const Center(
              child: Text(
            'LIMOSA',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bütçe ${controller.text}₺',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(right: 32.0, left: 32.0, top: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            const BorderSide(width: 2, color: Color(0XFF114232))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            const BorderSide(width: 2, color: Color(0XFF114232))),
                    labelText: 'Bütçenizi Giriniz',
                    labelStyle: const TextStyle(color: Color(0XFF114232)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            const BorderSide(width: 5, color: Color(0XFF114232))),
                  ),
                  controller: controller,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      controller.text = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    onPressed: () {
                      try {
                        int.parse(controller.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    RouteScreen(int.parse(controller.text))));
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Geçerli bir değer giriniz')));
                      }
                    },
                    child: const Text(
                      'Rota Oluştur',
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Konumunuz',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    ' Istanbul',
                    style: TextStyle(color: Color(0XFFF7F6BB), fontSize: 20.0),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Color(0XFFF7F6BB),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
