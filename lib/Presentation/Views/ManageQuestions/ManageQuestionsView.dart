import 'package:amazon_like_filter/amazon_like_filter.dart';
import 'package:flutter/material.dart';

class ManageQuestionsView extends StatelessWidget {
  const ManageQuestionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue.shade900,
        centerTitle: true,
        elevation: 0.0,
        title: const Text('Ngân hàng câu hỏi'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return FilterWidget(
                    filterProps: FilterProps(
                      filters: [
                        const FilterListModel(
                          previousApplied: [],
                          title: 'Môn',
                          filterKey: 'mon',
                          filterOptions: [
                            FilterItemModel(filterTitle: 'Lịch sử', filterKey: 'su'),
                            FilterItemModel(
                              filterTitle: 'Địa lý',
                              filterKey: 'dia',
                            ),
                            FilterItemModel(filterTitle: 'GDCD', filterKey: 'gdcd'),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.filter_alt_rounded),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Card(
                child: ListTile(
                  title: Text('blsfsldfsd'),
                  subtitle: Text('Lịch sử'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('blsfsldfsd'),
                  subtitle: Text('Lịch sử'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('blsfsldfsd'),
                  subtitle: Text('Địa lý'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('blsfsldfsd'),
                  subtitle: Text('Lịch sử'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('blsfsldfsd'),
                  subtitle: Text('GDCD'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('blsfsldfsd'),
                  subtitle: Text('GDCD'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('blsfsldfsd'),
                  subtitle: Text('Địa lý'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('blsfsldfsd'),
                  subtitle: Text('Lịch sử'),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Thêm câu hỏi',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 24),
                      const TextField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Tiêu đề'),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                      const SizedBox(height: 24),
                      DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Câu đúng'),
                        ),
                        items: const [
                          DropdownMenuItem(
                            value: 'A',
                            child: Text('A'),
                          ),
                          DropdownMenuItem(
                            value: 'B',
                            child: Text('B'),
                          ),
                          DropdownMenuItem(
                            value: 'C',
                            child: Text('C'),
                          ),
                          DropdownMenuItem(
                            value: 'D',
                            child: Text('D'),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: 24),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Câu A'),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Câu B'),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Câu C'),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Câu D'),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          const Spacer(),
                          FilledButton(
                            onPressed: () {},
                            child: const Text('TẠO'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        label: const Text('Thêm câu hỏi'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
