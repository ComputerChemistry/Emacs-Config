;;;;; alert
(use-package alert
  :ensure t
  :commands alert
  :config
  (when (eq system-type 'darwin)
    (setq alert-default-style 'notifier))
  (when (eq system-type 'gnu/linux)
    (setq alert-default-style 'notifications))
  :delight)

 (provide 'compchem-alert)
