(use-package fancy-battery
  :ensure t 
  :config
  (setq fancy-battery-show-percentage t)
  (setq battery-update-interval 15)
  (if window-system
      (fancy-battery-mode)
    (display-battery-mode)))

 (provide 'compchem-fancy-battery)
