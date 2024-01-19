;BOMBOCLAAAAT	
;for v2

(defun maxlevel (l) 
(cond 
	((null l) 0)
	(T (+ 1 (myMax (maxlevel (cadr l)) (maxlevel (caddr l)) ) ) )
)
)

(defun isBalanced (l)
(cond
	((= (abs (- (maxlevel (cadr l)) (maxlevel (caddr l)) ) ) 1) T)
	(T nil)
)
)