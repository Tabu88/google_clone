import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';

import '../widgets/search.dart';
import '../widgets/transalation_button.dart';
import '../widgets/web/search_buttons.dart';
import '../widgets/web/web_footer.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Gmail',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                ),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                'Images',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          IconButton(onPressed: () {},
              icon: SvgPicture.asset('assets/images/more-apps.svg', color: primaryColor,)),
          const SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xff1A73EB),
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white),
              ),),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5,right: 5),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Search(),
                      const SizedBox(height: 20,),
                      SearchButtons(),
                      const SizedBox(height: 20,),
                      TranslationButtons()

                    ],
                  ),
                  const WebFooter(),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}