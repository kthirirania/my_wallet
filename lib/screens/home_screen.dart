import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_wallet/widgets/load_image.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        //I have set Safe area top to false in the bottom_navigation_widget
        // so I need to make a space for it here.
        SizedBox(
          height: 64,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SvgPicture.asset(
                'assets/icons/menu.svg',
                color: Colors.black,
                width: 24,
                height: 24,
              ),
              Text(
                "Virtual Card",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Playfair',
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              LoadImage(
                "https://drive.google.com/uc?export=view&id=1bcQaCdWNUsXF2he704ZfUrofxw6KV9KH",
                48,
                48,
                0,
                8,
                8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
