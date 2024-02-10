import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/horizontal_slide_widget.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({Key? key}) : super(key: key);

  @override
  State<BannerSlider> createState() => BannerSliderState();
}

class BannerSliderState extends State<BannerSlider> {
  final PageController pageController = PageController();

  // Define background colors for each slide
  final List<Color> backgroundColors = [
    const Color.fromARGB(255, 17, 17, 17),
    const Color.fromARGB(255, 247, 224, 16),
    const Color.fromARGB(255, 171, 2, 201),
  ];

  final List<Widget> slides = [
    HorizontalSlider(
      image: const AssetImage(
          'assets/images/slider-image2.png'), // Replace with your image asset
      text: 'Promotion 1', // Replace with your promotional text
      buttonText: 'Buy Now', // Replace with your button text
      onPressed: () {
        // Define the action when the button is pressed
      },
    ),
    HorizontalSlider(
      image: const AssetImage(
          'assets/images/slider-image1.png'), // Replace with your image asset
      text: 'Promotion 2', // Replace with your promotional text
      buttonText: 'Buy Now', // Replace with your button text
      onPressed: () {
        // Define the action when the button is pressed
      },
    ),
    HorizontalSlider(
      image: const AssetImage(
          'assets/images/slider-image3.png'), // Replace with your image asset
      text: 'Promotion 3', // Replace with your promotional text
      buttonText: 'Buy Now', // Replace with your button text
      onPressed: () {
        // Define the action when the button is pressed
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 150,
        child: PageView.builder(
          controller: pageController,
          itemCount: slides.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: backgroundColors[
                  index], // Set background color based on index
              child: slides[index],
            );
          },
        ),
      ),
    );
  }
}
