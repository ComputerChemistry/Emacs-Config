(use-package pdf-tools
  :ensure t
  :magic ("%PDF" . pdf-view-mode)
  :config
  (pdf-loader-install :no-query))

;; End

;; Tell Emacs what package this file provides.

(provide 'compchem-pdf-tools)

;;; compchem-pdf-tools.el ends here


