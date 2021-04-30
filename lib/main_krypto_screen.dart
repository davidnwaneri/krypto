import 'package:crypto_font_icons/crypto_font_icon_data.dart';
import 'package:flutter/material.dart';
import 'package:krypto/coin_data.dart';
import 'package:polygon_clipper/polygon_border.dart';

class MainKryptoScreen extends StatefulWidget {
  @override
  _MainKryptoScreenState createState() => _MainKryptoScreenState();
}

Widget polygonWidget(CryptoFontIconData cryptoData) {
  return Container(
    width: 33.0,
    height: 33.0,
    decoration: ShapeDecoration(
      // color: Color(0xFF1b1c22),
      shadows: [
        BoxShadow(
          color: Color(0xFFfe8700).withOpacity(0.05),
          spreadRadius: 3,
          blurRadius: 1,
        ),
      ],
      shape: PolygonBorder(
        sides: 6,
        // borderRadius: 0,
        border: BorderSide(
          width: 0.5,
          color: Color(0xFFfe8700),
        ),
      ),
    ),
    child: Icon(
      cryptoData,
      color: Color(0xFFfe8700),
      size: 13.0,
    ),
  );
}

// List<IconData> cryptoIconData(){
//   return cryptoIconList;
// }

List cryptoIconSuggestions = [];
List cryptoNameSuggestions = [];

class _MainKryptoScreenState extends State<MainKryptoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Krypto'),
        ),
      ),
      body: buildSuggestions(),
    );
  }
}

Widget buildSuggestions() {
  return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          return Divider();
        }

        final int index = i ~/ 2;

        if (index >= cryptoIconSuggestions.length) {
          cryptoIconSuggestions.addAll(cryptoIconList.take(10));
          cryptoNameSuggestions.addAll(cryptoIconName.take(10));
        }
        return buildRow(
            cryptoIconSuggestions[index], cryptoNameSuggestions[index]);
      });
}

Widget buildRow(IconData pair, String name) {
  return ListTile(
    title: Text(name),
    leading: polygonWidget(pair),
  );
}
