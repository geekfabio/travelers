import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travelers/models/city_model.dart';
import 'package:travelers/modules/carousel/test_page.dart';
import 'package:travelers/shared/app_images.dart';
import 'package:travelers/shared/themes/app_colors.dart';
import 'package:travelers/shared/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double h_size = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildMenuTop(),
          SizedBox(
            height: 10,
          ),

          //Text Top
          Container(
            margin: EdgeInsets.symmetric(horizontal: h_size),
            height: 90,
            child: Expanded(
              flex: 80,
              child: Row(
                textDirection: TextDirection.ltr,
                children: [
                  Text(
                    "A trip you’ll never ",
                    style: TextStyles.titleHomeTop
                        .copyWith(color: AppColors.greyText),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Expanded(
                    child: Text(
                      "forget.",
                      style: TextStyles.titleHomeTop
                          .copyWith(color: AppColors.primary),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 40,
          ),
          buildTextSearch(),
          SizedBox(
            height: 40,
          ),

          buildCategoriesText(),
          SizedBox(
            height: 40,
          ),

          Container(
            height: 280,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildCategorieCard("Luanda", "Cidade linda em Angola",
                    AppImages.city_3, "4.5"),
                buildCategorieCard("Luanda", "Cidade linda em Angola",
                    AppImages.city_2, "4.5"),
                buildCategorieCard("Luanda", "Cidade linda em Angola",
                    AppImages.city_1, "4.5"),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          buildPopularTraverlersText(),

          Container(
            height: 100,
            child: Placeholder(),
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }

  Container buildCategorieCard(String cityName, String cityDescription,
      String cityImage, String starsCount) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          image:
              DecorationImage(image: AssetImage(cityImage), fit: BoxFit.fill),
          boxShadow: [
            BoxShadow(
                blurRadius: 2.0, color: AppColors.grey, offset: Offset(1, 3))
          ]),
      margin: EdgeInsets.symmetric(horizontal: h_size),
      height: 260,
      width: 200,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 100, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.primary,
            ),
            width: 50,
            height: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.white,
                ),
                Text(
                  starsCount,
                  style: TextStyles.captionBody,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 130, top: 150),
                width: 50,
                height: 25,
                child: Text(
                  cityName,
                  style: TextStyles.captionBoldShape,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 80),
                width: 100,
                height: 35,
                child: Text(
                  cityDescription,
                  style: TextStyles.captionBody,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildPopularTraverlersText() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: h_size),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Popular Travelers", style: TextStyles.titleHome),
          Text("View All", style: TextStyles.titleListTile),
        ],
      ),
    );
  }

  Container buildCategoriesText() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: h_size),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("All",
              style: TextStyles.titleListTile.copyWith(
                  color: AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2)),
          Text("Luanda", style: TextStyles.titleListTile),
          Text("Paris", style: TextStyles.titleListTile),
          Text("Benguela", style: TextStyles.titleListTile),
        ],
      ),
    );
  }

  //Menu
  Container buildMenuTop() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: h_size),
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.menu,
            size: 32,
            color: AppColors.body,
          ),
          Spacer(),
          Container(
            height: 50.0,
            width: 50.0,
            child: CircleAvatar(
              child: Image.asset(AppImages.person),
            ),
          )
        ],
      ),
    );
  }

  Container buildTextSearch() {
    return Container(
      height: 50.0,
      margin: EdgeInsets.symmetric(horizontal: h_size),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColors.greyLight,
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 28,
              color: AppColors.primary,
            ),
            contentPadding: EdgeInsets.all(15.0),
            hintText: "Search your destination"),
      ),
    );
  }
}
