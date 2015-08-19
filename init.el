(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(fset 'yes-or-no-p 'y-or-n-p)

(require 'dired-details+)
(require 'dired-rainbow)
(require 'helm-config)
(require 'powerline)
(powerline-center-theme)

(require 'flymake-rust)
(require 'haml-mode)
(require 'sass-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for web-mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-indent-style 2))
(add-hook 'web-mode-hook 'my-web-mode-hook)

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
 '(coffee-mode-hook (quote (flymake-coffee-load)) t)
 '(company-backends
   (quote
    (company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-cmake company-capf
		  (company-dabbrev-code company-gtags company-etags company-keywords)
		  company-oddmuse company-files company-dabbrev company-c-headers
		  (company-jedi company-files)
		  company-go company-ghc company-ghci company-web-html company-web-jade company-web-slim)))
 '(css-indent-offset 2)
 '(css-mode-hook (quote (flymake-css-load)) t)
 '(custom-enabled-themes (quote (smyx)))
 '(custom-safe-themes
   (quote
    ("8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" default)))
 '(delete-by-moving-to-trash t)
 '(dired-dwim-target t)
 '(dired-hide-details-hide-symlink-targets nil)
 '(dired-listing-switches "--group-directories-first -lh")
 '(dired-mode-hook (quote (ggtags-mode)))
 '(diredp-toggle-find-file-reuse-dir 1)
 '(elpy-interactive-python-command "ipython")
 '(elpy-mode-hook (quote (subword-mode hl-line-mode)))
 '(elpy-rpc-backend "jedi")
 '(go-mode-hook (quote (flymake-go-load)) t)
 '(haskell-mode-hook
   (quote
    (flymake-haskell-multi-load flymake-hlint-load turn-on-haskell-indentation glasses-mode)) t)
 '(inhibit-startup-screen t)
 '(js-mode-hook
   (quote
    (flymake-jshint-load flymake-jslint-load glasses-mode)) t)
 '(list-directory-brief-switches "--group-directories-first -lh")
 '(list-directory-verbose-switches "--group-directories-first -alh")
 '(lua-mode-hook (quote (flymake-lua-load)) t)
 '(major-mode (quote text-mode))
 '(prog-mode-hook (quote (company-mode nlinum-mode yas-minor-mode)) t)
 '(python-mode-hook (quote (elpy-mode)) t)
 '(ruby-mode-hook (quote (flymake-ruby-load glasses-mode)) t)
 '(rust-mode-hook (quote (flymake-rust-load)) t)
 '(sass-mode-hook (quote (flymake-sass-load)))
 '(scss-mode-hook (quote (flymake-sass-load)) t)
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
