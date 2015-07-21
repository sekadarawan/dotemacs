(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

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
    ("8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" default)))
 '(dired-mode-hook (quote (dired-extra-startup ggtags-mode)))
 '(elpy-mode-hook (quote (subword-mode hl-line-mode)))
 '(elpy-rpc-backend "jedi")
 '(haskell-mode-hook
   (quote
    (flymake-haskell-multi-load flymake-hlint-load turn-on-haskell-indentation)) t)
 '(inhibit-startup-screen t)
 '(major-mode (quote text-mode))
 '(prog-mode-hook (quote (company-mode nlinum-mode yas-minor-mode)) t)
 '(python-mode-hook (quote (elpy-enable)) t)
 '(scroll-bar-mode nil)
 '(sh-basic-offset 2)
 '(sh-set-shell-hook (quote (flymake-shell-load)))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#282828" :foreground "#F7F7F7" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 105 :width normal :foundry "unknown" :family "DejaVu Sans Mono for Powerline")))))
