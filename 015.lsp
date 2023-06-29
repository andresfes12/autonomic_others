(defun generar-arreglo ()
  (let ((arreglo (make-array 300)))
    (dotimes (i 300)
      (setf (aref arreglo i) (random 1000)))
    arreglo))

(defun encontrar-menor-mayor (arreglo)
  (let ((menor (aref arreglo 0))
        (mayor (aref arreglo 0)))
    (dotimes (i (length arreglo))
      (let ((num (aref arreglo i)))
        (when (< num menor)
          (setf menor num))
        (when (> num mayor)
          (setf mayor num))))
    (list menor mayor)))

(let ((arreglo (generar-arreglo))
      (resultado (encontrar-menor-mayor arreglo)))
  (format t "El número menor es: ~a~%" (first resultado))
  (format t "El número mayor es: ~a~%" (second resultado)))


