(defun countElements (l e)
(cond 
	((null l) 0)
	((equal (car l) e) (+ 1 (countElements (cdr l) e) ))
	(T (countElements (cdr l) e))
)
)

(defun isMember (l e)
(cond 
	((null l) nil)
	((equal (car l) e) T)
	(T (isMember (cdr l) e))
)
)
;s for storing the atoms we got so far
(defun createPairs (l s)
(cond 
	((null l) ())
	((not (isMember s (car l))) (cons (list (car l) (countElements l (car l))) (createPairs (cdr l) (append (list (car l)) s))) )
	(T (createPairs (cdr l) s))
)
)

(defun mainCreatePairs (l)
	(createPairs l ())
)