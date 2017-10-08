;;; Initialize Packages
(require 'package)
(setq package-enable-at-startup nil)

;;; Add MELPA
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;; Stop the annoying start up message and remove the tool bar.
(setq inhibit-startup-message t)
(tool-bar-mode -1)

;;; Custom File Variables
(setq org-init-file "./org-init.org")
(setq custom-file "./custom.el")

;;; Check if Custom Files Exist
;;; If true file should be executed.

;; M-x Customize Variables
(if (file-exists-p custom-file)
    (load custom-file))

;;; Other Stuff

;; Install Use-Package for Org-Init
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Org Init
(org-babel-load-file
 (expand-file-name org-init-file
		   user-emacs-directory))

;;; Keyboard Shortcuts
;; Global
(global-set-key (kbd "C-M-x") 'compile)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)
