
(use-package rainbow-delimiters

  :hook ((emacs-lisp-mode . rainbow-delimiters-mode)
         (clojure-mode . rainbow-delimiters-mode)))

(use-package rainbow-mode
  :ensure t
  :diminish
  :hook org-mode prog-mode)
 
;;;;; rainbow
;;(use-package rainbow-mode
;;  :defer t
;;  :hook ((prog-mode . rainbow-mode)
;;         (web-mode . rainbow-mode)
;;         (css-mode . rainbow-mode)))

;;(use-package rainbow-delimiters
;;  :config (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
;;  :delight)


 (provide 'compchem-rainbow-mode)
