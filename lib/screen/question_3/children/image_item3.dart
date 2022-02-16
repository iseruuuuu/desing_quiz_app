import 'package:flutter/material.dart';

class ImageItem3 extends StatelessWidget {
  const ImageItem3({
    Key? key,
    required this.iconSize,
  }) : super(key: key);

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height / 1.5,
      height: MediaQuery.of(context).size.width / 3.5,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text(
            'Start Chatting',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Search for someone by name or',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade100,
              fontSize: 16,
            ),
          ),
          Text(
            'phone number to start a call',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade100,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 3.5,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.photo,
                    color: Colors.white,
                    size: iconSize,
                  ),
                  const Text(
                    'ENABLE CAMERA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
