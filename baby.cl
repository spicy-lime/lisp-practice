(defun doublemikey (x) (* x 2))
(defun doublemikey2 (x) (* x 2))

(defun remove-ifmikey (func lst)
  (if (null lst)
      nil
      (if (funcall func (car lst))
	  (remove-ifmikey func (cdr lst))
	  (cons (car lst) (remove-ifmikey func (cdr lst)))
	  )))

(defun list+ (lst n)
  (mapcar #'(lambda (x) (+ x n)) lst))

(defun make-adder (n) #'(lambda (x) (+ x n)))

(defun make-adderb (n)
  #'(lambda (x &optional change)
      (if change
	  (setq n x)
	  (+ x n))))
  
(defun make-dbms (db)
  (list
   #'(lambda (key)
       (cdr (assoc key db)))
   #'(lambda (key val)
       (push (cons key val) db)
       key)
   #'(lambda (key)
       (setf db (delete key db :key #'car))
       key)))

