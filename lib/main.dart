import 'package:flutter/material.dart';
import 'Menu.dart';

void main() {
  runApp(MyApp());
}

// สร้าง wwidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //กลุ่มข้อมูล
  List<FoodMenu> meun = [
    FoodMenu("ภัทรพงศ์ ", "", "assets/images/picture1.jpg", "0986353958"),
    FoodMenu("ประยุทธ์ ", "", "assets/images/picture4.jpg", "0123456789"),
    FoodMenu("วีระชัย", "", "assets/images/picture5.jpg", "1234567890"),
    FoodMenu("สมชาย ", "", "assets/images/picture2.jpg", "0123456789"),
    FoodMenu("กรชัย", "", "assets/images/picture3.jpg", "1234567890"),
  ];

  //แสดงผล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Admin"),
        ),
        body: ListView.builder(
            itemCount: meun.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = meun[index];
              Center(
                child: Column(
                  children: <Widget>[Text("Admin")],
                ),
              );
              return ListTile(
                leading: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 60,
                    minHeight: 120,
                    maxWidth: 60,
                    maxHeight: 120,
                  ),
                  child: Image.asset(food.img!, fit: BoxFit.cover),
                ),
                title: Text(
                  food.name!,
                  style: TextStyle(fontSize: 20),
                ),
                //subtitle: Text("เบอร์โทร"+"ติดต่อ")
                subtitle: Text("เบอร์โทร" + food.number! + "ติดต่อ"),
              );
            }));
  }
}
