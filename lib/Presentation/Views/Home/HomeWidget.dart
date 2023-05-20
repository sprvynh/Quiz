import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Presentation/Views/Home/ExamWidget.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Danh sách các môn',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 24),
            ...['Lịch sử', 'Địa lý', 'Giáo dục công dân'].map(
              (item) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(CupertinoPageRoute(builder: (context) => ExamWidget(title: item)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: AspectRatio(
                      aspectRatio: 21 / 9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('https://caodangyduoctphcm.com.vn/wp-content/uploads/2020/07/lich-su.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black38,
                                BlendMode.darken,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              item,
                              style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
            const SizedBox(height: 24),
            Text(
              'Kết quả làm bài gần đây',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            ...List.generate(
              10,
              (index) => Card(
                child: ListTile(
                  title: Text('Ôn tập chương 69'),
                  subtitle: Text('Thứ high 01/05/2023'),
                  trailing: Text('6.9đ'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
