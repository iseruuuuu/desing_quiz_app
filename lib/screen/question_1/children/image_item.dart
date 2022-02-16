import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({
    Key? key,
    required this.message1,
    required this.message2,
    required this.nameColor,
    required this.message1Color,
    required this.message2Color,
    required this.message1Circular,
    required this.message2Circular,
    required this.message1CircularRight,
  }) : super(key: key);

  final String message1;
  final String message2;
  final Color nameColor;
  final Color message1Color;
  final Color message2Color;
  final double message1Circular;
  final double message2Circular;
  final double message1CircularRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height / 1.5,
      height: MediaQuery.of(context).size.width / 3.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 15),
              const Icon(
                Icons.arrow_back,
              ),
              const SizedBox(width: 15),
              Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/icon.JPG"),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Text(
                'Ryutaro Iseki',
                style: TextStyle(
                  fontSize: 17,
                  color: nameColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Divider(
            color: Colors.grey.shade300,
            thickness: 1,
            height: 0,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  // borderRadius: BorderRadius.circular(message1Circular),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(message1CircularRight),
                    topLeft: Radius.circular(message1Circular),
                    bottomLeft: Radius.circular(message1Circular),
                    bottomRight: Radius.circular(message1Circular),
                  ),
                ),
                child: Center(
                  child: Text(
                    message1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: message1Color,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              const SizedBox(width: 20),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(message2Circular),
                ),
                child: Center(
                  child: Text(
                    message2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: message2Color,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
