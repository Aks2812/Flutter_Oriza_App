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
            "assets/images/Gardening_tips.png",
            height: size.height * 0.35,
            width: size.width * 0.95,
            fit: BoxFit.contain,
          ),
          SizedBox(height: size.height * 0.0001),
          SizedBox(
            width: size.width * 0.85,
            child: Text(
              "\n1.Pick the right location—ideally, a sunny site! Most vegetables need at least 6 hours of sun a day.\n\n2. Water needs to be readily available. Nothing burns out a beginning gardener faster than having to lug water to thirsty plants during a heat wave.\n\n3. Good soil is the key to a successful garden. Plants depend on the soil for nutrients, stability, and drainage.\n\n4. Keep it close to home. A location near your house will make it easier for you to tend your plot regularly.\n\n5. Amend your soil. Compost, leaf mold, or well-aged manure will increase the ability of your soil to both drain well and hold moisture—the sponge factor.",
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
