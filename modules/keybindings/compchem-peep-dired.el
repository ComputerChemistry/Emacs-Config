;;(use-package peep-dired
;;  :after dired
;;  :hook (evil-normalize-keymaps . peep-dired-hook)
;;  :config
;;    (evil-define-key 'normal dired-mode-map (kbd "h") 'dired-up-directory)
;;    (evil-define-key 'normal dired-mode-map (kbd "l") 'dired-open-file) ; use dired-find-file instead if not using dired-open package
;;    (evil-define-key 'normal peep-dired-mode-map (kbd "j") 'peep-dired-next-file)
;;    (evil-define-key 'normal peep-dired-mode-map (kbd "k") 'peep-dired-prev-file)
;)
 (provide 'compchem-peep-dired)

