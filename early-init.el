(load "~/.config/emacs/init.el")
(load (expand-file-name "init.el" user-emacs-directory))
(setq inhibit-startup-message t)
(setq package-enable-at-startup nil)
 
 (provide 'early-init)
