import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 2,
      height: size.height * 1,
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/images/Types_of_Ornamental_Plants.jpg",
            height: size.height * 0.4,
            width: size.width * 1,
            fit: BoxFit.contain,
          ),
          SizedBox(height: size.height * 0.0001),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\nThe ornamental plants can be divided into two categories, which are:\n- Herbaceous ornamental plants\n- Woody ornamental plants",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\nA). Herbaceous ornamental plants:\nAnnuals:\n1.Winter season flowers: Dahlia, Poppy, Dianthus.\n2.Summer season flowers: Balsam, Cocks comb.\n3.All season flowers: Sunflower, Zinnia.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\nB). Woody ornamental plants:\n1.Flowering shrubs: Rose, Jui, Beli, Mollika.\n2.Foliage trees: Rubber, Ashok, Banyan trees.\n3.The palms: Bottle palm, Fishtail palm, Toddy palm.\n4.Ornamental hedge plants: Duranta, Justicia, Iroxa.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
