;; PostgreSQL client (pg)
(use-package pg
  :ensure t (pg :host github :repo "emarsden/pg-el"))

;; pgmacs (requiere pg)
(use-package pgmacs
  :ensure t (pgmacs :host github :repo "emarsden/pgmacs")
  :after pg)  ;; Asegurar que se carga después de `pg`

(provide 'compchem-pgmacs)
