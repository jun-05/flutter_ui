import 'package:flutter/material.dart';

class AssetCard extends StatelessWidget {
  final String name, code, amount;
  final Color cardColor;
  final IconData icon;

  const AssetCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(25),
        border: cardColor == Colors.black
            ? Border.all(
          color: Colors.white,
          width: 1.0,
        )
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:  cardColor == Colors.black ? const EdgeInsets.all(19) : const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(fontSize: 32, color: Colors.white)),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 20),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Transform.scale(
              scale: 1.5,
              child: Transform.translate(
                  offset: const Offset(-9, 12),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 88,
                  ))),
        ],
      ),
    );
  }
}
