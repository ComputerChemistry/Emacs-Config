;;(use-package flycheck
;;  :hook ((prog-mode . flycheck-mode)
;;         (markdown-mode . flycheck-mode)
;;         (org-mode . flycheck-mode))
;;  :custom-face
;;  (flycheck-error   ((t (:inherit error :underline t))))
;;  (flycheck-warning ((t (:inherit warning :underline t))))
;;  :config
;;  (setq flycheck-check-syntax-automatically '(save mode-enabled))
;;  (setq flycheck-display-errors-delay 0.1)
;;  (setq-default flycheck-disabled-checkers '(python-pylint))
;;  (setq flycheck-flake8rc "~/.config/flake8")
;;  (setq flycheck-checker-error-threshold 1000)
;;  (setq flycheck-indication-mode nil)
;;  (define-key flycheck-mode-map (kbd "<f8>") #'flycheck-next-error)
;;  (define-key flycheck-mode-map (kbd "S-<f8>") #'flycheck-previous-error)
;; (flycheck-define-checker proselint
;;    "A linter for prose. Install the executable with `pip3 install proselint'."
;;    :command ("proselint" source-inplace)
;;    :error-patterns
;;    ((warning line-start (file-name) ":" line ":" column ": "
;;              (id (one-or-more (not (any " "))))
;;              (message) line-end))
;;    :modes (markdown-mode org-mode))
;;  (add-to-list 'flycheck-checkers 'proselint))


;;(use-package flycheck
;;  :ensure t
;;  :defer t
;;  :diminish
;;  :init (global-flycheck-mode))


;;________________________________________________________________
;;;;    programming
;;________________________________________________________________
;;;;; flycheck
;;(use-package flycheck
;;  :hook (prog-mode . flycheck-mode)
;;  :bind (("M-g M-j" . flycheck-next-error)
;;         ("M-g M-k" . flycheck-previous-error)
;;         ("M-g M-l" . flycheck-list-errors))
;;  :config
;; (setq flycheck-indication-mode 'right-fringe
;;        flycheck-check-syntax-automatically '(save mode-enabled))
;; Small BitMap-Arrow
;;  (when (fboundp 'define-fringe-bitmap)
;;   (define-fringe-bitmap 'flycheck-fringe-bitmap-double-arrow
;;     [16 48 112 240 112 48 16] nil nil 'center))

;;     Explanation-Mark !
;;   (when window-system
;;     (define-fringe-bitmap 'flycheck-fringe-bitmap-double-arrow
;;       [0 24 24 24 24 24 24 0 0 24 24 0 0 0 0 0 0]))

  ;; BIG BitMap-Arrow
  ;; (when (fboundp 'define-fringe-bitmap)
  ;;   (define-fringe-bitmap 'flycheck-fringe-bitmap-double-arrow
  ;;     [0 0 0 0 0 4 12 28 60 124 252 124 60 28 12 4 0 0 0 0]))

;;  :custom-face
;;  (flycheck-warning ((t (:underline (:color "#f9e2af" :style line :position line)))))
;;  (flycheck-error ((t (:underline (:color "#f38ba8" :style line :position line)))))
;;  (flycheck-info ((t (:underline (:color "#a6e3a1" :style line :position line)))))
;;  :delight " ∰") ; "Ⓢ"

;;(use-package flycheck-popup-tip
;;  :config
;;  (add-hook 'flycheck-mode-hook 'flycheck-popup-tip-mode))



 (provide 'compchem-flycheck)
