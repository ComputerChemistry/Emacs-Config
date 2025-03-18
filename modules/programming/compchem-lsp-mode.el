;; Programming support and utilities

;; (add-to-list 'load-path (concat user-emacs-directory "lsp-bridge/"))
;; (use-package yasnippet)
;; (require 'lsp-bridge)
;; (global-lsp-bridge-mode)
;; (define-key acm-mode-map (kbd "<tab>") #'acm-select-next)
;; (define-key acm-mode-map (kbd "TAB") #'acm-select-next)
;; (define-key acm-mode-map (kbd "<backtab>") #'acm-select-prev)

;;(use-package lsp-mode
;;  :init
;;  (setq lsp-keymap-prefix "C-c l")
;;  :hook ((c-mode          ; clangd
;;          c++-mode        ; clangd
;;          c-or-c++-mode   ; clangd
;;          java-mode       ; eclipse-jdtls
;;          js-mode         ; ts-ls (tsserver wrapper)
;;          js-jsx-mode     ; ts-ls (tsserver wrapper)
;;          typescript-mode ; ts-ls (tsserver wrapper)
;;          python-mode     ; pyright
;;          web-mode        ; ts-ls/HTML/CSS
;;          rust-mode       ; rust-analyzer
;;          go-mode         ; gopls
;;          erlang-mode     ; erlang-mode
;;          haskell-mode    ; haskell-mode 
;;          lisp-mode       ; lisp-mode
;;          asm-mode        ;asm-lsp
;;          ) . lsp-deferred)
;;  :preface
;;  (defun cl/lsp-execute-code-action ()
;;    "Execute code action with pulse-line animation."
;;    (interactive)
;;  (cl/pulse-line)
;;    (call-interactively 'lsp-execute-code-action))
;;  :custom-face
;;  (lsp-headerline-breadcrumb-symbols-face                ((t (:inherit variable-pitch))))
;;  (lsp-headerline-breadcrumb-path-face                   ((t (:inherit variable-pitch))))
;;  (lsp-headerline-breadcrumb-project-prefix-face         ((t (:inherit variable-pitch))))
;;  (lsp-headerline-breadcrumb-unknown-project-prefix-face ((t (:inherit variable-pitch))))
;;  :commands lsp
;;  :config
;;  (add-hook 'java-mode-hook #'(lambda () (when (eq major-mode 'java-mode) (lsp-deferred))))
;;  (global-unset-key (kbd "<f2>"))
;;  (define-key lsp-mode-map (kbd "<f2>") #'lsp-rename)
;;  (setq lsp-auto-guess-root t)
;;  (setq lsp-log-io nil)
;;  (setq lsp-restart 'auto-restart)
;;  (setq lsp-enable-links nil)
;;  (setq lsp-enable-symbol-highlighting nil)
;;  (setq lsp-enable-on-type-formatting nil)
;;  (setq lsp-lens-enable nil)
;;  (setq lsp-signature-auto-activate nil)
;;  (setq lsp-signature-render-documentation nil)
;;  (setq lsp-eldoc-enable-hover nil)
;;  (setq lsp-eldoc-hook nil)
;;  (setq lsp-modeline-code-actions-enable nil)
;;  (setq lsp-modeline-diagnostics-enable nil)
;;  (setq lsp-headerline-breadcrumb-enable nil)
;;  (setq lsp-headerline-breadcrumb-icons-enable nil)
;;  (setq lsp-semantic-tokens-enable nil)
;;  (setq lsp-enable-folding nil)
;;  (setq lsp-enable-imenu nil)
;;  (setq lsp-enable-snippet nil)
;;  (setq lsp-enable-file-watchers nil)
;;  (setq lsp-keep-workspace-alive nil)
;;  (setq read-process-output-max (* 1024 1024)) ;; 1MB
;;  (setq lsp-idle-delay 0.25)
;;  (setq lsp-auto-execute-action nil)
;; (with-eval-after-load 'lsp-clangd
;;  (setq lsp-clients-clangd-args '("--header-insertion=never" "-j=4" "-background-index")))
;;  (add-to-list 'lsp-language-id-configuration '(js-jsx-mode . "javascriptreact")))

;;(use-package lsp-ui
;;  :commands lsp-ui-mode
;;  :custom-face
;;  (lsp-ui-sideline-global ((t (:italic t))))
;;  (lsp-ui-peek-highlight  ((t (:foreground unspecified :background unspecified :inherit isearch))))
;;  :config
;;  (with-eval-after-load 'evil
;;   (add-hook 'buffer-list-update-hook
;;              #'(lambda ()
;;                  (when (bound-and-true-p lsp-ui-mode)
;;                    (evil-define-key '(motion normal) 'local (kbd "K")
;;                      #'(lambda () (interactive) (lsp-ui-doc-glance) (cl/pulse-line)))))))
;; (setq lsp-ui-doc-enable nil)
;;  (setq lsp-ui-doc-show-with-mouse nil)
;;  (setq lsp-ui-doc-enhanced-markdown nil)
;;  (setq lsp-ui-doc-delay 0.01)
;;  (when (display-graphic-p)
;;    (setq lsp-ui-doc-use-childframe t)
;;    (setq lsp-ui-doc-text-scale-level -1.0)
;;    (setq lsp-ui-doc-max-width 80)
;;    (setq lsp-ui-doc-max-height 25)
;;    (setq lsp-ui-doc-position 'at-point))
;;  (setq lsp-ui-doc-include-signature t)
;;  (setq lsp-ui-doc-border (face-foreground 'font-lock-comment-face))
;;  (setq lsp-ui-sideline-diagnostic-max-line-length 80)
;;  (setq lsp-ui-sideline-diagnostic-max-lines 2)
;;  (setq lsp-ui-peek-always-show t)
;;  (setq lsp-ui-sideline-delay 0.05))

;;(use-package lsp-java
;;  :after lsp)

;;(use-package lsp-haskell
;;  :after lsp)
  
;;(use-package java
;;  :ensure nil
;;  :after lsp-java
;;  :bind (:map java-mode-map ("C-c i" . lsp-java-add-import)))

;;(use-package lsp-pyright
;;  :hook (python-mode . (lambda () (require 'lsp-pyright)))
;;  :init (when (executable-find "python3")
;;          (setq lsp-pyright-python-executable-cmd "python3")))

 (provide 'compchem-lsp-mode)
