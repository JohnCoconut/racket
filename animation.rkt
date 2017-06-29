#lang racket
(require 2htdp/universe 2htdp/image)

(current-seconds)

(define (create-UFO-scene height)
  (underlay/xy (rectangle 100 500 "solid" "Orange Red" ) 50 height UFO))

(define UFO
  (underlay/align "center"
                  "center"
                  (circle 10 "solid" "green")
                  (rectangle 40 4 "solid" "green")))

(animate create-UFO-scene)

