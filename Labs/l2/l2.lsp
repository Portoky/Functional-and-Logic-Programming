
;for v2
(defun path (e l)
	(cond
		((null l) ())
		((equal e (car l)) e) 
		((not (null (path e (caddr l)))) (cons (car l) (path e (caddr l))) )
		((not (null (path e (cadr l)))) (cons (car l) (path e (cadr l))) )
		(T ())
	)
)
;for v1
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

(defun path2 (e l)
	(cond
		((null l) ())
		((eql e (car l)) e)
		((not (null (path2 e (right l)))) (cons (car l) (path2 e (right l)))) 
		((not (null (path2 e (left l)))) (cons (car l) (path2 e (left l)))) 
		(T ())
	)
)

