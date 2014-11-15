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
         this.setSlide document.querySelector('.slide1>p'), this.details[this.slideIndex]
         this.setSlideImage document.querySelector('.slide1>img'), this.details[this.slideIndex]    

         document.querySelector('.slide2>h2').innerHTML = this.details[this.slideIndex + 1].titre
         this.setSlide document.querySelector('.slide2>p'), this.details[this.slideIndex + 1]
         this.setSlideImage document.querySelector('.slide2>img'), this.details[this.slideIndex + 1]

         this.slideIndex += 1
      else
         clearInterval this.animate

   setSlide: (element, details) ->      
      element.innerHTML = ""
      if details.texte?
         element.innerHTML = details.texte

   setSlideImage: (element, details) ->
      _categorie = {
         "musique": "circlecornet.gif"
         "culinaire": "cake.gif"
         "personne": "abolla.gif"
         "divers": "goniometer.gif"
      }  


      if _categorie[details.categorie]?
         element.src = "/public/img/" + _categorie[details.categorie]
      else
         element.src = "/public/img/armadillo.gif"


   resetSlidesPosition: () ->
      this.firstSlide[0].style.MozTransform = "rotate(0deg)"
      this.secondSlide[0].style.MozTransform = "rotate(30deg)"