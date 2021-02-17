import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/user_watcher/user_watcher_cubit.dart';
import 'package:test_app/injection.dart';
import 'package:test_app/presentation/widgets/user_profile/user_profile_body.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // №2
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
      },
      child: BlocProvider(
        create: (context) => getIt<UserWatcherCubit>()..fetchUserData(),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          resizeToAvoidBottomPadding: true,
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: UserProfileBody(),
        ),
      ),
    );
  }
}
