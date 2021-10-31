import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 50.0;
const activeCard = Color(0xFF1D1E33);
const BottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            //Untuk pilihan jenis kelamin
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableWidget(
                  color: activeCard,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 20.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text('MALE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0XFF8D8E98),
                          ))
                    ],
                  ),
                )),
                Expanded(child: ReusableWidget(color: activeCard)),
              ],
            )),

            // Untuk Mengatur Tinggi
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReusableWidget(color: activeCard)),
              ],
            )),

            // untuk berat dan umur

            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableWidget(
                  color: activeCard,
                )),
                Expanded(child: ReusableWidget(color: activeCard)),
              ],
            )),

            // untuk tombol calculate

            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: BottomContainerColor, //Color(0xFF1D1E33),
                  ),
                  height: bottomContainerHeight,
                  width: double.infinity,
                  child: Text("CALCULATE"),
                )),
              ],
            ))
          ],
        ));
  }
}

class ReusableWidget extends StatelessWidget {
  ReusableWidget({required this.color, this.cardChild});

  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color, //Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
