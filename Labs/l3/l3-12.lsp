(defun replace_all (x e1 e2)
	(cond 
		( (and (atom x) (equal x e1)) e2 )
		( (atom x) x)
		(T (apply #'list (mapcar #'(lambda (x2) (replace_all x2 e1 e2)) x) ) )
	)
)