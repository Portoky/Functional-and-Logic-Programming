(defun nrOfSublists (l)
	(cond
		((null l) 1)
		((listp (car l)) (+ (nrOfSublists (car l)) (nrOfSublists (cdr l)) ) ) 
		(T (nrOfSublists (cdr l)))
	)
)
