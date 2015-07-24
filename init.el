(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(require 'dired-details+)

(require 'powerline)
(powerline-default-theme)

(require 'slime-autoloads)
(setq slime-lisp-implementations
      '((sbcl ("sbcl"))))
(add-to-list 'slime-contribs 'slime-fancy)
(slime-setup '(slime-company))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#282828" "#FAB1AB" "#D1FA71" "#FFA600" "#7b68ee" "#dc8cc3" "#96D9F1" "#F7F7F7"])
 '(c-default-style
   (quote
    ((c-mode . "linux")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(company-backends
   (quote
    (company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-cmake company-capf
		  (company-dabbrev-code company-gtags company-etags company-keywords)
		  company-oddmuse company-files company-dabbrev company-c-headers
		  (company-jedi company-files)
		  company-go company-ghc company-ghci)))
 '(custom-enabled-themes (quote (smyx)))
 '(custom-safe-themes
   (quote
    ("05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" "8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" default)))
 '(delete-by-moving-to-trash t)
 '(dired-dwim-target t)
 '(dired-hide-details-hide-symlink-targets nil)
 '(dired-listing-switches "-lh")
 '(dired-mode-hook (quote (ggtags-mode)))
 '(elpy-interactive-python-command "ipython")
 '(elpy-mode-hook (quote (subword-mode hl-line-mode)))
 '(elpy-rpc-backend "jedi")
 '(fci-rule-color "#151515")
 '(go-mode-hook (quote (flymake-go-load)) t)
 '(haskell-mode-hook
   (quote
    (flymake-haskell-multi-load flymake-hlint-load turn-on-haskell-indentation)) t)
 '(inhibit-startup-screen t)
 '(list-directory-brief-switches "--group-directories-first -lh")
 '(list-directory-verbose-switches "-alh")
 '(major-mode (quote text-mode))
 '(prog-mode-hook (quote (company-mode nlinum-mode yas-minor-mode)) t)
 '(python-mode-hook (quote (elpy-mode)) t)
 '(ruby-mode-hook (quote (flymake-ruby-load)) t)
 '(scroll-bar-mode nil)
 '(sh-basic-offset 2)
 '(sh-set-shell-hook (quote (flymake-shell-load)))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(trash-directory "~/.Trash/emacs"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#282828" :foreground "#F7F7F7" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 105 :width normal :foundry "unknown" :family "DejaVu Sans Mono for Powerline")))))
