
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                            ;;
;;			    Package Repositories                              ;; 
;;                                                                            ;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;..............................................................................

 (require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
 ;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(package-initialize)

(setq package-archive-priorities
      '(("melpa" .  4)
        ("melpa-stable" . 3)
        ("org" . 2)
        ("gnu" . 1)))

;;; Generic packages
(require 'package)
;; Select the folder to store packages
;; Comment / Uncomment to use desired sites
(setq package-user-dir (expand-file-name "elpa" user-emacs-directory)
      package-archives
      '(("gnu"   . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("org" . "https://orgmode.org/elpa/"))
      package-quickstart nil)
;; ("cselpa" . "https://elpa.thecybershadow.net/packages/")
;; ("melpa-cn" . "http://mirrors.cloud.tencent.com/elpa/melpa/")
;; ("gnu-cn"   . "http://mirrors.cloud.tencent.com/elpa/gnu/"))

;; Configure Package Manager
(unless (bound-and-true-p package--initialized)
  (setq package-enable-at-startup nil) ; To prevent initializing twice
  (package-initialize))

;; set use-package-verbose to t for interpreted .emacs,
;; and to nil for byte-compiled .emacs.elc.
(eval-and-compile
  (setq use-package-verbose (not (bound-and-true-p byte-compile-current-file))))

;;..............................................................................

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                            ;;
;;				Modules Directory                             ;; 
;;                                                                            ;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(add-to-list 'load-path "~/.config/emacs/modules")

(let ((default-directory "~/.config/emacs/modules/"))
    (normal-top-level-add-subdirs-to-load-path))  ;; Modules level directory 
    (require 'compchem-elpaca) ;; The Elpaca Package Manager
    (require 'compchem-usepackage)
    (require 'compchem-async)
    (require 'compchem-server)
    (require 'compchem-benchmark-init)
    (require 'compchem-no-littering)
    (require 'compchem-whicher)
    (require 'compchem-tree-sitter)   ;; Buffer-move for better window management
    (require 'compchem-ui) 
    (require 'compchem-transparency) 
    (require 'compchem-font) ;; custom   
    (require 'compchem-trash)
    (require 'compchem-temporary)
    (require 'compchem-gdb)
    (require 'compchem-dashboard)
    (require 'compchem-restart-emacs)
    (require 'compchem-sudo-edit)
    (require 'compchem-link-hint)
    (require 'compchem-tldr)
    (require 'compchem-pdf-tools)
    (require 'compchem-latex) ;; latex stuff
    (require 'compchem-package-repos) ;; package repositories to load
    (require 'compchem-keybindings) ;; emacs keybings 
    (require 'compchem-theme) ;;user interface packages 
    (require 'compchem-neotree)
    (require 'compchem-projectile) ;; tool for manage projects in emacs 
    (require 'compchem-company)
    (require 'compchem-nerd-font) ;; install required fonts 
    (require 'compchem-centaur-tabs) ;; tabs for manager buffers 
    (require 'compchem-minions)
    (require 'compchem-emoji)
    (require 'compchem-solaire) 
    (require 'compchem-rainbow-mode) ;; syntax highlight for programming languages
    (require 'compchem-all-the-icons) ;; icons support for buffer management 
    (require 'compchem-counsel)
    (require 'compchem-dired-open)
    (require 'compchem-youtube)
    (require 'compchem-eww)
    (require 'compchem-eaf-framework)
    (require 'compchem-perspective)
    (require 'compchem-app-launchers)
    (require 'compchem-ivy)
    (require 'compchem-highlight-indent-guides)
    (require 'compchem-highlight-numbers)
    (require 'compchem-beacon) ;;color cursos tool 
    (require 'compchem-olivetti) 
    (require 'compchem-alert)
    (require 'compchem-comment)
    (require 'compchem-fancy-battery)
    (require 'compchem-nov-xwidget)
    (require 'compchem-dimish)
    (require 'compchem-try)
    (require 'compchem-volatile-highlights)
    (require 'compchem-org-mode)
    (require 'compchem-toc-org)
    (require 'compchem-hl-todo)
    (require 'compchem-org-latex)
    (require 'compchem-pgmacs)
    (require 'compchem-evil)
    (require 'compchem-which-key)
    (require 'compchem-peep-dired)
    (require 'compchem-eshell)
    (require 'compchem-vterm)
    (require 'compchem-git)
    (require 'compchem-flycheck)
    (require 'compchem-pyenv)
    (require 'compchem-markdown-mode)
    (require 'compchem-rust-mode)
    (require 'compchem-go-mode)
    (require 'compchem-json-mode)
    (require 'compchem-vimrc-mode)
    (require 'compchem-rjsx-mode)
    (require 'compchem-yaml-mode)
    (require 'compchem-typescript-mode)
    (require 'compchem-lua-mode)
    (require 'compchem-lsp-mode)
    (require 'compchem-format-all)
    (require 'compchem-emmet-mode)
    (require 'compchem-web-mode)
    (require 'compchem-slime)
    (require 'compchem-erlang)
    (require 'compchem-racket-mode)
    (require 'compchem-paredit)
    (require 'compchem-modern-cpp-font-lock)
    (require 'compchem-cpp-auto-include)
    (require 'compchem-cmake-font-lock)
    (require 'compchem-kubernetes)
    (require 'compchem-docker)
    

    


