import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:scb_app/src/widget/image_text_widget_x2.dart';

import '../../theme/app_theme.dart';
import '../../widget/button_app.dart';
import '../../widget/no_header_widget.dart';
import '../../widget/spacer_widget.dart';

class CorrectPasswordPage extends StatefulWidget {
  const CorrectPasswordPage({super.key});

  @override
  State<CorrectPasswordPage> createState() => _CorrectPasswordPageState();
}

class _CorrectPasswordPageState extends State<CorrectPasswordPage> {
  int _currentIndex = 0;

  final List<String> imageList = [
    'assets/images/ic_secure_password.png',
    'assets/images/ic_secure_password.png',
    'assets/images/ic_secure_password.png',
    'assets/images/ic_secure_password.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NoHeaderWidget(),
              const SpacerWidget(),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Tips para una contraseña correcta",
                  textAlign: TextAlign.center,
                  style: AppTheme.textSuggestionTitle,
                ),
              ),
              const ImageTextWidgetX2(
                text: "No utilices contraseñas de otras plataformas",
                imagePath: 'assets/images/ic_number_one.png',
              ),
              CarouselSlider(
                items: imageList.map((url) {
                  return Image.asset(
                    url,
                    fit: BoxFit.fitWidth,
                  );
                }).toList(),
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  height: 350,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                ),
              ),
              Center(
                child: DotsIndicator(
                  dotsCount: imageList.length,
                  position: _currentIndex.toDouble(),
                  decorator: const DotsDecorator(
                    color: Colors.grey,
                    activeColor: Colors.blue,
                  ),
                ),
              ),
              Expanded(child: Container()),
              ButtonApp(
                color: AppTheme.kPrimaryColor,
                textColor: AppTheme.kLightColor,
                text: 'Siguiente',
                onPressed: () {},
              ),
              const SpacerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
