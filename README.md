# fluttercon_design_tokens_example

This is an example repository for Fluttercon 2023 Berlin. It contains an example about using design tokens with Flutter. The design tokens are handled by Token Studio in Figma.

## Contents

This project contains an example application with views that uses material theme enhanced with colors and colors that are extracted from design tokens. The design tokens are handled in own package and they are generated using Supernova plugin.

In this example we are using two theme sets to implement light and dark mode as an example.

This example project also has a separate gallery project that is used to visualize different token values.

## Figma to Flutter

Sync your tokens to code with the following steps:

\
PRE STEPS:

- Download the Figma file from [here](<https://www.figma.com/community/file/1258416157029543893>)
- Download tokens as json from 'data/FLTCN_Demo_Tokens.json'
- Create an account for Supernova.io and Figma
- In Supernova.io, download the wanted exporter \
(Code integration - Store - Flutter)
- For code: VS Code (Only platform Supernova currently supports)
- Install 'SupernovaIO' extension to VS Code

\
TRANSFORMING:

1. Open Figma file
2. Run Figma plugin 'Tokens Studio for Figma (Figma Tokens)'
3. Import 'data/FLTCN_Demo_Tokens.json' to the Tokens Studio plugin \
(Tools - Load from file/folder or preset)
4. Sync your Supernova account to Tokens Studio \
(Settings- Add new - Supernova - Add your credentials)
5. Use correct mapping (example below)
6. Push your tokens to Supernova
7. In VS Code Supernova extension, log in and choose the wanted design system
8. Run the exporter and you are ready to use your tokens in code

MAPPING EXAMPLE

- free (uses ‘tokenSets’)

```json

[
    {
      "tokenSets": ["global", "light"],
      "supernovaBrand": "Default",
      "supernovaTheme": null,
    },
    {
      "tokenSets": ["global", "dark"],
      "supernovaBrand": "Default",
      "supernovaTheme": "dark",
    }
]

```

- pro (uses 'tokensTheme’)

```json
[
    {
      "tokensTheme": "light",
      "supernovaBrand": "Default",
      "supernovaTheme": null,
    },    
    {
      "tokensTheme": "dark",
      "supernovaBrand": "Default",
      "supernovaTheme": "dark",
    }
]
```

\
MULTI THEMING

Working with multi themes, use this workaround since Supernova does not yet support importing multiple themes at the same time:

1. Use mapping on Tokens studio so that wanted theme/sets are first\
e.g. “tokensTheme”: “light” & “supernovaTheme”: null
2. Run exporter to corresponding folder \
e.g. ‘tokens/light’
3. Change mapping so that second theme becomes first \
e.g tokensTheme”: “dark” & “supernovaTheme”: null
4. Export to corresponding folder \
e.g. ‘tokens/dark’
5. Repeat until you got all your tokens for different themes in VS Code

\
For more detailed instructions/help see the documentation of \
Supernova.io learn: [Link](<https://learn.supernova.io/latest/introduction/welcome-to-supernova-DHPbgwzy>) \
Supernova.io developers: [Link](<https://developers.supernova.io/latest/introduction-OZ286CLI>)
\
Tokens Studio: [Link](<https://docs.tokens.studio/>)
