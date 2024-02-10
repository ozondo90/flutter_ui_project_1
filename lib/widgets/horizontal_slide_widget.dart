import 'package:flutter/material.dart';

class HorizontalSlider extends StatelessWidget {
  final ImageProvider<Object> image;
  final String text;
  final String buttonText;
  final VoidCallback onPressed;

  const HorizontalSlider({
    Key? key,
    required this.image,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            flex: 5, // Occupy 5/6 of the available space
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.0), // Small border radius
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(buttonText),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5, // Occupy 5/6 of the available space
            child: Image(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
