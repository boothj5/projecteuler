(defun fibs ()
    (let ((fiblist '(2 1)) (stop nil))
        (loop until stop do
            (let ((new-fib (+ (first fiblist) (second fiblist))))
                (when (< new-fib 4000000)   
                    (setf fiblist (cons new-fib fiblist)))
                (setf stop (> new-fib 4000000))))
        (reduce #'+ (remove-if-not #'evenp fiblist))))
