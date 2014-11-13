document.addEventListener "DOMContentLoaded", () ->
   animation = new WheelOfFortune details

class WheelOfFortune
   last: 0

   constructor: (details) ->
      this.slideIndex = 0
      this.details = details

      this.firstSlide = document.getElementsByClassName "slide1"
      this.secondSlide = document.getElementsByClassName "slide2"

      this.setSlides()

      this.animate = setInterval this.rotation, 20, this

   rotation: (WheelOfFortune) ->
      WheelOfFortune.firstSlide[0].style.MozTransform = "rotate(-"+(WheelOfFortune.last/10)+"deg)"
      WheelOfFortune.secondSlide[0].style.MozTransform = "rotate("+(30 - (WheelOfFortune.last/10))+"deg)"
      WheelOfFortune.last = WheelOfFortune.last+1


      if WheelOfFortune.last > 300
         clearInterval WheelOfFortune.animate

   setSlides: () ->  
      console.log document.querySelectorAll('.slide1');