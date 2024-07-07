import 'package:flutter/material.dart';

class PriContainer extends StatelessWidget {
  const PriContainer({
    super.key,
    required this.title,
    required this.heading1,
    required this.heading2,
    required this.subTitle,
    required this.image,
  });

  final String title, heading1, heading2, subTitle, image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
            height: 230,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffA6A6A6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            color: Color(0xffDADADA),
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    Image(image: AssetImage(image), height: 30),
                  ],
                ),
                Text(heading1,
                    style: const TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                Text(heading2,
                    style: const TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 15),
                Text(subTitle,
                    style: const TextStyle(
                        color: Color(0xffDADADA),
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
