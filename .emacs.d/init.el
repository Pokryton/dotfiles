(require 'package)
(setq package-archives '(("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("nongnu" . "https://mirrors.ustc.edu.cn/elpa/nongnu/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(blink-cursor-mode -1)
(show-paren-mode 1)
(column-number-mode 1)

(global-hl-line-mode 1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(set-face-attribute 'default nil :font "Sarasa Mono SC-14")
(setq inhibit-startup-screen t)

(setq make-backup-files nil
      auto-save-default nil)

(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4
              c-default-style '((java-mode . "java")
                                (other . "bsd")))
;; (setq-default python-indent-offset 4)

(icomplete-mode 1)
(ido-mode 1)
(ido-everywhere 1)

(require 'org-tempo)
 
(defalias 'list-buffers 'ibuffer)
(defalias 'yes-or-no-p 'y-or-n-p)

(use-package try
  :ensure t)

(use-package zenburn-theme
  :ensure t
  :config (load-theme 'zenburn 1))

(use-package paredit
  :ensure t
  :hook (((emacs-lisp-mode
           lisp-mode
           scheme-mode
           clojure-mode)
          . enable-paredit-mode)))

(use-package magit
  :ensure t)

(use-package markdown-mode
  :ensure t
  :requires (edit-indirect))

(use-package haskell-mode
  :ensure t)

(use-package go-mode
  :ensure t
  :hook (before-save . gofmt-before-save))

(use-package rust-mode
  :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(go-mode rust-mode gruber-darker-theme magit paredit edit-indirect haskell-mode markdown-mode use-package try)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
