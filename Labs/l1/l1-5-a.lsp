(defun twicenth (l n)
	(cond 
		((null l) ())
		((NULL (zerop n)) (cons (car l) (twicenth (cdr l) (1- n))))
		(T (cons (car l) (cons (car l) (twicenth (cdr l) (1- n)))))	
	)
)