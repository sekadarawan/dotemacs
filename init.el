(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)

(setq-default major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

(require 'helm-config)
(require 'yasnippet)
(yas/initialize)

;;;; AsciiDoc
(require 'adoc-mode)
(add-to-list 'auto-mode-alist (cons "\\.txt\\'" 'adoc-mode))
(add-hook 'adoc-mode-hook
	  (lambda ()
	    (buffer-face-mode t)))

;(sml/setup)
;(sml/apply-theme 'powerline)
(require 'powerline)
(powerline-default-theme)

;;(require 'pdf-tools)
;;(pdf-tools-install)

;;;; Slime
;(require 'slime-autoloads)
;(setq slime-lisp-implementations
;      '((sbcl ("sbcl"))
;	(ecl ("ecl") :coding-system utf-8-unix)))
;(add-to-list 'slime-contribs 'slime-fancy)
;(slime-setup '(slime-company))

;;;; Dired
(add-hook 'dired-mode-hook 'ggtags-mode)

;;; Programming mode
(add-hook 'prog-mode-hook 'nlinum-mode)

;;;; Company
(require 'company)
;;(autoload 'company-mode "company" nil t)
(add-to-list 'company-backends 'company-c-headers)
;; Basic usage.
;(add-to-list 'company-backends 'company-jedi)
;; Advanced usage.
(add-to-list 'company-backends '(company-jedi company-files))
(add-to-list 'company-backends 'company-go)

;;;; C mode
(setq c-default-style "linux"
      c-basic-offset 4)
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
	      (ggtags-mode 1))))

;;;; Sh mode
(setq sh-basic-offset 2
      sh-indentation 2)

(require 'flymake-shell)
(add-hook 'sh-set-shell-hook 'flymake-shell-load)

;;;; sass
(require 'haml-mode)
(require 'sass-mode)
(require 'flymake-sass)
(add-hook 'sass-mode-hook 'flymake-sass-load)
(add-hook 'scss-mode-hook 'flymake-sass-load)

;;;; Go mode
(require 'go-mode)

;;;; Python mode
(require 'elpy)
(add-hook 'python-mode-hook 'elpy-enable)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (smyx)))
 '(custom-safe-themes
   (quote
    ("8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" default)))
 '(elpy-interactive-python-command "ipython2")
 '(elpy-mode-hook (quote (subword-mode hl-line-mode)))
 '(elpy-rpc-backend "jedi")
 '(elpy-rpc-python-command "python2")
 '(elpy-test-discover-runner-command (quote ("python2" "-m" "unittest")))
 '(global-company-mode t)
 '(python-check-command "flake8-python2"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 105 :width normal :foundry "unknown" :family "DejaVu Sans Mono for Powerline")))))
