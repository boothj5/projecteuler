(defun palindromep (str)
    (equal str (reverse str)))

(defun palindrome-num-p (num)
    (palindromep (write-to-string num)))

(defun largest-palindrome ()
    (let ((largest 0) (x 100))
    (loop while (<= x 999) do
        (let ((y 100))
        (loop while (<= y 999) do
            (let ((prod (* x y)))
            (when (and (palindrome-num-p prod) (> prod largest))
                (setf largest prod)) 
            (incf y))))
        (incf x))
    largest))

(largest-palindrome)
