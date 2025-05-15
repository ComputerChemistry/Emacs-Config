(defgroup doom-solarized-high-contrast-theme nil
  "Options for doom-solarized-high-contrast."
  :group 'doom-themes)

(defcustom doom-solarized-high-contrast-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'doom-solarized-high-contrast-theme
  :type '(choice integer boolean))

(def-doom-theme doom-solarized-high-contrast
  "Solarized theme with high contrast."

  ;; name        gui       256       16
  ((bg         '("#002b36" "#002b36" "black"))  ; fondo más oscuro
   (bg-alt     '("#073642" "#073642" "black"))  ; fondo alternativo
   (fg         '("#839496" "#839496" "brightwhite"))  ; texto más claro
   (fg-alt     '("#93a1a1" "#93a1a1" "brightwhite"))  ; texto alternativo

   ;; Colores de énfasis
   (yellow     '("#b58900" "#b58900" "yellow"))
   (orange     '("#cb4b16" "#cb4b16" "orange"))
   (red        '("#dc322f" "#dc322f" "red"))
   (magenta    '("#d33682" "#d33682" "magenta"))
   (violet     '("#6c71c4" "#6c71c4" "violet"))
   (blue       '("#268bd2" "#268bd2" "blue"))
   (cyan       '("#2aa198" "#2aa198" "cyan"))
   (green      '("#859900" "#859900" "green"))

   ;; Colores de fondo de elementos
   (highlight      yellow)
   (selection      bg-alt)
   (builtin        orange)
   (comments       (if doom-solarized-high-contrast-brighter-comments magenta grey))
   (doc-comments   (doom-lighten magenta 0.2))
   (constants      violet)
   (functions      green)
   (keywords       red)
   (methods        green)
   (operators      fg)
   (type           yellow)
   (strings        green)
   (variables      blue)
   (numbers        violet)
   (region         bg-alt)

   ;; modeline
   (modeline-bg bg-alt)
   (modeline-fg fg)
   (modeline-inactive-bg (doom-darken modeline-bg 0.15))
   (modeline-inactive-fg base5)

   ;; Otros ajustes
   (-modeline-pad
    (when doom-solarized-high-contrast-padded-modeline
      (if (integerp doom-solarized-high-contrast-padded-modeline)
          doom-solarized-high-contrast-padded-modeline
        4)))

   ;; Customización adicional
   (org-quote `(,(doom-lighten (car bg) 0.05) "#1f1f1f")))

  ;; Base theme face overrides
  ((button :foreground cyan :underline t :weight 'bold)
   (cursor :background fg)
   (hl-line :background base3)
   ((line-number &override) :foreground base5)
   ((line-number-current-line &override) :background base3 :foreground yellow)
   (isearch :foreground base0 :background orange)
   (lazy-highlight :background yellow :foreground base0 :distant-foreground base0 :bold bold)
   ((link &override) :foreground violet)
   (minibuffer-prompt :foreground cyan)
   (mode-line
    :background my-black :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background bg :foreground base4
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-inactive-bg)))

   ;; Otros componentes, como el completado de código, editores, etc.
   (company-preview-common :foreground cyan)
   (company-tooltip-common :foreground cyan)
   (company-tooltip-common-selection :foreground cyan)
   (company-tooltip-annotation :foreground cyan)
   (company-tooltip-annotation-selection :foreground cyan)
   (company-scrollbar-bg :background base3)
   (company-scrollbar-fg :background cyan)
   (company-tooltip-selection :background bg-alt2)
   (company-tooltip-mouse :background bg-alt2 :foreground nil)
   ;; dired
   (dired-directory :foreground cyan)
   (dired-marked :foreground yellow)
   (dired-symlink :foreground cyan)
   (dired-header :foreground cyan)
   ;; magit
   (magit-section-heading             :foreground cyan :weight 'bold)
   (magit-branch-current              :underline green :inherit 'magit-branch-local)))
