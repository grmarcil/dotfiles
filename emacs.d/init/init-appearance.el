;;; init-appearance --- UI configs

;;; Commentary:
;; Configs related to appearance

;;; Code:

(set-frame-font "Inconsolata-14")
(global-linum-mode)

(use-package linum-relative)
(setq linum-relative-current-symbol "")
(set-face-attribute 'linum-relative-current-face nil :foreground "#839496")
(set-face-attribute 'linum-relative-current-face nil :background "#eee8d5")
(linum-relative-mode)

;; Highlight cursor line
(global-hl-line-mode)

;; Add rule at fill line (usu 80)
(use-package fill-column-indicator)
(define-globalized-minor-mode my-global-fci-mode fci-mode turn-on-fci-mode)
(my-global-fci-mode 1)

;; Highlight trailing whitespace
(require 'whitespace)
(setq-default whitespace-style '(face trailing))
(set-face-background 'whitespace-trailing "red")
(global-whitespace-mode 1)

;; A dirty hack because life is too short to debug color schemes
(setq color-themes '(list))
;; Sweet sweet solarized
(use-package color-theme-solarized)
(setq frame-background-mode 'light)
(load-theme 'solarized t)

(provide 'init-appearance)
;;; init-appearance.el ends here
