import 'package:flutter/material.dart';
import 'package:shopping_app_ui/pages/product/product.dart';

import '../../../model/popular_model.dart';

class PopularProductsWidgets extends StatelessWidget {
  const PopularProductsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Text("Popular Products",
              style: Theme.of(context).textTheme.titleMedium)),
      Container(
        width: MediaQuery.sizeOf(context).width,
        height: 600,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(
              top: 20,
            ),
            itemCount: popularData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 300, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductPage()));
                },
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            width: MediaQuery.sizeOf(context).width,
                            popularData[index].image,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            right: 0,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.grey,
                                  size: 18,
                                )))
                      ]),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 3),
                        child: Text(
                          popularData[index].title,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 15),
                        ),
                      ),
                      Text(popularData[index].desc,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 12)),
                      Padding(
                        padding: EdgeInsets.only(top: 3, bottom: 3),
                        child: Text(
                          popularData[index].price,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 15),
                        ),
                      ),
                    ]),
              );
            }),
      )
    ]);
  }
}
