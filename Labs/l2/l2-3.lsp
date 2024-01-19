;BOMBOCLAAAAAT

(defun parse_left (l nv nm)
	(cond
		((null l) nil)
		((= nv (+ 1 nm)) nil)
		(T (cons (car l) 
			(cons (cadr l) 
				(parse_left (cddr l) (+ 1 nv) (+ (cadr l) nm)))))
	)
)

(defun left (l)
	(parse_left (cddr l) 0 0)
)

(defun parse_right (l nv nm)
	(cond
		((null l) nil)
		((= nv (+ 1 nm)) l)
		(T (parse_right (cddr l) (+ 1 nv) (+ (cadr l) nm)))
	)
)

(defun right (l)
	(parse_right (cddr l) 0 0)
)

(defun myMax (n1 n2)
	(cond
	((> n1 n2) n1)
	(T n2)
	)
)

;l is a tree
(defun maxlevel (l) 
(cond 
	((null l) 0)
	(T (+ 1 (myMax (maxlevel (left l)) (maxlevel (right l)) ) ) )
)
)