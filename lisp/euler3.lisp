(defun factorp (n m)
    (= (mod m n) 0))

(defun floored-sqrt (num)
    (first (multiple-value-list (floor (sqrt num)))))

(defun largest-prime-factor (n)
    (cond  ((= n 2) 2)
           ((evenp n) (largest-prime-factor (max 2 (/ n 2))))
           (t (let ((sqt (floored-sqrt n))
                   (i 3))
                (loop while (and (<= i sqt) (not (factorp i n))) do
                    (setf i (+ i 2)))
                (cond ((> i sqt) n)
                      (t (max i (largest-prime-factor (/ n i)))))))))

(largest-prime-factor 600851475143)                
