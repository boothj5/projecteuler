(defun smallest-factor (n)
    (cond ((or (= n 0) (= n 1)) nil)    
          ((or (= n 2) (= n 3)) n)
          ((evenp n) 2)
          (t (let ((test 3))
                (loop while (not (factorp test n)) do
                    (setf test (+ test 2)))
                test))))

(defun factorp (n m)
    (= (mod m n) 0))

(defun floored-sqrt (num)
    (first (multiple-value-list (floor (sqrt num)))))


