(defun sum-mulitples (mul1 mul2 below)
    (let ((result 0))
        (dotimes (i (- below 1))
            (when (or (eql (mod (+ i 1) mul1) 0)
                      (eql (mod (+ i 1) mul2) 0))
                (setf result (+ result (+ i 1)))))
        result))

(sum-mulitples 3 5 1000)
