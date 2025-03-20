(use-package docker
  :ensure t
  :commands docker
  :init
  (whicher "docker")
  :bind ("C-c d" . docker))

(use-package docker-compose-mode
  :ensure t
  :mode "docker-compose\\.y\."
  :init
  (whicher "docker-compose"))

(use-package dockerfile-mode
  :ensure t
  :mode ("Dockerfile\\'" . dockerfile-mode))

(provide 'compchem-docker)

;;; freemacs-docker.el ends here

