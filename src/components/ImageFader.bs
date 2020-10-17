
' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********
' setting top interfaces
' setting observers
function Init() as void
  m.background = m.top.findNode("background")
  m.oldBackground = m.top.findNode("oldBackground")
  m.oldbackgroundInterpolator = m.top.findNode("oldbackgroundInterpolator")
  m.shade = m.top.findNode("shade")
  m.fadeoutAnimation = m.top.findNode("fadeoutAnimation")
  m.fadeinAnimation = m.top.findNode("fadeinAnimation")
  m.backgroundColor = m.top.findNode("backgroundColor")

  m.background.observeField("bitmapWidth", "onBackgroundLoaded")
  m.top.observeField("width", "onSizeChange")
  m.top.observeField("height", "onSizeChange")
  m.top.observeField("scaleMode", "onSizeChange")
  m.top.observeField("uri", "onUriChange")
end function

' If Size changed, change parameters to childrens
function onSizeChange() as void
  size = m.top.size

  m.background.width = m.top.width
  m.oldBackground.width = m.top.width
  m.shade.width = m.top.width
  m.backgroundColor.width = m.top.width
  m.oldBackground.loadWidth = m.top.width
  m.background.loadWidth = m.top.width

  m.oldBackground.height = m.top.height
  m.background.height = m.top.height
  m.shade.height = m.top.height
  m.backgroundColor.height = m.top.height
  m.oldBackground.loadHeight = m.top.height
  m.background.loadHeight = m.top.height

  m.oldBackground.loadDisplayMode = m.top.scaleMode
  m.background.loadDisplayMode = m.top.scaleMode
end function

function onBackgroundLoaded() as void
  if m.isAnimated 
    m.fadeinAnimation.control = "start"
  else 
    m.background.opacity = 1
    m.oldBackground.opacity = 0
  end if
end function

function onUriChange()
  changeImage(m.top.uri, m.top.isAnimated)
end function

function changeImage(uri, isAnimated = invalid)
  oldUrl = m.currentUri
  if uri <> invalid and uri <> ""
    m.currentUri = uri
  else
    m.currentUri = ""
  end if
  if isAnimated = invalid
    m.isAnimated = m.top.isAnimated
  else 
    m.isAnimated = isAnimated = true
  end if
  m.background.uri = m.currentUri
  m.fadeoutAnimation.control = "stop"

  if oldUrl <> "" then
    m.oldBackground.uri = oldUrl

    if m.isAnimated
      m.oldbackgroundInterpolator = [m.background.opacity, 0]
      m.fadeoutAnimation.control = "start"
    else
      m.background.opacity = 1
      m.oldBackground.opacity = 0
    end if
  end if

end function