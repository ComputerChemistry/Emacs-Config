;;spotify client
(use-package smudge
  :ensure t 
  :bind-keymap ("C-c ." . smudge-command-map)
  :custom
  (smudge-oauth2-client-secret "...")
  (smudge-oauth2-client-id "...")
  ;; optional: enable transient map for frequent commands
  (smudge-player-use-transient-map t)
  :config
  ;; optional: display current song in mode line
  (global-smudge-remote-mode))

 (provide 'compchem-smudge)
