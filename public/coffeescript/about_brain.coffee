document.addEventListener "DOMContentLoaded", () ->
   animation = new WheelOfFortune

class WheelOfFortune
   last: 0

   constructor: () ->
      this.firstSlide = document.getElementsByClassName "slide1"
      this.secondSlide = document.getElementsByClassName "slide2"

      this.animate = setInterval this.rotation, 20, this

   rotation: (WheelOfFortune) ->
      WheelOfFortune.firstSlide[0].style.MozTransform = "rotate(-"+(WheelOfFortune.last/10)+"deg)"
      WheelOfFortune.secondSlide[0].style.MozTransform = "rotate("+((WheelOfFortune.last/10)-30)+"deg)"
      WheelOfFortune.last = WheelOfFortune.last+1


      if WheelOfFortune.last > 300
         clearInterval WheelOfFortune.animate
