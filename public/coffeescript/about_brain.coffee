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
      waitTime = 100

      if WheelOfFortune.last > waitTime
         WheelOfFortune.firstSlide[0].style.MozTransform = "rotate(-"+((WheelOfFortune.last - waitTime) /10)+"deg)"
         WheelOfFortune.secondSlide[0].style.MozTransform = "rotate("+(30 - ((WheelOfFortune.last - waitTime) /10))+"deg)"

      WheelOfFortune.last += 1

      if WheelOfFortune.last > 300 + waitTime
         WheelOfFortune.setSlides()
         WheelOfFortune.resetSlidesPosition()
         WheelOfFortune.last = 0

   setSlides: () ->
      if this.slideIndex < (this.details.length - 2)
         document.querySelector('.slide1>h2').innerHTML = this.details[this.slideIndex].titre
         if this.details[this.slideIndex].texte?
            document.querySelector('.slide1>p').innerHTML = this.details[this.slideIndex].texte
         else
            document.querySelector('.slide1>p').innerHTML = ""

         document.querySelector('.slide2>h2').innerHTML = this.details[this.slideIndex + 1].titre
         if this.details[this.slideIndex + 1].texte?
            document.querySelector('.slide2>p').innerHTML   = this.details[this.slideIndex + 1].texte
         else
            document.querySelector('.slide2>p').innerHTML = ""

         this.slideIndex += 1
      else
         clearInterval this.animate

   resetSlidesPosition: () ->
      this.firstSlide[0].style.MozTransform = "rotate(0deg)"
      this.secondSlide[0].style.MozTransform = "rotate(30deg)"