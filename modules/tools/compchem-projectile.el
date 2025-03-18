(use-package projectile
  :ensure t 
  :config
  (projectile-mode 1))

;;;;; projectile
(use-package projectile
  :ensure t 
  :disabled t
  :delight '(:eval (concat " [" projectile-project-name "]"))
  :pin melpa-stable
  :custom
  (projectile-enable-caching t)
  (projectile-completion-system 'ivy)
  :config (projectile-mode)
  :bind-keymap
  ("C-c p" . projectile-command-map))

  (provide 'compchem-projectile)
