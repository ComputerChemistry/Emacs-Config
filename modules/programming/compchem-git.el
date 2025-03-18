;;Magit 
(use-package magit
  :ensure t)

;;Magit-Transient
(elpaca transient)
(elpaca (magit :wait t))

(use-package git-timemachine
  :ensure t 
  :after git-timemachine
  :config
  (add-hook 'git-timemachine-mode-hook
            (lambda ()
              (local-set-key (kbd "C-j") 'git-timemachine-show-previous-revision)
              (local-set-key (kbd "C-k") 'git-timemachine-show-next-revision))))

 (provide 'compchem-git) 
