import 'package:appjam/screens/route-screen.dart';
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
    return Scaffold(
      backgroundColor: Color(0XFF87A922),
      appBar: AppBar(
        backgroundColor: Color(0XFF87A922),
        title: Center(
            child: Text(
          'LIMOSA',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bütçe ₺',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 32.0, left: 32.0, top: 16.0),
              child: PhysicalModel(
                color: Colors.transparent,
                elevation: 1,
                borderRadius: BorderRadius.circular(20.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Bütçenizi Giriniz',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide:
                              BorderSide(width: 5, color: Color(0XFF114232)))),
                  controller: controller,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    controller.text = value;
                  },
                ),
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
                    try{
                      int.parse(controller.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RouteScreen(int.parse(controller.text))));
                    }catch(e){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Geçerli bir değer giriniz')));
                    }
                  },
                  child: Text(
                    'Rota Oluştur',
                    style: TextStyle(fontSize: 20.0),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
