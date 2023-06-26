(defun min-of-three (a b c)
  (cond
    ((and (<= a b) (<= a c)) a)
    ((and (<= b a) (<= b c)) b)
    (t c)))

(defun solve ()
  (let ((num-cases (read)))
    (dotimes (i num-cases)
      (let* ((input (read-line))
             (input-list (mapcar #'parse-integer (split-string input))))
        (let ((a (nth 0 input-list))
              (b (nth 1 input-list))
              (c (nth 2 input-list)))
          (let ((min (min-of-three a b c)))
            (format t "~a " min)))))))

(solve)

