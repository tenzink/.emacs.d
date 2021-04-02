(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(let
    ((customization-file (expand-file-name "custom.el" user-emacs-directory)))
  (when (file-exists-p customization-file)
    (setq custom-file customization-file)
    (load custom-file 'noerror)))

(add-hook 'window-setup-hook 'toggle-frame-maximized t)
