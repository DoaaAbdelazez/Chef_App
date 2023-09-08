import 'package:chef_app/app/app.dart';
import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/services/services_locator.dart';
import 'package:chef_app/features/auth/peresintation/cubits/forget_password/forget_password_cubit.dart';
import 'package:chef_app/features/auth/peresintation/cubits/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServicelocator();

  await sl<CacheHelper>().init();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => sl<GlobalCubit>()..getCachedLang(),
      ),
      BlocProvider(
        create: (context) => sl<LoginCubit>(),
      ),
      BlocProvider(
        create: (context) => sl<ForgetPasswordCubit>(),
      ),
    ],
    child: const MyApp(),
  ));
}
