function init() as void
  createObject("roSGNode", "TrackerTask")
  m.images = [
    "https://homepages.cae.wisc.edu/~ece533/images/airplane.png"
    "https://homepages.cae.wisc.edu/~ece533/images/arctichare.png"
    "https://homepages.cae.wisc.edu/~ece533/images/baboon.png"
  ]
  m.imageIndex = 0

  m.imageFader = m.top.findNode("imageFader")
  m.imageFader.callFunc("changeImage", m.images[m.imageIndex])
end function


function onTimerFire()
  m.imageIndex++
  if m.imageIndex = m.images.count()
    m.imageIndex = 0
  end if
  m.imageFader.callFunc("changeImage", m.images[m.imageIndex])
end function
