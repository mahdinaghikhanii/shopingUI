import 'package:flutter/material.dart';
import 'package:shopping_app_ui/pages/home/widget/appbar.dart';

import 'widget/popular_products.dart';
import 'widget/search_box.dart';
import 'widget/top_brands.dart';
import 'widget/top_categoris.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                  child: appbar(context)),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Let's find your\nExclusive Outfit",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 30, height: 1.4)),
              ),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: searchBox(context)),
              const TopCategorisWidget(),
              const TopBrandsWidgets(),
              const PopularProductsWidgets(),
              const SizedBox(height: 60),
            ]),
          ),
        ));
  }
}
