# expo-webview-release

Expo app that renders a WebView pointing to `https://google.com`, built into an Android APK inside Docker and emitted to `out/`.

## Structure

```
.
├── assets/                          # App icon and splash screen images
│   ├── icon.png
│   ├── adaptive-icon.png
│   ├── splash.png
│   └── favicon.png
├── src/
│   ├── src.app.tsx                  # Root App component (WebView)
│   ├── config/
│   │   └── config.app.ts            # App configuration
│   ├── constants/
│   │   └── constants.app.ts         # Default WebView URL and styles
│   └── utils/
│       └── utils.webview.ts         # WebView helpers
├── index.js                         # Expo entry point (registerRootComponent)
├── app.json                         # Expo app config (icon/splash/assets refs)
├── eas.json                         # EAS build profiles (preview = apk)
├── Dockerfile                       # Android SDK + EAS CLI builder image
├── docker-compose.yml               # eas-builder service
├── package.json                     # Root package manifest
├── tsconfig.json                    # TypeScript configuration
├── .prettierrc                      # Prettier configuration
├── .gitignore                       # Git ignore rules
└── yarn.lock                        # Lockfile
```

## Usage

```bash
# local dev
yarn install
yarn start

# docker container (keep running)
yarn start-container
yarn stop-container

# build APK with docker -> emits out/personal-cv.apk
yarn build:apk
```

## Requirements

- Docker running
- `EXPO_TOKEN` exported in the shell (used by docker-compose for EAS auth)
- EAS credentials at `~/.eas` (persisted via volume)

See `AGENTS.md` for code conventions.
