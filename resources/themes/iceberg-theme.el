;;; Iceberg --- port of the cocopon/iceberg.vim theme

;; Copyright (c) 2017 Gerry Agbobada

;; Author: Gerry Agbobada <gagbobada+git@gmail.com>
;; Created: 26 December 2017
;; Keywords: theme
;; Package-Requires: ((emacs "25.3"))

;;; MIT License
;;
;; Permission is hereby granted, free of charge, to any person obtaining
;; a copy of this software and associated documentation files (the
;; "Software"), to deal in the Software without restriction, including
;; without limitation the rights to use, copy, modify, merge, publish,
;; distribute, sublicense, and/or sell copies of the Software, and to
;; permit persons to whom the Software is furnished to do so, subject to
;; the following conditions:
;;
;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
;; LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
;; OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
;; WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

;;; Commentary:

;; A port of the iceberg color scheme to Emacs.
;;
;; This port starts with only using the 16 ANSI colors, maybe the palette
;; will be improved later.

;;; Credits:

;; Hiroki Kokubun for his incredible theme : https://github.com/cocopon/iceberg.vim

;;; Code:

(deftheme iceberg
  "Port of the cocopon/iceberg.vim theme for Emacs 25 by gagbo.")

(custom-theme-set-faces
 'iceberg
 ;; Basic UI
 '(default             ((t (:inherit nil
                                     :stipple nil
                                     :background "#161821"
                                     :foreground "#d2d4de"
                                     :inverse-video nil
                                     :box nil
                                     :strike-through nil
                                     :overline nil
                                     :underline nil
                                     :slant normal
                                     :weight normal
                                     :height 113
                                     :width normal
                                     :foundry "PfEd"
                                     :family "Hack"))))
 '(cursor              ((t (:background "#c6c8d1"))))
 '(fixed-pitch         ((t (:family "Monospace"))))
 '(variable-pitch      ((t (:family "Sans Serif"))))
 '(escape-glyph        ((t (:foreground "#95c4ce"))))
 '(minibuffer-prompt   ((t (:foreground "#89b8c2" :weight bold))))
 '(highlight           ((t (:background "#6b7089"))))
 '(region              ((t (:background "#6b7089"))))
 '(shadow              ((t (:foreground "#6b7089"))))
 '(secondary-selection ((t (:background "#84a0c6"))))
 '(trailing-whitespace ((t (:background "#e98989"))))
 '(button              ((t (:underline t))))
 '(link                ((t (:foreground "#95c4ce"))))
 '(link-visited        ((t (:foreground "#89b8c2"))))
 '(linum               ((t (:background "#1e2132" :foreground "#444b71"))))
 '(fringe              ((t (:background "#161821" :foreground "#d2d4de"))))
 '(header-line         ((t (:foreground "#FFFFFF"))))
 '(tooltip             ((t (:inherit variable-pitch
                                     :background "#e9b189"
                                     :foreground "#161821"))))
 '(hl-line             ((t (:background "#89b8c2" :foreground "#161821"))))

 ;; Font-lock
 '(font-lock-builtin-face              ((t (:foreground "#e9b189"))))
 '(font-lock-comment-delimiter-face    ((t (:foreground "#6b7089"))))
 '(font-lock-comment-face              ((t (:foreground "#6b7089"))))
 '(font-lock-constant-face             ((t (:foreground "#84a0c6"))))
 '(font-lock-doc-face                  ((t (:inherit font-lock-comment-face))))
 '(font-lock-function-name-face        ((t (:foreground "#a093c7"))))
 '(font-lock-keyword-face              ((t (:foreground "#89b8c2"))))
 '(font-lock-negation-char-face        ((t nil)))
 '(font-lock-preprocessor-face         ((t (:foreground "#b4be82"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit bold))))
 '(font-lock-regexp-grouping-construct ((t (:inherit bold))))
 '(font-lock-string-face               ((t (:foreground "#ada0d3"))))
 '(font-lock-type-face                 ((t (:foreground "#89b8c2"))))
 '(font-lock-variable-name-face        ((t (:foreground "#c6c8d1"))))
 '(font-lock-warning-face              ((t (:foreground "#e2a478" :weight bold))))

 ;; Mode line
 '(mode-line           ((t (:background "#818596" :foreground "#17171b" :height 0.95))))
 '(mode-line-buffer-id ((t (:slant italic))))
 '(mode-line-emphasis  ((t (:foreground "#d2d4de" :slant italic))))
 '(mode-line-highlight ((t (:foreground "#e27878"))))
 '(mode-line-inactive  ((t (:background "#0f1117" :foreground "#3e445e"))))

 ;; Search and replace
 '(isearch        ((t (:background "#6b7089" :foreground "#e2a478"))))
 '(isearch-fail   ((t (:background "#161821" :foreground "#e27878"))))
 '(lazy-highlight ((t (:inherit match))))
 '(match          ((t (:background "#161821" :foreground "#e2a478"))))
 '(next-error     ((t (:inherit region))))
 '(query-replace  ((t (:inherit isearch))))


 ;; Powerline
 '(powerline-active0 ((t (:background "#818596" :foreground "#17171b"))))
 '(powerline-active1 ((t (:background "#5a5f72" :foreground "#17171b"))))
 '(powerline-active2 ((t (:background "#34394e" :foreground "#696d80"))))
 '(powerline-inactive0 ((t (:background "#0f1117" :foreground "#3e445e"))))
 '(powerline-inactive1 ((t (:background "#0f1117" :foreground "#3e445e"))))
 '(powerline-inactive2 ((t (:background "#0f1117" :foreground "#3e445e"))))

 ;; Powerline-evil
 '(powerline-evil-insert-face ((t (:background "#84a0c6" :foreground "#161821"))))
 '(powerline-evil-normal-face ((t (:background "#b4be82" :foreground "#161821"))))
 '(powerline-evil-visual-face ((t (:background "#e2a478" :foreground "#161821"))))
 '(powerline-evil-motion-face ((t (:background "#a093c7" :foreground "#161821"))))

 ;; Helm
 '(helm-buffer-directory    ((t (:foreground "#b4be82"))))
 '(helm-buffer-file         ((t (:foreground "#d2d4de"))))
 '(helm-buffer-not-saved    ((t (:foreground "#e27878"))))
 '(helm-buffer-process      ((t (:foreground "#84a0c6" "#a093c7"))))
 '(helm-buffer-saved-out    ((t (:foreground "#e2a478"))))
 '(helm-buffer-size         ((t (:inherit helm-buffer-process))))
 '(helm-candidate-number    ((t (:background unspecified))))
 '(helm-ff-directory        ((t (:foreground "#b4be82"))))
 '(helm-ff-file             ((t (:foreground "#d2d4de"))))
 '(helm-ff-symlink          ((t (:foreground "#95c4ce"))))
 '(helm-ff-invalid-symlink  ((t (:inherit helm-ff-symlink :underline (:style wave)))))
 '(helm-ff-prefix           ((t (:foreground "#e2a478"))))
 '(helm-match               ((t (:inherit isearch))))
 '(helm-source-header       ((t (:foreground "#b4be82" :weight bold))))
 '(helm-selection           ((t (:inherit hl-line))))
 '(helm-selection-line      ((t (:inherit helm-selection
                                          :foreground "#0d1121"
                                          :background "#c6c8d1"))))

 ;; Company
 '(company-preview                       ((t (:foreground "#c6c8d1"
                                                          :background "#161821"))))
 '(company-preview-common                ((t (:foreground "#c6c8d1"
                                                          :background "#161821"))))
 '(company-preview-search                ((t (:foreground "#c6c8d1"
                                                          :background "#161821"))))
 '(company-scrollbar-bg                  ((t (:background "#6b7089"))))
 '(company-scrollbar-fg                  ((t (:background "#d2d4de"))))
 '(company-tooltip                       ((t (:foreground "#c6c8d1"
                                                          :background "#161821"))))
 '(company-tooltip-annotation            ((t (:foreground "#c6c8d1"
                                                          :background "#6b7089"))))
 '(company-tooltip-annotation-selection  ((t (:foreground "#c6c8d1"
                                                          :background "#6b7089"))))
 '(company-tooltip-common                ((t (:foreground "#c6c8d1"))))
 '(company-tooltip-common-selection      ((t (:inherit company-tooltip-common))))
 '(company-tooltip-mouse                 ((t (:foreground "#c6c8d1"))))
 '(company-tooltip-search                ((t (:foreground "#d2d4de"
                                                          :background "#161821"))))
 '(company-tooltip-search-selection      ((t (:inherit company-tooltip-search))))
 '(company-tooltip-selection             ((t (:foreground "#c6c8d1"
                                                          :background "#161821")))))

(provide-theme 'iceberg)

;; End:

;;; iceberg-theme.el ends here
