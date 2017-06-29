#lang racket
(require 2htdp/universe 2htdp/image)

(struct pit (snake goos0))
(struct snake (dir segs))
(struct posn (x y))
(struct goo (loc expire))