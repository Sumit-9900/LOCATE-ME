import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locate_me/models/nextscreen_arguments.dart';
import 'package:locate_me/riverpod/api.dart';
import 'package:locate_me/services/textstyle.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as NextScreenArguments?;

    if (args == null) {
      return Scaffold(
        backgroundColor: Colors.greenAccent.shade200,
        appBar: AppBar(
          title: Text(
            'Locate Me',
            style: Style.style2,
          ),
          centerTitle: true,
          elevation: 1.0,
          backgroundColor: Colors.greenAccent.shade400,
        ),
        body: Center(
          child: Text(
            'No Data!',
            style: Style.style2,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.greenAccent.shade200,
      appBar: AppBar(
        title: Text(
          'Locate Me',
          style: Style.style2,
        ),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.greenAccent.shade400,
      ),
      body: Column(
        children: [
          Center(
            child: MediaQuery.of(context).size.width < 600
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5),
                      Chip(
                        label: Text(
                          'Start Loc: ${args.startLoc}',
                          style: Style.style3,
                        ),
                        backgroundColor: Colors.greenAccent.shade200,
                      ),
                      const SizedBox(height: 5),
                      Chip(
                        label: Text(
                          'End Loc: ${args.endLoc}',
                          style: Style.style3,
                        ),
                        backgroundColor: Colors.greenAccent.shade200,
                      ),
                      const SizedBox(height: 5),
                      Chip(
                        label: Text(
                          'Total Distance: ${args.totalDistance} km',
                          style: Style.style3,
                        ),
                        backgroundColor: Colors.greenAccent.shade200,
                      ),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Chip(
                          label: Text(
                            'Start Loc: ${args.startLoc}',
                            style: Style.style3,
                          ),
                          backgroundColor: Colors.greenAccent.shade200,
                        ),
                        const SizedBox(width: 10),
                        Chip(
                          label: Text(
                            'End Loc: ${args.endLoc}',
                            style: Style.style3,
                          ),
                          backgroundColor: Colors.greenAccent.shade200,
                        ),
                        const SizedBox(width: 10),
                        Chip(
                          label: Text(
                            'Total Distance: ${args.totalDistance} km',
                            style: Style.style3,
                          ),
                          backgroundColor: Colors.greenAccent.shade200,
                        ),
                      ],
                    ),
                  ),
          ),
          const Divider(color: Colors.black38),
          Consumer(
            builder: (context, ref, child) {
              final persons = ref.watch(apiProvider);
              return persons.when(
                data: (persons) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: persons.length,
                      itemBuilder: (context, index) {
                        final person = persons[index];
                        return Card(
                          color: Colors.greenAccent.shade200,
                          elevation: 3.0,
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: NetworkImage(person.avatar),
                            ),
                            title: Text(
                              '${person.firstName} ${person.lastName}',
                              style: Style.style4,
                            ),
                            subtitle: Text(
                              person.email,
                              style: Style.style5,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
                error: (error, stackTrace) {
                  return Text('Error : $error, $stackTrace');
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
