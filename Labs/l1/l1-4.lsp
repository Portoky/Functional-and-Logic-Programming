;a)

(defun myAppend (l1 l2)
	(cond
		((null l1) l2)
		(T (cons (car l1) (myAppend (cdr l1) l2)))
	)
)

(defun sum2v (v1 v2)

	(+ (mysum v1) (mysum v2))
)

(defun mysum (l)
	(cond
		((atom l) 0)
		(T (+ (car l) (mysum (cdr l))))
	)
)

;b)
(defun allatoms (l)
	(cond
		((null l) ())
		((atom (car l)) (append (list (car l)) (allatoms (cdr l))))
		(T (append (allatoms (car l)) (allatoms (cdr l))))
	)
	
)

;c)
(defun contatoms (l c)
	(cond 
		((null l) c)
		( (atom (car l)) (contatoms (cdr l) (myAppend (list(car l)) c )) )
		(T (myAppend c (myAppend (list (contatoms (car l) nil)) (contatoms (cdr l) nil)) ) ) 
	)	
)
(defun mainContatoms (l) 
	(contatoms l (list))
)