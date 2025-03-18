;; solaire-mode

;;  (use-package solaire-mode
;;    :hook
;;    ((change-major-mode after-revert ediff-prepare-buffer) . turn-on-solaire-mode)
;;    (minibuffer-setup . solaire-mode-in-minibuffer)
;;    :config
;;    (solaire-global-mode +1)
;;    (add-hook 'after-make-frame-functions
;;              (lambda (_frame)
;;                (load-theme 'doom-ayu-dark t)
;;                (solaire-mode-swap-bg))))

;; (add-to-list 'solaire-mode-themes-to-face-swap "doom-ayu-dark")


  (provide 'compchem-solaire)

