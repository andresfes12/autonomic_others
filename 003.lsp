(defun sum-lists (list1 list2)
  (if (or (null list1) (null list2))
      nil
      (cons (+ (car list1) (car list2))
            (sum-lists (cdr list1) (cdr list2)))))

(setq list1 '(1 2 3 4 5))
(setq list2 '(6 7 8 9 10))
(setq result (sum-lists list1 list2))
(print result)
