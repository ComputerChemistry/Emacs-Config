
;;nov-mode
(use-package nov
    :ensure t x
    :init
    (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode)))

;;(use-package nov-xwidget
;;  :demand t
;;  :after nov
;;  :config
;;  (define-key nov-mode-map (kbd "o") 'nov-xwidget-view)
;;  (add-hook 'nov-mode-hook 'nov-xwidget-inject-all-files))

 (provide 'compchem-nov-xwidget)

