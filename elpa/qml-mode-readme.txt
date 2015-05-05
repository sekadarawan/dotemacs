qml-mode is major-mode for editing Qt Declarative (QML) code.


Installation:

If you have `melpa` and `emacs24` installed, simply type:

	M-x package-install qml-mode

Add following lines to your init file:

	(autoload 'qml-mode "qml-mode" "Editing Qt Declarative." t)
	(add-to-list 'auto-mode-alist '("\\.qml$" . qml-mode))
