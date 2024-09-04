import 'package:flutter/material.dart';

class TopCategorisWidget extends StatefulWidget {
  const TopCategorisWidget({super.key});

  @override
  State<TopCategorisWidget> createState() => _TopCategorisWidgetState();
}

class _TopCategorisWidgetState extends State<TopCategorisWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> categoriesData = ["All", "Men", "Women", "Kids wear"];
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text("Top Categories",
                  style: Theme.of(context).textTheme.titleMedium)),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 40,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
                itemCount: categoriesData.length,
                padding: EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: currentIndex == index
                                ? Theme.of(context).colorScheme.onPrimary
                                : Colors.grey),
                        child: Center(
                          child: Text(categoriesData[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white)),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ]);
  }
}
