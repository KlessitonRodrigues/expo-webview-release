## General Instructons

- File convention: <parent_folder>.<file_name>.ts
- Keep agents.md and readme.md to update on change project structure
- Commit small changes using "feat/update/fix/refactor/remove: <short_description>"
- Push commits is always manual

### NodeJS
- Use src/config for configuration
- Use src/constants for variables
- Use src/utils for utilitare code
- Declare type on top of file
- Only use typed return when needed
- Function with more than 2 parameters use an object: sum = (params: sumParams) => {}


## Files
  
<!-- Update with current file paths -->
 
```
.
├── readme.md                  # Project README (submodule instructions)
├── AGENTS.md                   # This file
├── index.js                    # Expo entry point (registerRootComponent)
├── assets/                     # App icon and splash screen
│   ├── icon.png
│   ├── adaptive-icon.png
│   ├── splash.png
│   └── favicon.png
├── src/
│   ├── src.app.tsx             # Root App component (WebView)
│   ├── config/
│   │   └── config.app.ts       # App configuration
│   ├── constants/
│   │   └── constants.app.ts    # Default WebView URL and styles
│   └── utils/
│       └── utils.webview.ts    # WebView helpers
├── app.json                    # Expo app config (icon/splash refs)
├── eas.json                    # EAS build profiles (preview = apk)
├── Dockerfile                  # Android SDK + EAS CLI builder image
├── docker-compose.yml          # eas-builder service
├── package.json               # Root package manifest
├── tsconfig.json              # TypeScript configuration
├── .prettierrc                # Prettier configuration
├── .gitignore                 # Git ignore rules
└── yarn.lock                  # Lockfile
```

## Project Intructions
  
- App entry: `index.js` -> `src/src.app.tsx`
- Default WebView URL: `DEFAULT_WEBVIEW_URL` in `src/constants/constants.app.ts`
- APK build: `yarn build:apk` runs the docker `eas-builder` service and emits `out/personal-cv.apk`
