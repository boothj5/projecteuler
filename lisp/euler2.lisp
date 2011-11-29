(defun fib (n)
    (let ((fiblist '(2 1)))
        (dotimes (i (- n 2))
            (setf fiblist 
                (cons (+ (first fiblist) (second fiblist)) fiblist)))
        fiblist))

(reduce #'+ (remove-if-not #'evenp (fib 32)))
