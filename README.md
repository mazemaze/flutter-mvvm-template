# riverpod_mvvm_template

A boileplate project of MVVM flutter architecture.

## Getting Started

Start with a command below.

```
flutter pub get
```

## Packages
> Dependencies

| Package Name | Version | URL |
| --- | --- | --- |
| freezed_annotation | latest | https://pub.dev/packages/freezed_annotation |
| flutter_riverpod | latest | https://riverpod.dev/ja/ |
| hooks_riverpod | latest | https://riverpod.dev/ja/ |

> Dev_Dependencies

| Package Name | Version | URL |
| --- | --- | --- |
| build_runner | latest | https://pub.dev/packages/build_runner |
| flutter_launcher_icons | latest | https://pub.dev/packages/flutter_launcher_icons |
| freezed | latest | https://pub.dev/packages/freezed |
| json_serializable | latest | https://pub.dev/packages/json_serializable |


## Generate Icons
Place a png file in assets/icon/***.png 

```
flutter run pub flutter_launcher_icons:main
```

## Generate Freezed Files


```
//genarate files once
flutter pub run build_runner build --delete-conflicting-outputs

//Observe files and continue on generating files
flutter pub run build_runner watch --delete-conflicting-outputs
```

https://qiita.com/mrmtsiy/items/d16ef690233b27685855
