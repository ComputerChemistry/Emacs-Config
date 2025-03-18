(use-package company
  :hook (prog-mode . company-mode)
  :config
  (setq company-idle-delay 0.0)
  (setq company-tooltip-minimum-width 60)
  (setq company-tooltip-maximum-width 60)
  (setq company-tooltip-limit 7)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-frontends '(company-pseudo-tooltip-frontend ; show tooltip even for single candidate
                            company-echo-metadata-frontend))
  (unless (display-graphic-p)
    (define-key company-active-map (kbd "C-h") #'backward-kill-word)
    (define-key company-active-map (kbd "C-w") #'backward-kill-word))
  (define-key company-active-map (kbd "C-j") nil) ; avoid conflict with emmet-mode
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  (if (display-graphic-p)
      (define-key company-active-map (kbd "<tab>") 'company-select-next)
    (define-key company-active-map (kbd "TAB") 'company-select-next))
  (define-key company-active-map (kbd "<backtab>") 'company-select-previous))

(use-package company-box
  :if (display-graphic-p)
  :hook (company-mode . company-box-mode)
  :config
  (setq company-box-doc-enable nil)
  (setq company-box-scrollbar nil)
  (setq company-box-frame-behavior 'default))
  (provide 'compchem-company)

  ;;(use-package company
;;  :defer 2
;;  :diminish
;;  :custom
;;  (company-begin-commands '(self-insert-command))
;;  (company-idle-delay .1)
;;  (company-minimum-prefix-length 2)
;;  (company-show-numbers t)
;  (company-tooltip-align-annotations 't)
;;  (global-company-mode t))

;;(use-package company-box
;;    :after company
;;  :diminish
;;  :hook (company-mode . company-box-mode))

;;(use-package company-box
;;  :if (display-graphic-p)
;;  :hook (company-mode . company-box-mode)
;;  :config
;;  (setq company-box-doc-enable nil)
;;  (setq company-box-scrollbar nil)
;;  (setq company-box-frame-behavior 'default))



  (provide 'compchem-company)
