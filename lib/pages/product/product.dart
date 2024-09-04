import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:readmore/readmore.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  double value = 3.5;

  List<String> sizeData = ['S', 'M', "L", "XL"];
  int selcetedSize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 40),
            width: MediaQuery.sizeOf(context).width,
            height: 50,
            child: Row(children: [
              Container(
                width: 60,
                height: 50,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.2)),
                child: Icon(Icons.favorite_outline,
                    color: Theme.of(context).colorScheme.onPrimary),
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.onPrimary),
                      onPressed: () {},
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_cart_outlined),
                            SizedBox(width: 10),
                            Text("Add to cart")
                          ])),
                ),
              )
            ])),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: Text("Product Detail",
              style: Theme.of(context).textTheme.titleMedium),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.4,
              child: Image.asset(
                "assets/noback.png",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              height: 50,
              child: Row(children: [
                RatingStars(
                  axis: Axis.horizontal,
                  value: value,
                  onValueChanged: (v) {
                    setState(() {
                      value = v;
                    });
                  },
                  starCount: 5,
                  starSize: 20,
                  valueLabelColor: const Color(0xff9b9b9b),
                  valueLabelTextStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.0),
                  valueLabelRadius: 10,
                  maxValue: 5,
                  starSpacing: 2,
                  maxValueVisibility: false,
                  valueLabelVisibility: false,
                  animationDuration: const Duration(milliseconds: 1000),
                  valueLabelPadding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                  valueLabelMargin: const EdgeInsets.only(right: 8),
                  starOffColor: const Color(0xffe7e8ea),
                  starColor: Theme.of(context).colorScheme.onPrimary,
                  angle: 12,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "($value)",
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                const Spacer(),
                Container(
                    width: 85,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onPrimary,
                            width: 1)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Icon(
                              Icons.remove,
                              color: Theme.of(context).colorScheme.onPrimary,
                              size: 20,
                            ),
                          ),
                          Text("1",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontSize: 14)),
                          Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Icon(
                              Icons.add,
                              color: Theme.of(context).colorScheme.onPrimary,
                              size: 20,
                            ),
                          )
                        ]))
              ]),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 2, left: 20),
                child: Text("Dennis Lingo",
                    style: Theme.of(context).textTheme.titleMedium)),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text("\$250",
                    style: Theme.of(context).textTheme.titleMedium)),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: MediaQuery.sizeOf(context).width,
              height: 2,
              color: Colors.grey.withOpacity(0.2),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text("Descriptions",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 14))),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: ReadMoreText(
                  'Lorem ipsum dolor sit amet consectetur adipsicing elit. orci sem feugiat ut nullam nist orci valupat fealis Lorem ipsum dolor sit amet consectetur adipsicing elit. orci sem feugiat ut nullam nist orci valupat fealis',
                  trimMode: TrimMode.Line,
                  trimLines: 3,
                  colorClickableText: Theme.of(context).colorScheme.onPrimary,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'Read less',
                  style: const TextStyle(color: Colors.black),
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimary),
                )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: MediaQuery.sizeOf(context).width,
              height: 2,
              color: Colors.grey.withOpacity(0.2),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 0, left: 20),
                child: Text("Select Size",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 14))),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 40),
              width: MediaQuery.sizeOf(context).width,
              height: 40,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: sizeData.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selcetedSize = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: selcetedSize == index
                                ? Theme.of(context).colorScheme.onPrimary
                                : Colors.transparent,
                            border: Border.all(
                                width: 1,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimary
                                    .withOpacity(0.4)),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Text(sizeData[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: selcetedSize == index
                                          ? Colors.white
                                          : Colors.black)),
                        ),
                      ),
                    );
                  }),
            )
          ]),
        ));
  }
}
