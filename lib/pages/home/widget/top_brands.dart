import 'package:flutter/material.dart';
import 'package:shopping_app_ui/model/top_brands_model.dart';

class TopBrandsWidgets extends StatelessWidget {
  const TopBrandsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Text("Top Brands",
              style: Theme.of(context).textTheme.titleMedium)),
      SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, top: 20),
            itemCount: topBrandsData.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 2),
                width: 80,
                height: 100,
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      topBrandsData[index].logo,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(topBrandsData[index].title,
                        style: Theme.of(context).textTheme.titleSmall),
                  )
                ]),
              );
            }),
      )
    ]);
  }
}
