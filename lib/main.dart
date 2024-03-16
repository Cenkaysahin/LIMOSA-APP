import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('APPJAM'),
        ),
        body: Center(
          child: PriceSlider(),
        ),
      ),
    );
  }
}

class PriceSlider extends StatefulWidget {
  @override
  _PriceSliderState createState() => _PriceSliderState();
}

class _PriceSliderState extends State<PriceSlider> {
  double _currentValue = 100.0; // Başlangıç değeri

  void _createRoute() {
    if (_currentValue < 100) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Uyarı'),
            content: Text('Fiyat 100 TL\'den az olamaz.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Tamam'),
              ),
            ],
          );
        },
      );
    } else if (_currentValue <= 100) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RoutePage('100 TL Rotası')),
      );
    }
    else if (_currentValue <= 200) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RoutePage('200 TL Rotası')),
      );
    } else if (_currentValue <= 300) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RoutePage('300 TL Rotası')),
      );
    } else if (_currentValue <= 400) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RoutePage('400 TL Rotası')),
      );
    } else if (_currentValue <= 500) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RoutePage('500 TL Rotası')),
      );
    } else if (_currentValue <= 600) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RoutePage('600 TL Rotası')),
      );
    } else if (_currentValue <= 700) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RoutePage('700 TL Rotası')),
      );
    } else if (_currentValue <= 800) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RoutePage('800 TL Rotası')),
      );
    } else if (_currentValue <= 900) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RoutePage('900 TL Rotası')),
      );
    } else if (_currentValue <= 1000) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RoutePage('1000 TL Rotası')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF84CAE7), // Arka plan rengi
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bütçe',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16), // Başlık ile slider arasında boşluk bırakmak için
          Slider(
            value: _currentValue,
            min: 100.0,
            max: 1000.0,
            divisions: 9, // 100'er 100'er artırılabilmesi için 9 adet bölüm
            onChanged: (double value) {
              setState(() {
                _currentValue = value.roundToDouble(); // Değerin tam sayıya yuvarlanması
              });
            },
          ),
          SizedBox(height: 16), // Slider ile fiyat metni arasında boşluk bırakmak için
          Text(
            '$_currentValue TL',
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 16), // Fiyat metni ile buton arasında boşluk bırakmak için
          ElevatedButton(
            onPressed: _createRoute,
            child: Text('Rota Oluştur'),
          ),
        ],
      ),
    );
  }
}

class RoutePage extends StatelessWidget {
  final String routeName;

  RoutePage(this.routeName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(routeName),
      ),
      body: Center(
        child: Text('Bu sayfa $routeName için rota oluşturulmuştur.'),
      ),
    );
  }
}