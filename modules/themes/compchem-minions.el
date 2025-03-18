
(use-package minions
  :config
  (setq minions-mode-line-lighter "")
  (setq minions-mode-line-delimiters '("" . ""))
  (setq-default mode-line-buffer-identification '("%b // " (:eval (projectile-project-name))))
  (minions-mode +1))

  (provide 'compchem-minions)
