(defun min-of-two (n data)
  (let ((result '()))
    (loop for i from 0 below n do
      (let* ((nums (subseq data (* i 2) (+ (* i 2) 2)))
             (min (apply #'min nums)))
        (push min result)))
    (reverse result)))

(defun parse-input (input)
  (let* ((lines (split-sequence #\newline input))
         (n (parse-integer (first lines)))
         (data (mapcar #'parse-integer (split-string (second lines)))))
    (values n data)))

(defun format-output (output)
  (map 'string #'(lambda (x) (format nil "~A " x)) output))

(let* ((input "8\n1 2 3 4 5 6 7 8")
       (values (parse-input input))
       (n (first values))
       (data (second values))
       (result (min-of-two n data))
       (output (format-output result)))
  (format t "~A" output))
