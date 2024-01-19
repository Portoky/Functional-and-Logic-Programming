(defun nrOfNumbers (l)
	(cond
		((null l) 0)
		((numberp (car l)) (+ 1 (nrOfNumbers (cdr l))))
		(T (nrOfNumbers (cdr l)))
	)
)