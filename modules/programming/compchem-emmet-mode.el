(use-package emmet-mode
  :ensure t
  :hook ((html-mode
          css-mode
          js-mode
          js-jsx-mode
          typescript-mode
          web-mode
          ) . emmet-mode)
  :config
  (setq emmet-insert-flash-time 0.001) ; effectively disabling it
  (add-hook 'js-jsx-mode-hook #'(lambda ()
                                  (setq-local emmet-expand-jsx-className? t)))
  (add-hook 'web-mode-hook #'(lambda ()
                               (setq-local emmet-expand-jsx-className? t))))

;;;;; web
;;(use-package emmet-mode
;;  :after (web-mode css-mode scss-mode)
;;  :commands (emmet-mode emmet-expand-line yas-insert-snippet company-complete)
;;  :config (setq emmet-move-cursor-between-quotes t)
;;  (add-hook 'emmet-mode-hook (lambda () (setq emmet-indent-after-insert nil)))
;;  (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
;;  (add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
  ;; (setq emmet-indentation 2)
;;  (unbind-key "C-M-<left>" emmet-mode-keymap)
;;  (unbind-key "C-M-<right>" emmet-mode-keymap)
;;  ((:map emmet-mode-keymap
;;         ("C-c [" . emmet-prev-edit-point)
;;         ("C-c ]" . emmet-next-edit-point)))
;;)


 (provide 'compchem-emmet-mode)
