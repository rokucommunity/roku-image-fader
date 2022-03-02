# Roku Image Fader

Drop in component for fading between 2 posters.

[![build status](https://img.shields.io/github/workflow/status/rokucommunity/roku-image-fader/build.svg?logo=github)](https://github.com/rokucommunity/roku-image-fader/actions?query=workflow%3Abuild)
[![monthly downloads](https://img.shields.io/npm/dm/roku-image-fader.svg?sanitize=true&logo=npm&logoColor=)](https://npmcharts.com/compare/roku-image-fader?minimal=true)
[![npm version](https://img.shields.io/npm/v/roku-image-fader.svg?logo=npm)](https://www.npmjs.com/package/roku-image-fader)
[![license](https://img.shields.io/github/license/rokucommunity/roku-image-fader.svg)](LICENSE)
[![Slack](https://img.shields.io/badge/Slack-RokuCommunity-4A154B?logo=slack)](https://join.slack.com/t/rokudevelopers/shared_invite/zt-4vw7rg6v-NH46oY7hTktpRIBM_zGvwA)

## Installation
### Using ropm
```bash
ropm install roku-image-fader
```

suggestion: use a shorter prefix:

```bash
ropm install if@npm:roku-image-fader
```

## Usage

Follow these steps:

  1. Declare an image fader component
  1. Set uri

### Declare an Image Fader component

#### In XML

*without prefix:*

```
  <rokuimagefader_ImageFader
      id="backgroundImage" />
```


*using if prefix:*

```
  <if_ImageFader
      id="backgroundImage"/>
```

#### In Brighterscript

*without prefix:*

```
  backgroundImage = createObject("roSGNode", "rokuimagefader_ImageFader")
```


*using if prefix:*

```
  backgroundImage = createObject("roSGNode", "if_ImageFader")
```

## Using the image fader

Use the following properties:

| property | description |
| --- | --- |
|`uri`| uri of next image|
|`isAnimated`| controls if fade animation is applied |
|`ShadeOpacity`| opacity for the shade overview |
|`scaleMode`| same as `poster.scaleMode` |
|`backgroundColor`| color of background between fades |

### callFunc convenience

As a convenience, you can do the following

```
image.callFunc("changeImage", uri, isAnimated)
```

This allows for setting of the uri, while providing an animation override.
