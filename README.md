# riverpod_mvvm_template

A boileplate project of MVVM flutter architecture.

## Getting Started

Start with a command below.

```
flutter pub get
```

## Packages
> Dependencies

| Package Name | Version |
| --- | --- |
| freezed_annotation | latest |
| flutter_riverpod | latest |
| hooks_riverpod | latest |

> Dev_Dependencies

| Package Name | Version |
| --- | --- |
| build_runner | latest |
| flutter_launcher_icons | latest |
| freezed | latest |
| json_serializable | latest |


## Generate Icons

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
