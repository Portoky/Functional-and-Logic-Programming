(defun numberOfChildren (l)
(cond
	((and(not ( null (cadr l) )) (not ( null (caddr l)) ) ) 2)
	((not ( null (cadr l) )) 1)
	((not ( null (caddr l) )) 1)
	(T 0)
)
)

(defun convert2to1 (l) 
(cond 
	((null l) ())
	(T (append (list (car l)) (list (numberOfChildren l)) (convert2to1 (cadr l) ) (convert2to1 (caddr l)) ) )
)
)