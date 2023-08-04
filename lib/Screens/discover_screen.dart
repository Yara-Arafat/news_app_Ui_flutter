import 'package:flutter/material.dart';
import 'package:news_app/models/news_item_model.dart';
import 'package:news_app/widgets/news_item_card.dart';
import 'package:news_app/widgets/tap_widget.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = ["Politic", "Sport", "Education", "game", "world"];
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "News from all around world",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 22),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/images/slider.png",
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                TabWidget(
                  title: "All",
                  isActive: true,
                  onTap: () {},
                ),
                const SizedBox(width: 10),
                for (int index = 0; index < titles.length; index++)
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: TabWidget(title: titles[index], onTap: () {}),
                  )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  NewsItemCard(
                    newsItem: NewsItem(
                      image:
                          "https://scontent.fjrs29-1.fna.fbcdn.net/v/t39.30808-6/289838182_5644286438938142_9149165311708506768_n.jpg?_nc_cat=101&cb=99be929b-59f725be&ccb=1-7&_nc_sid=e3f864&_nc_ohc=kC0D3cWz5k0AX_Re4Tf&_nc_ht=scontent.fjrs29-1.fna&oh=00_AfCX3ldBf3YmFny6jZy62STvPlyetJpLbtOhyuOZCJkIMw&oe=64D2086E",
                      category: "Sport",
                      title: "What Training do volleyball players need?",
                      ownerName: "McKindney",
                      ownerImage:
                          "https://userstock.io/data/wp-content/uploads/2017/09/ilaya-raja-280339-1024x981.jpg",
                      createdAt: "Fev 27,2023",
                    ),
                  ),
                  const SizedBox(height: 20),
                  NewsItemCard(
                    newsItem: NewsItem(
                      image:
                          "https://i0.wp.com/carolinapublicpress.org/wp-content/uploads/2021/08/kelly-sikkema-r2hTBxEkgWQ-unsplash-scaled.jpg?resize=1536%2C1024&ssl=1",
                      category: "Education",
                      title:
                          "Secondary school palces: When do parents find out?",
                      ownerName: "Rosemary",
                      ownerImage:
                          "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg",
                      createdAt: "Fev 28,2023",
                    ),
                  ),
                  const SizedBox(height: 20),
                  NewsItemCard(
                    newsItem: NewsItem(
                      image:
                          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTIonodZOx6r_Sy7C3qz9gj2DTefgowbvZs3BwxpNhWHreqt3Iy",
                      category: "World",
                      title: "6h Houses destroyed in Massive fire in Assam's K",
                      ownerName: "Aslam K",
                      ownerImage:
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg",
                      createdAt: "Fev 27,2023",
                    ),
                  ),
                  const SizedBox(height: 20),
                  NewsItemCard(
                    newsItem: NewsItem(
                      image:
                          "https://d25lfjv5ygigjw.cloudfront.net/wp-content/uploads/2022/03/122383581_xl.jpg",
                      category: "World",
                      title:
                          "At least 35 people killed in separate road crashes in AS",
                      ownerName: "Karla ",
                      ownerImage:
                          "https://images.pexels.com/photos/1239288/pexels-photo-1239288.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      createdAt: "Fev 28,2023",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
