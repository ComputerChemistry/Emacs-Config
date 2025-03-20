;;;; custom-themes
(use-package doom-themes
  :ensure t
  :if window-system
  :custom-face
 ;; (cursor ((t (:background "#d699b6"))))
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
 (load-theme 'doom-gruvbox-material t)
  (if (display-graphic-p)``
      (progn
        ;; Enable custom neotree theme (all-the-icons must be installed!)
        (doom-themes-neotree-config)
        ;; or for treemacs users
        (setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
        (doom-themes-treemacs-config)
        ))
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

 (custom-set-faces
  '(font-lock-comment-face ((t (:foreground "#6A9955"))))) ;; Verde similar al de VS Code

;;Load themes directory
(add-to-list 'custom-theme-load-path "~/.config/emacs/themes")
;;(load-theme 'ef-reverie t)

;;(setq catppuccin-flavor 'macchiato) ;; Opciones: 'latte, 'macchiato, 'mocha, 'frappe
;;(load-theme 'catppuccin :no-confirm)
;;(catppuccin-reload)

;; Custom Enabled Theme
;; Auto lod custom theme.
;;(setq custom-enabled-themes '(doom-one))
;;(setq custom-safe-themes '(doom-one))

;; Restablece las caras de los números de línea
;;(set-face-attribute 'line-number nil :inherit 'default :foreground nil :background nil)
;;(set-face-attribute 'line-number-current-line nil :inherit 'default :foreground nil :background nil)
	 
;; Load theme
;;(load-theme ' doom-ayu-dark t)


(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 35      ;; sets modeline height
        doom-modeline-bar-width 5    ;; sets right bar width
        doom-modeline-persp-name t   ;; adds perspective name to modeline
        doom-modeline-persp-icon t)) ;; adds folder icon next to persp name


 (provide 'compchem-theme)
