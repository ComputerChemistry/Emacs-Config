(use-package auctex
  :ensure 
  :defer t
  :custom
  (TeX-auto-save t)
  (TeX-parse-self t)
  (TeX-master nil)
  (bibtex-dialect 'biblatex))

(provide 'compchem-latex)

;;; compchem-latex.el ends here
