(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(let
    ((customization-file (expand-file-name "custom.el" user-emacs-directory)))
  (when (file-exists-p customization-file)
    (setq custom-file customization-file)
    (load custom-file 'noerror)))

;; no-littering is useful to de-clutter my /.emacs.d directory
(setq no-littering-etc-directory
      (expand-file-name "config/" user-emacs-directory))
(setq no-littering-var-directory
      (expand-file-name "data/" user-emacs-directory))

(unless (and (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package t))
(setq-default
 use-package-always-defer t
 use-package-always-ensure t
 use-package-compute-statistics t
 use-package-verbose t)

(use-package no-littering)
(require 'no-littering)

(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(column-number-mode t)
(electric-pair-mode t)
