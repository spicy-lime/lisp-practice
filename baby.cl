(defun doublemikey (x) (* x 2))
(defun doublemikey2 (x) (* x 2))
(doublemikey 3)
(sort '( 1 5 6 3 4 2 6 7) #'<)

(defun remove-ifmikey (func lst)
  (if (null lst)
      nil
      (if (funcall func (car lst))
	  (remove-ifmikey func (cdr lst))
	  (cons (car lst) (remove-ifmikey func (cdr lst)))
	  )))
