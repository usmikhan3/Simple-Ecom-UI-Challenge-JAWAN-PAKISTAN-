import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/models/categories.dart';
import 'package:ui_challenge/models/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<SliderModel> sliderItems = [
    SliderModel(image: "assets/macbook_pro.jpg", title: "MacBook Pro"),
    SliderModel(image: "assets/m1.jpg", title: " M1 MacBook"),
    SliderModel(image: "assets/iphone12.jpg", title: "IPhone 12 Pro Max")
  ];

  List<SliderModel> popularItems = [
    SliderModel(image: "assets/macbook_pro.jpg", title: "MacBook Pro"),
    SliderModel(image: "assets/m1.jpg", title: " M1 MacBook"),
    SliderModel(image: "assets/iphone12.jpg", title: "IPhone 12 Pro Max"),
    SliderModel(image: "assets/macbook_pro.jpg", title: "MacBook Pro"),
    SliderModel(image: "assets/m1.jpg", title: " M1 MacBook"),
    SliderModel(image: "assets/iphone12.jpg", title: "IPhone 12 Pro Max")
  ];

  List<CategoriesModel> categoryItems = [
    CategoriesModel(
        icon: "assets/fashion.png", title: "Clothing", itemLength: 20),
    CategoriesModel(
        icon: "assets/household.png", title: "HouseHolds", itemLength: 10),
    CategoriesModel(
        icon: "assets/plug.png", title: "Electronics", itemLength: 5),
    CategoriesModel(icon: "assets/more.png", title: "Others", itemLength: 50)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Ecom App UI",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Items",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider.builder(
                itemCount: sliderItems.length,
                itemBuilder: (context, itemIndex, pageIndex) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "${sliderItems[itemIndex].image}",
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ListTile(
                          title: Text("${sliderItems[itemIndex].title}"),
                          subtitle: Row(
                            children: [
                              FittedBox(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("23 Reviews")
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.35,
                  autoPlay: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "More Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryItems.length,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(10),
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "${categoryItems[index].icon}",
                                height: 20,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("${categoryItems[index].title}")
                            ],
                          ));
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Items",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: popularItems.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "${popularItems[index].image}",
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ListTile(
                            title: Text("${popularItems[index].title}"),
                            subtitle: FittedBox(
                              fit: BoxFit.contain,
                              child: Row(
                                children: [
                                  FittedBox(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 10,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 10,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 10,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 10,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 10,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("23 Reviews")
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
