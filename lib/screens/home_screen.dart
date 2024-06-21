import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locate_me/models/nextscreen_arguments.dart';
import 'package:locate_me/riverpod/hive_box.dart';
import 'package:locate_me/riverpod/location_provider.dart';
import 'package:locate_me/riverpod/userbox_provider.dart';
import 'package:locate_me/services/messages.dart';
import 'package:locate_me/services/textstyle.dart';
import 'package:locate_me/widgets/button.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(locationNotifierProvider);
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade200,
      appBar: AppBar(
        title: Text(
          'Locate Me',
          style: Style.style2,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.greenAccent.shade400,
        actions: [
          IconButton(
            onPressed: () async {
              ref.read(userNotifierProvider.notifier).logOut();
              final isLogin = ref.read(isLoginBox);
              final locationBox = ref.read(locationBoxProvider);
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/', (route) => false);
              isLogin.put('isLogin', false);
              await locationBox.deleteAll(locationBox.keys);
              data.isVisible = false;
              successMssg('LogOut Successfully!');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) async {
          final res = await ref
              .read(locationNotifierProvider.notifier)
              .onWillPop(context);
          if (res) {
            exit(0);
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Button(
                width: MediaQuery.of(context).size.width / 2,
                onPressedLogin: () {
                  ref.read(locationNotifierProvider.notifier).fetchPosition();
                },
                text: 'Start',
              ),
              const SizedBox(height: 30),
              Button(
                width: MediaQuery.of(context).size.width / 2,
                onPressedLogin: () {
                  ref.read(locationNotifierProvider.notifier).stopListener();
                },
                text: 'Stop',
              ),
              Visibility(
                visible: data.isVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'Start Loc: ${data.startLocation}',
                      style: Style.style3,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'End Loc: ${data.endLocation}',
                      style: Style.style3,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Total distance: ${data.totalDistanceInKm.toStringAsFixed(1)} km',
                      style: Style.style3,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Button(
                backgroundColor: !data.isVisible
                    ? Colors.black.withOpacity(0.3)
                    : Colors.black,
                width: MediaQuery.of(context).size.width / 2,
                onPressedLogin: () {
                  data.isVisible
                      ? Navigator.of(context).pushNamed('/next',
                          arguments: NextScreenArguments(
                            startLoc: data.startLocation,
                            endLoc: data.endLocation,
                            totalDistance:
                                data.totalDistanceInKm.toStringAsFixed(1),
                          ))
                      : null;
                },
                text: 'Continue',
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
