(setq c1 (make-cube 100 100 100))
(send c1 :set-color :red)
(setq c2 (make-cylinder 30 100))
(send c2 :set-color :blue)

(send c2 :locate #f(300 0 0))
(send c1 :assoc c2)

(objects (list c1 c2))

(do-until-key
	(send c1 :rotate (deg2rad 5) :z)
	(send *irtviewer* :draw-objects)
	(x::window-main-one))