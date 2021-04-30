import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_border.dart';

class MainKryptoScreen extends StatefulWidget {
  @override
  _MainKryptoScreenState createState() => _MainKryptoScreenState();
}

List cryptoListView = [
  
];

class _MainKryptoScreenState extends State<MainKryptoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();}
}





class ListWidgetItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(
              CryptoFontIcons.BTC,
              size: 30.0,
            ),
            title: Text('Bitcoin'),
            subtitle: Text('BTC'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('\$11.00004'),
                Text(
                  '+0.234',
                  style: TextStyle(
                    color: Color(0xFF08eae7),
                  ),
                ),
              ],
            ),
            tileColor: Color(0xFF1b1c22),
          ),
        ],
      ),
    );
  }
}

class ReusableCryptoContainer extends StatelessWidget {
  final IconData cryptoIcon;
  final String cryptoText;
  final Color cryptoColour;

  ReusableCryptoContainer(
      {this.cryptoIcon, this.cryptoText, this.cryptoColour});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 33.0,
            height: 33.0,
            decoration: ShapeDecoration(
              // color: Color(0xFF1b1c22),
              shadows: [
                BoxShadow(
                  color: cryptoColour.withOpacity(0.05),
                  spreadRadius: 3,
                  blurRadius: 1,
                ),
              ],
              shape: PolygonBorder(
                sides: 6,
                // borderRadius: 0,
                border: BorderSide(
                  width: 0.5,
                  color: cryptoColour,
                ),
              ),
            ),
            child: Icon(
              cryptoIcon,
              color: cryptoColour,
              size: 13.0,
            ),
          ),
          SizedBox(width: 2.0),
          Text(
            cryptoText,
            style: TextStyle(
              fontSize: 13.0,
            ),
          ),
        ],
      ),
    );
  }
}


// Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text('Krypto'),
//         ),
//       ),
//       body: SafeArea(
//         child: Container(
//           child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 SizedBox(
//                   height: 10.0,
//                 ),
//                 CircleAvatar(
//                   radius: 80.0,
//                   backgroundColor: Colors.brown,
//                 ),
//                 SizedBox(height: 5.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     ReusableCryptoContainer(
//                       cryptoText: 'BTC: 123.1',
//                       cryptoColour: Color(0xFFfe8700),
//                       cryptoIcon: CryptoFontIcons.BTC,
//                     ),
//                     ReusableCryptoContainer(
//                       cryptoText: 'ETH: 456.2',
//                       cryptoColour: Color(0xFFcbfe6a),
//                       cryptoIcon: CryptoFontIcons.ETH,
//                     ),
//                     ReusableCryptoContainer(
//                         cryptoText: 'LTC: 789.3',
//                         cryptoColour: Color(0xFF08eae7),
//                         cryptoIcon: CryptoFontIcons.LTC),
//                   ],
//                 ),
//                 SizedBox(height: 15.0),
//                 Divider(
//                   height: 9.0,
//                   indent: 10,
//                   endIndent: 10,
//                 ),
//                 Container(
//                   color: Colors.white24,
//                   height: 300,
//                   child: ListView.builder(
//                     itemCount: cryptoListView.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       // cryptoListView.add(cryptoList[1]);
//                       print(cryptoListView);
//                       return Container(
//                         // constraints: BoxConstraints.tightFor(height: 100.0),
//                         child: cryptoListView[index],
//                       );
//                     },
//                   ),
//                 ),
//               ]),
//         ),
//       ),
//     );
  