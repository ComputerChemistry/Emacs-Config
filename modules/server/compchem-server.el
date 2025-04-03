;; Start Emacs Server

 (require 'server)
(unless (server-running-p)
  (server-start)) 

;;(use-package 'server
;;    :ensure  t
;;    :config
;;    (unless (server-running-p)
;;      (server-start)))

(provide 'compchem-server)
