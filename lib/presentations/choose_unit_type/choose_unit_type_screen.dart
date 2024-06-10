import 'package:auto_route/auto_route.dart';
import 'package:easy_units/core/router/app_router/app_router.dart';
import 'package:easy_units/data/strings/app_strings.dart';
import 'package:eu_uikit/eu_uikit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

@RoutePage()
class ChooseUnitTypeScreen extends StatelessWidget {
  const ChooseUnitTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose unit type"),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchTextField(),
              const SizedBox(
                height: 24,
              ),
              StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 8.w,
                crossAxisSpacing: 8.w,
                children: [
                  ///TODO create UnitContainer Data,
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      bgColor: EUColors.baceGreyColor,
                      withLock: true,
                      icon: EasyUnitsAssets.icons.substance.svg(
                        width: 40.w,
                      ),
                      title: AppStrings.amountOfSubstance,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      withLock: false,
                      icon: EasyUnitsAssets.icons.area.svg(width: 40.0.w),
                      title: AppStrings.area,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      bgColor: EUColors.accentRedColor,
                      withLock: false,
                      title: AppStrings.angles,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      withLock: true,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      bgColor: EUColors.accentYellowColor,
                      withLock: false,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      bgColor: EUColors.navGreyColor,
                      withLock: false,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      bgColor: EUColors.accentVioletColor,
                      withLock: false,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      withLock: true,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      withLock: false,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      bgColor: EUColors.accentVioletColor,
                      withLock: false,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      bgColor: EUColors.accentYellowColor,
                      withLock: false,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: UnitContainer(
                      bgColor: EUColors.accentRedColor,
                      withLock: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
          // Center(
          //   child: TextButton(onPressed: (){
          //     context.pushRoute(ConvertRoute());
          //   }, child: Text("Convert Screen")),
          // ),
          ),
    );
  }
}
