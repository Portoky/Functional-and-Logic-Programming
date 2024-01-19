;BOMBOCLAAAT
;a)
(defun eliminateAll (l pos steps n)
(cond 
	((null l) ())
	((and (<= n pos) (>= n steps)) (eliminateAll (cdr l) (+ 1 pos) (+ 1 steps) n))
	(T (cons (car l) (eliminateAll (cdr l) (+ 1 pos) steps n)))
)
)

(defun eliminateMain (l n)
	(eliminateAll l 1 1 n)
)

;b)

(defun isValley (l decr)
	(cond
	((= (length l) 1) T)
	( (and (or (= decr 0) (= decr -1)) (> (car l) (cadr l)) ) (isValley (cdr l) (- 0 1)))
	( (and (or (= decr 1) (= decr -1)) (< (car l) (cadr l)) ) (isValley (cdr l) 1))
	(T nil)
	)
)

(defun mainIsValley (l)
	(cond
	((< (length l) 3) nil)
	(T (isValley l 0))
	)
)