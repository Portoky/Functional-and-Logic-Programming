(defun dotprod (l1 l2)
	(cond 
		((or (null l1) (null l2)) ())
		(T (append (list (cons (car l1) (car l2))) (dotprod (cdr l1) (cdr l2))))
	)
)