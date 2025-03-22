;;Paredit 
 (use-package paredit 
   :ensure t
   :config 
   (add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
   (add-hook 'lisp-mode-hook 'enable-paredit-mode))

(provide 'compchem-paredit)
