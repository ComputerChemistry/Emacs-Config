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
  (load-theme 'doom-wilmersdorf t)
  (when (display-graphic-p)
      (progn
	;; Enable custom neotree theme (all-the-icons must be installed!)
	(doom-themes-neotree-config)
	;; or for treemacs users
	(setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
	(doom-themes-treemacs-config)
	))
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))
 
;;(progn
;;  (load-theme 'doom-monokai-pro t)
;;   Forzar color de fondo más oscuro (alto contraste)
;;  (set-face-attribute 'default nil :background "#0a0d12")
;;  (set-face-attribute 'fringe nil :background "#0a0d12"))


;; Forzar fondo negro
;;set-face-background 'default "#0a0d12")

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
;;(setq custom-enabled-themes '(ef-dream))
;;(setq custom-safe-themes '(ef-dream))

;; Restablece las caras de los números de línea
;;(set-face-attribute 'line-number nil :inherit 'default :foreground nil :background nil)
;;(set-face-attribute 'line-number-current-line nil :inherit 'default :foreground nil :background nil)
	 
;; Load theme
;;(load-theme ' doom-solarized-dark-high-contrast t)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 25      ;; sets modeline height
        doom-modeline-bar-width 4    ;; sets right bar width
	doom-modeline-project-name t
	doom-modeline-major-mode-icon t
	doom-modeline-persp-name t   ;; adds perspective name to modeline
        doom-modeline-time-icon t    ;; time icons
	doom-modeline-project-detection 'auto
	doom-modeline-icon t
	doom-modeline-persp-icon t)) ;; adds folder icon next to persp name

;;(with-eval-after-load 'doom-modeline
;;  (set-face-attribute 'mode-line nil
;;                     :background "#0a0d12"
;;                      :foreground "#cdd6f4"
;;                      :box nil)
;;  (set-face-attribute 'mode-line-inactive nil
;;                      :background "#0a0d12"
;;                      :foreground "#5c6370"
;;                      :box nil))



 (provide 'compchem-theme)

