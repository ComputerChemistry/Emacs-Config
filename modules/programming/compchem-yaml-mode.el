(use-package yaml-mode
 :ensure t
 :config 
 (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
 :hook ((yaml-mode . (lambda ()
                       (define-key yaml-mode-map (kbd "RET") 'newline-and-indent)))))

 (provide 'compchem-yaml-mode)
