(ert-deftest check-commits-infos ()
  (message "Check commits infos")
  (let ((file (latexdiff-testcase-file1)))
    (find-file file)
    (let ((infos (latexdiff--get-commits-infos))
          (infoss (latexdiff-testcase-commits-info)))
      (should (= (length infos) (length infoss)))
      (should (= (length (cdr infos)) (length (cdr infoss)))))))
