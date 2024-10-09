import 'package:clean_app/core/resources/data_state.dart';
import 'package:clean_app/core/usecases/usecase.dart';
import 'package:clean_app/features/theme/domain/entities/theme_app.dart';
import 'package:clean_app/features/theme/domain/repository/theme_app_repository.dart';

class GetThemeAppUseCase implements Usecase<DataState<ThemeAppEntity>, void> {
  final ThemeAppRepository _themeAppRepository;
  GetThemeAppUseCase(this._themeAppRepository);

  @override
  Future<DataState<ThemeAppEntity>> call({void params}) {
    return _themeAppRepository.getTheme();
  }
}
