;;; init.el --- Top-level configs for emacs

;;; Commentary:
;; Sub-configs can be found in init
;; TODO: Break out more sub-init files
;; TODO: Use hooks etc to ensure proper loading of dependent subfiles
;; TODO: Better buffer switching (helm or ido)
;; TODO: Tmux navigator?
;; TODO: tabs/spaces stuff, nerdtree, buffdiff, evil surround
;; TODO: Orgmode

;;; Code:

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; Turn off splash screen
(setq inhibit-startup-message t)
(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

;;; Package manager setup
;; Package setup
;; Use package.el to load use-package
(require 'package)
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure t)

;;; Jump lines, words, etc
(use-package avy)

;;; Tpope vim commentary like comments
(use-package evil-commentary)
(evil-commentary-mode)

(require 'init-evil)
(require 'init-appearance)

;;; Flycheck
;; Syntax checking
(use-package flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;;; Good scrolling behavior
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq redisplay-dont-pause t
  scroll-margin 1
  scroll-step 1
  scroll-conservatively 10000
  scroll-preserve-screen-position 1)

(provide 'init)
;;; init.el ends here

