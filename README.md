# Roku Image Fader

Drop in component for fading between 2 posters.

![build](https://github.com/rokucommunity/roku-image-fader/workflows/build/badge.svg)
[![NPM Version](https://badge.fury.io/js/roku-image-fader.svg?style=flat)](https://npmjs.org/package/roku-image-fader)

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
