import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/services/services_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());
  // bool isArabic = false;
  String langCode = 'ar';

  void changeLang(String codeLang) async {
    emit(ChangeLangLoading());
    // isArabic = !isArabic;
    langCode = codeLang;
    await sl<CacheHelper>().cacheLanguage(codeLang);
    emit(ChangeLangSucess());
  }

  void getCachedLang() {
    emit(ChangeLangLoading());
    final cacheLang = sl<CacheHelper>().getCachedLanguage();
    langCode = cacheLang;
    emit(ChangeLangSucess());
  }
}
