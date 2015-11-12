;;; init-evil --- emacs vim environment

;;; Commentary:
;; Initialize evil, and add useful vim-like keybindings and prefs

;;; Code:

;; No idea why I need to explicitly load this for evil to work
(use-package goto-chg)
(use-package evil)
(evil-mode 1)

(use-package evil-leader)
(setq evil-leader/in-all-states 1)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

; TODO broken figure this out
;(evil-ex-define-cmd "sp[lit]" 'split-window-below-and-focus)
;(evil-ex-define-cmd "vs[plit]" 'split-window-right-and-focus)

(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

(evil-leader/set-key
 "jw" 'avy-goto-word-1
 "jc" 'avy-goto-char
 "jl" 'avy-goto-line
 "kb" 'kill-buffer
 "w"  'whitespace-cleanup)

(provide 'init-evil)
;;; init-evil.el ends here
