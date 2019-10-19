;; task 1.1
(defun insert-at (item index list)
  (concatenate 'list
    (subseq list 0 (- index 1))
    (list item)
    (nthcdr (- index 1) list)))

(insert-at 5 2 (list 6 4 3))

(defun my-remove (element list)
  (if (endp list) list
      (if (eql element (first list))
          (my-remove element (rest list))
          (list* (first list)
                 (my-remove element (rest list))))))

;; task 1.2
(remove 4 (list 6 4 3))

;; task 1.3
(defun pos (element list)
  (loop for x in list
     counting x into pos
     when (equal element x)
     return pos
     end
     finally (return NIL)))

(pos 7 (list 1 2 3 7 5))