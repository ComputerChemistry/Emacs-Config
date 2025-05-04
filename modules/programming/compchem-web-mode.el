(defvar cl/indent-width 2 "Anchura de indentación para web-mode.")

(use-package web-mode
  :ensure t 
  :init 
  (setq-default web-mode-enable-current-element-highlight t
                web-mode-enable-current-column-highlight t)
  :mode (("\\.html?\\'" . web-mode)
         ("\\.css\\'"   . web-mode)
         ("\\.jsx?\\'"  . web-mode)
         ("\\.tsx?\\'"  . web-mode)
         ("\\.json\\'"  . web-mode)
         ("\\.svelte\\'" . web-mode))
  :config
  (setq web-mode-markup-indent-offset cl/indent-width)
  (setq web-mode-code-indent-offset cl/indent-width)
  (setq web-mode-css-indent-offset cl/indent-width)
  (setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'"))))

(use-package css-eldoc
  :ensure t
  :config
  (add-hook 'css-mode-hook 'turn-on-css-eldoc)
  (add-hook 'scss-mode-hook 'turn-on-css-eldoc))

(use-package angular-mode
  :ensure t
  )

(use-package restclient
  :ensure t
  :mode ("\\.rest\\'" . restclient-mode)
  :config
  (setq restclient-inhibit-cookies t))

(provide 'compchem-web-mode)
