;;; airline-themes-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "airline-themes" "airline-themes.el" (21943
;;;;;;  55054 539522 811000))
;;; Generated autoloads from airline-themes.el

(when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

(defvar airline-helm-colors t "\
Set helm colors to match the airline theme.

Valid Values: Enabled, Disabled")

(custom-autoload 'airline-helm-colors "airline-themes" t)

(defvar airline-cursor-colors t "\
Set the cursor color based on the current evil state.

Valid Values: Enabled, Disabled")

(custom-autoload 'airline-cursor-colors "airline-themes" t)

(defvar airline-display-directory 'airline-directory-shortened "\
Display the currend directory along with the filename.

Valid Values: Full, Shortened, Disabled")

(custom-autoload 'airline-display-directory "airline-themes" t)

(defvar airline-utf-glyph-separator-left 11136 "\
The unicode character number used for the left side separator.")

(custom-autoload 'airline-utf-glyph-separator-left "airline-themes" t)

(defvar airline-utf-glyph-separator-right 11138 "\
The unicode character number used for the right side separator.")

(custom-autoload 'airline-utf-glyph-separator-right "airline-themes" t)

(defvar airline-utf-glyph-subseparator-left 11137 "\
The unicode character number used for the left side subseparator.")

(custom-autoload 'airline-utf-glyph-subseparator-left "airline-themes" t)

(defvar airline-utf-glyph-subseparator-right 11139 "\
The unicode character number used for the right side subseparator.")

(custom-autoload 'airline-utf-glyph-subseparator-right "airline-themes" t)

(defvar airline-utf-glyph-branch 11104 "\
The unicode character number used for the branch symbol.")

(custom-autoload 'airline-utf-glyph-branch "airline-themes" t)

(defvar airline-utf-glyph-readonly 11108 "\
The unicode character number used for the readonly symbol.")

(custom-autoload 'airline-utf-glyph-readonly "airline-themes" t)

(defvar airline-utf-glyph-linenumber 11105 "\
The unicode character number used for the linenumber symbol.")

(custom-autoload 'airline-utf-glyph-linenumber "airline-themes" t)

(autoload 'airline-themes-set-modeline "airline-themes" "\
Set the airline mode-line-format

\(fn)" t nil)

(autoload 'airline-themes-set-deftheme "airline-themes" "\
Set appropriate face attributes

\(fn THEME-NAME)" nil nil)

(autoload 'shorten-directory "airline-themes" "\
Show up to `max-length' characters of a directory name `dir'.

\(fn DIR MAX-LENGTH)" nil nil)

;;;***

;;;### (autoloads nil nil ("airline-badwolf-theme.el" "airline-base16-gui-dark-theme.el"
;;;;;;  "airline-base16-gui-light-theme.el" "airline-base16-shell-dark-theme.el"
;;;;;;  "airline-behelit-theme.el" "airline-dark-theme.el" "airline-durant-theme.el"
;;;;;;  "airline-hybridline-theme.el" "airline-kalisi-theme.el" "airline-kolor-theme.el"
;;;;;;  "airline-light-theme.el" "airline-luna-theme.el" "airline-molokai-theme.el"
;;;;;;  "airline-papercolor-theme.el" "airline-powerlineish-theme.el"
;;;;;;  "airline-raven-theme.el" "airline-serene-theme.el" "airline-silver-theme.el"
;;;;;;  "airline-simple-theme.el" "airline-sol-theme.el" "airline-solarized-alternate-gui-theme.el"
;;;;;;  "airline-solarized-gui-theme.el" "airline-themes-pkg.el"
;;;;;;  "airline-ubaryd-theme.el" "airline-understated-theme.el"
;;;;;;  "airline-wombat-theme.el") (21943 55055 99084 636000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; airline-themes-autoloads.el ends here
