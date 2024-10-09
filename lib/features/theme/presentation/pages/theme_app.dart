import 'package:clean_app/features/theme/domain/entities/theme_app.dart';
import 'package:clean_app/features/theme/presentation/bloc/remote/remote_theme_app_bloc.dart';
import 'package:clean_app/features/theme/presentation/bloc/remote/remote_theme_app_event.dart';
import 'package:clean_app/features/theme/presentation/bloc/remote/remote_theme_app_state.dart';
import 'package:clean_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteThemeAppBloc>(
      create: (_) => sl()..add(const GetThemeApp()),
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: _buildBody(),
      ),
    );
  }

  AppBar _buildAppbar(BuildContext context) {
    return AppBar(title: const Text('Theme'));
  }

  Widget _buildBody() {
    return BlocBuilder<RemoteThemeAppBloc, RemoteThemeAppState>(
      builder: (_, state) {
        if (state is RemoteThemeAppLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is RemoteThemeAppError) {
          return const Center(
            child: Icon(Icons.refresh),
          );
        }
        if (state is RemoteThemeAppDone) {
          return ListView.builder(
            itemCount: getColorsFromTheme(state.themeAppData!).length,
            itemBuilder: (_, index) {
              return Container(
                width: double.infinity,
                height: 100,
                color: Color(getColorsFromTheme(state.themeAppData!)[index]),
              );
            },
          );
        }
        return const SizedBox();
      },
    );
  }

  List<int> getColorsFromTheme(ThemeAppEntity theme) {
    return [
      theme.primaryColor!,
      theme.secondaryColor!,
      theme.tertiaryColor!,
      theme.inversePrimaryColor!,
      theme.errorColor!,
      theme.backgroundColor!,
      theme.primaryContainerColor!,
      theme.secondaryContainerColor!,
      theme.tertiaryContainerColor!,
      theme.errorContainerColor!,
      theme.surfaceColor!,
      theme.inverseSurfaceColor!,
      theme.onPrimaryColor!,
      theme.onSecondaryColor!,
      theme.onBackgroundColor!,
      theme.onTertiaryColor!,
      theme.onSurfaceColor!,
      theme.onErrorColor!,
      theme.onPrimaryContainerColor!,
      theme.onSecondaryContainerColor!,
      theme.onTertiaryContainerColor!,
    ];
  }
}
