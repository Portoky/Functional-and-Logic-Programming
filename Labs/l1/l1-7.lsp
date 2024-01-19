(defun carry (a b c)
	(cond 
		( (> (+ a b c) 9) 1)
		(T 0)
	)
)

(defun digit (a b c)
	(cond 
	( (> (+ a b c) 9)(mod (+ a b c) 10))
	(T (+ a b c))
	)
)

(defun myAppend (l1 l2)
	(cond
	((null l1) l2)
	(T (cons (car l1) (myAppend (cdr l1) l2)))
	)
)

(defun myReverse (l)
	(cond 
		((null l) (list))
		(T (myAppend (myReverse (cdr l)) (list (car l))))
	)
)


