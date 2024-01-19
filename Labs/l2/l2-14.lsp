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
;for v1
(defun postorder (l)
(cond 
	((null l) ())
	(T (append (postorder (left l)) (postorder (right l)) (list (car l))) )
)
)