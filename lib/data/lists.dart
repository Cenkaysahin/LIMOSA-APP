import 'package:appjam/data/event_data.dart';

class Lists{
  List<EventData> museum = [
    EventData('Galata Kulesi', 'images/galata.jpg'),
    EventData('Ayasofya Cami', 'images/ayasofya.png'),
    EventData('Yerebatan Sarnacı ', 'images/yerebatansarnaci.png'),

  ];
  
  List<EventData> cafeRestaurant = [
    EventData('Nite Restoran', 'images/nite.png'),
    EventData('Tugra Restoran', 'images/tugra.png'),
    EventData('Balatte', 'images/balatte.png'),
    EventData('Pancake House', 'images/pancakehouse.png'),
  ];

  List<EventData> transport = [
    EventData('Vapur', 'images/ferry.png'),
    EventData('Tren', 'images/train.png'),
    EventData('Otobüs', 'images/bus.png'),
    EventData('Taksi', 'images/taxi.png'),
    EventData('Tramvay', 'images/tramway.png'),

  ];
  
  List<EventData> theater = [
    EventData('Tiyatro', 'images/theater1.jpg'),
    EventData('Sinema', 'images/cinema.png'),
    EventData('Konser', 'images/concert.png'),
    EventData('Opera', 'images/opera.png'),

  ];
  
}