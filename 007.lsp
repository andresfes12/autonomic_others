(defun fahrenheit-to-celsius (fahrenheit)
  (/ (- fahrenheit 32) 1.8))

(defun convert-temperatures (temperatures)
  (dolist (temp temperatures)
    (let ((celsius (fahrenheit-to-celsius temp)))
      (format t "~f " celsius)))
  (format t "~%"))

(defun main ()
  (let ((num-temps (parse-integer (read-line))))
    (let ((temperatures (make-list num-temps)))
      (loop for i below num-temps do
        (setf (nth i temperatures) (parse-integer (read-line))))
      (convert-temperatures temperatures))))

(main)
