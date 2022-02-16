import 'package:flutter/material.dart';

class ImageItem4 extends StatelessWidget {
  const ImageItem4({
    Key? key,
    required this.buttonColor,
  }) : super(key: key);

  final Color buttonColor;

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
          const Spacer(),
          Row(
            children: [
              const SizedBox(width: 10),
              const Icon(
                Icons.send,
                color: Colors.purpleAccent,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'You can invite other group ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'members to this conversation',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width / 3,
              height: 40,
              child: const Center(
                child: Text(
                  'INVITE FRIENDS',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            width: MediaQuery.of(context).size.width / 3,
            height: 40,
            child: Center(
              child: const Text(
                'SKIP',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade200,
            width: MediaQuery.of(context).size.height / 1.5,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.fiber_manual_record_rounded,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.stop,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
