import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

import '../widgets/web/search_footer.dart';
import '../widgets/web/search_header.dart';
import '../widgets/web/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //web header
            SearchHeader(),
            // tabs for news images
            Padding(
              padding: const EdgeInsets.only(left: 150.0),
              child: SearchTabs(),
            ),
            const Divider(
              height: 0,
                thickness: 0.3,
            ),
            //search Results
            // pagination buttons
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '<Prev',
                      style: TextStyle(fontSize: 15, color: blueColor),
                    ),
                  ),
                  const SizedBox(width: 30,),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Next>',
                      style: TextStyle(fontSize: 15, color: blueColor),
                    ),
                  ),
                  const SizedBox(width: 30,),

                ],
              ),
            ),
            SearchFooter()
          ],
        ),
      ),
    );
  }
}
