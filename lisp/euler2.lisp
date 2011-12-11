(defun sum-even-fibs-below (max)
    (let ((fiblist '(2 1)) (stop nil))
        (loop until stop do
            (let ((new-fib (+ (first fiblist) (second fiblist))))
                (when (< new-fib max)   
                    (setf fiblist (cons new-fib fiblist)))
                (setf stop (> new-fib max))))
        (reduce #'+ (remove-if-not #'evenp fiblist))))

(sum-even-fibs-below 4000000)
