;;Org-Settings (LaTex)

;;(use-package org
;;  :hook ((org-mode . visual-line-mode)
;;         (org-mode . auto-fill-mode)
;;         (org-mode . org-indent-mode)
;;         (org-mode . (lambda ()
;;                       (setq-local evil-auto-indent nil)
;;                       (setq-local olivetti-body-width (+ fill-column 5)))))
;;:config
;;  (require 'org-tempo)
;;  (setq org-link-descriptive nil)
;;  (setq org-startup-folded nil)
;;  (setq org-todo-keywords '((sequence "TODO" "DOING" "DONE")))
;;  (add-to-list 'org-file-apps '("\\.pdf\\'" . emacs))
;;  (setq org-html-checkbox-type 'html))

;;(use-package org-bullets
;;  :hook (org-mode . org-bullets-mode))

;;(use-package ox
;;  :ensure nil
;;  :config
;;  (setq org-export-with-smart-quotes t))

;;(use-package ox-latex
;;  :ensure nil
;;  :config
;;  (define-key org-mode-map (kbd "<f9>") #'org-latex-export-to-pdf)
;;  (setq org-latex-packages-alist '(("margin=1in" "geometry" nil)
;;                                   ;; ("bitstream-charter" "mathdesign" nil)
;;                                   ;; ("default, light" "roboto" nil)
;;                                   "\\hypersetup{colorlinks=true,linkcolor=blue,urlcolor=blue}"
;;                                   ("scale=0.9" "inconsolata" nil)))
;;(setq org-latex-pdf-process
;;        '("/usr/bin/pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;          "/usr/bin/pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;          "/usr/bin/pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f")))

;;(put 'upcase-region 'disabled nil)

 (provide 'compchem-org-latex)
