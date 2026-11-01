# gotogether

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.




flutter pub run build_runner build --delete-conflicting-outputs

//via.placeholder
https://placehold.in/

## Architecture (BLoC + Clean Architecture)

```
lib/src
├── core/            config (env, get_it), network (Dio), error (Failure), result, usecases
└── features/activity
    ├── domain/      entities, repository interface, use cases
    ├── data/        models (freezed/json), data sources (remote Dio / mock), repository impl
    └── presentation/ ActivityBloc (event → state), pages, widgets
```

Flow: `Widget → Bloc event → UseCase → Repository → DataSource (Dio | Mock)`; errors are mapped to `Failure` and surfaced via state.

### Backend

Configured with `--dart-define`:

```
flutter run --dart-define=API_BASE_URL=https://api.example.com/v1   # real backend
flutter run                                                          # no URL → in-memory mock
flutter run --dart-define=USE_MOCK=true                              # force mock
```

Expected endpoints (body may be wrapped as `{ "data": ... }`):

| Method | Path | Returns |
| --- | --- | --- |
| GET | `/activities` | `[Activity]` |
| POST | `/activities` | `Activity` (body: title, description, tags, location, date, time, maxParticipants, photos) |
| POST / DELETE | `/activities/{id}/join` | updated `Activity` |
| PUT / DELETE | `/activities/{id}/save` | updated `Activity` |

`Activity` JSON: `id, title, description, tags[], location, date, time, owner{name,profileImage,isSuperUser}, joinedUsers[], maxParticipants, currentParticipants, photos[], isJoined, isSaved`.
Auth: set a token with `sl<SessionStore>().setToken(...)`; sent as `Authorization: Bearer`.

Codegen: `dart run build_runner build --delete-conflicting-outputs`
