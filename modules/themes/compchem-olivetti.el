;;(use-package olivetti
;;  :ensure t
;;  :config
  ;; Ajustar el ancho del texto en Olivetti
;;  (setq olivetti-body-width 100) ; Establece el ancho del texto a 100

  ;; Activar Olivetti en todos los buffers, excepto en ciertos modos
 ;; (defun my-enable-olivetti ()
 ;;   "Activar olivetti-mode en todos los buffers, excepto en modos excluidos."
 ;;   (unless (derived-mode-p 'org-mode 'dired-mode 'special-mode) ; Excluir modos específicos
 ;;     (olivetti-mode 1)))

  ;; Hook global para activar Olivetti
 ;; (add-hook 'after-change-major-mode-hook #'my-enable-olivetti))

 (provide 'compchem-olivetti)
