;; Instala las fuentes necesarias para all-the-icons
(use-package all-the-icons
  :ensure t
  :config
  (unless (member "all-the-icons" (font-family-list))
    (all-the-icons-install-fonts t)))
(put 'downcase-region 'disabled nil)
 
(use-package all-the-icons-dired
  :ensure t
  :hook (dired-mode . (lambda () (all-the-icons-dired-mode t)))) 
 
 ;; all-the-icons

;;(use-package all-the-icons
;;  :ensure t
;;  :if (display-graphic-p))

 (provide 'compchem-all-the-icons)
