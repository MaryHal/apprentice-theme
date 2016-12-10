;;; apprentice-theme.el --- Emacs 24 dark Apprentice theme

;; (C) 2016 , all rights reserved
;;
;; Code licensed under the MIT license
;; http://zenorocha.mit-license.org

;; author: @sjashc
;;
;; https://github.com/sjas/apprentice-theme
;;
;; Version: 0.1
;; Package-Requires: ((emacs "24"))

;; This file is not part of Emacs.


;;; Commentary:

;; A dark color theme for emacs after the existing vim one.
;; The original theme used as base was https://github.com/dracula/emacs/blob/master/dracula-theme.el , code-wise.
;; Colors came from https://github.com/romainl/Apprentice/blob/master/colors/apprentice.vim .
;; Thanks!

;;; Code:
(deftheme apprentice "Apprentice")

(let ((class '((class color) (min-colors 89)))
      ;; fg1 and fg2 switched
      (fg1 "#bcbcbc")
      (fg2 "#ffffff")
      (fg3 "#ccccc7")
      (fg4 "#6c6c6c")

      ;; bg1 and bg2 switched
      (bg1 "#262626")
      (bg2 "#1c1c1c")
      (bg3 "#303030")
      (bg4 "#444444")
      (bg5 "#585858")

      ;; (key2 "#0a307a")
      (key2 "#0a30fa")
      (key3 "#953030")

      (builtin "#ffb86c")
      (keyword "#8fafd7")
      (const   "#ff8700")
      (comment "#585858")
      (func    "#ffffaf")
      (str     "#87af87")
      (type    "#8787af")
      (var     "#5fafaf")
      (warning "#af5f5f")

      ;; (cursorline "#4f7f8f")
      (cursorline "#000000")

      (rainbow-1 "#ffffff")
      (rainbow-2 "#8fadd7")
      (rainbow-3 "#bd93f9")
      (rainbow-4 "#ff79c6")
      (rainbow-5 "#8787af")
      (rainbow-6 "#87af87")
      (rainbow-7 "#ffffaf")
      (rainbow-8 "#8fafd7")
      (rainbow-9 "#af5f5f")

      (eph-verbatim "#f9fa5c")
      (eph-code "#ff79c6"))


  (custom-theme-set-faces
   'apprentice
   ;; default
   `(default ((,class (:background ,bg1 :foreground ,fg1))))
   `(default-italic ((,class (:italic t))))
   `(ffap ((,class (:foreground ,fg4))))
   `(fringe ((,class (:background ,bg1 :foreground ,fg4))))
   `(highlight ((,class (:foreground ,fg3 :background ,bg3))))
   `(hl-line ((,class (:background  ,cursorline))))
   `(info-quoted-name ((,class (:foreground ,builtin))))
   `(info-string ((,class (:foreground ,str))))
   `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))
   `(link ((,class (:foreground ,const :underline t))))
   `(linum ((,class (:slant italic :foreground ,bg4 :background ,bg1))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
   `(region ((,class (:background ,str :foreground ,bg1))))
   `(show-paren-match-face ((,class (:background ,warning))))
   `(trailing-whitespace ((,class :foreground nil :background ,warning)))
   `(vertical-border ((,class (:foreground ,bg2))))
   `(warning ((,class (:foreground ,warning))))
   `(whitespace-trailing ((,class :inherit trailing-whitespace)))
   ;; syntax
   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-constant-face ((,class (:foreground ,const))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,func :bold t))))
   `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
   `(font-lock-negation-char-face ((,class (:foreground ,const))))
   `(font-lock-reference-face ((,class (:foreground ,const))))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-type-face ((,class (:foreground ,type ))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-warning-face ((,class (:foreground ,warning :background ,bg2))))
   ;; auto-complete
   `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
   ;; company
   `(company-echo-common ((,class (:foreground ,bg1 :background ,fg1))))
   `(company-preview ((,class (:background ,bg1 :foreground ,key2))))
   `(company-preview-common ((,class (:foreground ,bg2 :foreground ,fg3))))
   `(company-preview-search ((,class (:foreground ,type :background ,bg1))))
   `(company-scrollbar-bg ((,class (:background ,bg3))))
   `(company-scrollbar-fg ((,class (:foreground ,keyword))))
   `(company-template-field ((,class (:inherit region))))
   `(company-tooltip ((,class (:foreground ,fg2 :background ,bg1 :bold t))))
   `(company-tooltip-annotation ((,class (:foreground ,const))))
   `(company-tooltip-common ((,class ( :foreground ,fg3))))
   `(company-tooltip-common-selection ((,class (:foreground ,str))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,bg3 :foreground ,fg3))))
   ;; diff-hl
   `(diff-hl-change ((,class (:foreground ,rainbow-5 :background ,rainbow-5))))
   `(diff-hl-delete ((,class (:foreground ,rainbow-9 :background ,rainbow-9))))
   `(diff-hl-insert ((,class (:foreground ,rainbow-6 :background ,rainbow-6))))
   ;; enh-ruby
   `(enh-ruby-heredoc-delimiter-face ((,class (:foreground ,str))))
   `(enh-ruby-op-face ((,class (:foreground ,keyword))))
   `(enh-ruby-regexp-delimiter-face ((,class (:foreground ,str))))
   `(enh-ruby-string-delimiter-face ((,class (:foreground ,str))))
   ;; font-latex
   `(font-latex-bold-face ((,class (:foreground ,type))))
   `(font-latex-italic-face ((,class (:foreground ,key3 :italic t))))
   `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
   `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
   `(font-latex-string-face ((,class (:foreground ,str))))
   ;; gnus-group
   `(gnus-group-mail-1 ((,class (:foreground ,keyword :bold t))))
   `(gnus-group-mail-1-empty ((,class (:inherit gnus-group-mail-1 :bold nil))))
   `(gnus-group-mail-2 ((,class (:foreground ,const :bold t))))
   `(gnus-group-mail-2-empty ((,class (:inherit gnus-group-mail-2 :bold nil))))
   `(gnus-group-mail-3 ((,class (:foreground ,comment :bold t))))
   `(gnus-group-mail-3-empty ((,class (:inherit gnus-group-mail-3 :bold nil))))
   `(gnus-group-mail-low ((,class (:foreground ,bg5 :bold t))))
   `(gnus-group-mail-low-empty ((,class (:inherit gnus-group-mail-low :bold nil))))
   `(gnus-group-news-1 ((,class (:foreground ,keyword :bold t))))
   `(gnus-group-news-1-empty ((,class (:inherit gnus-group-news-1 :bold nil))))
   `(gnus-group-news-2 ((,class (:foreground ,const :bold t))))
   `(gnus-group-news-2-empty ((,class (:inherit gnus-group-news-2 :bold nil))))
   `(gnus-group-news-3 ((,class (:foreground ,comment :bold t))))
   `(gnus-group-news-3-empty ((,class (:inherit gnus-group-news-3 :bold nil))))
   `(gnus-group-news-4 ((,class (:inherit gnus-group-news-low))))
   `(gnus-group-news-4-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-5 ((,class (:inherit gnus-group-news-low))))
   `(gnus-group-news-5-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-6 ((,class (:inherit gnus-group-news-low))))
   `(gnus-group-news-6-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-low ((,class (:foreground ,bg5 :bold t))))
   `(gnus-group-news-low-empty ((,class (:inherit gnus-group-news-low :bold nil))))
   `(gnus-header-content ((,class (:foreground ,keyword))))
   `(gnus-header-from ((,class (:foreground ,var))))
   `(gnus-header-name ((,class (:foreground ,type))))
   `(gnus-header-subject ((,class (:foreground ,func :bold t))))
   `(gnus-summary-markup-face ((,class (:foreground ,const))))
   `(gnus-summary-normal-ancient ((,class (:inherit gnus-summary-normal-read))))
   `(gnus-summary-normal-read ((,class (:foreground ,bg5 :weight normal))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,keyword :weight light))))
   `(gnus-summary-normal-unread ((,class (:foreground ,comment :weight normal))))
   `(gnus-summary-selected ((,class (:inverse-video t))))
   ;; helm
   `(helm-bookmark-w3m ((,class (:foreground ,type))))
   `(helm-buffer-not-saved ((,class (:foreground ,type :background ,bg1))))
   `(helm-buffer-process ((,class (:foreground ,builtin :background ,bg1))))
   `(helm-buffer-saved-out ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-buffer-size ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-candidate-number ((,class (:foreground ,bg1 :background ,fg1))))
   `(helm-ff-directory ((,class (:foreground ,func :background ,bg1 :weight bold))))
   `(helm-ff-executable ((,class (:foreground ,key2 :background ,bg1 :weight normal))))
   `(helm-ff-file ((,class (:foreground ,fg1 :background ,bg1 :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,key3 :background ,bg1 :weight bold))))
   `(helm-ff-prefix ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
   `(helm-ff-symlink ((,class (:foreground ,keyword :background ,bg1 :weight bold))))
   `(helm-grep-cmd-line ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-grep-file ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-grep-finish ((,class (:foreground ,fg2 :background ,bg1))))
   `(helm-grep-lineno ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,func :background ,bg1))))
   `(helm-header ((,class (:foreground ,fg2 :background ,bg1 :underline nil :box nil))))
   `(helm-moccur-buffer ((,class (:foreground ,func :background ,bg1))))
   `(helm-selection ((,class (:background ,bg2 :underline nil))))
   `(helm-selection-line ((,class (:background ,bg2))))
   `(helm-separator ((,class (:foreground ,type :background ,bg1))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
   `(helm-source-header ((,class (:foreground ,keyword :background ,bg1 :underline nil :weight bold))))
   `(helm-time-zone-current ((,class (:foreground ,builtin :background ,bg1))))
   `(helm-time-zone-home ((,class (:foreground ,type :background ,bg1))))
   `(helm-visible-mark ((,class (:foreground ,bg1 :background ,bg3))))
   ;; icomplete
   `(icompletep-determined ((,class :foreground ,builtin)))
   ;; ido
   `(ido-first-match ((,class (:foreground ,keyword :bold t))))
   `(ido-only-match ((,class (:foreground ,warning))))
   `(ido-subdir ((,class (:foreground ,builtin))))
   ;; isearch
   `(isearch ((,class (:bold t :foreground ,warning :background ,bg3))))
   `(isearch-fail ((,class (:foreground ,bg1 :background ,warning))))
   ;; jde-java
   `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
   `(jde-java-font-lock-modifier-face ((t (:foreground ,key3))))
   `(jde-java-font-lock-number-face ((t (:foreground ,var))))
   `(jde-java-font-lock-package-face ((t (:foreground ,var))))
   `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
   ;; js2-mode
   `(js2-external-variable ((,class (:foreground ,type  ))))
   `(js2-function-param ((,class (:foreground ,const))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,key2))))
   `(js2-jsdoc-value ((,class (:foreground ,str))))
   `(js2-private-function-call ((,class (:foreground ,const))))
   `(js2-private-member ((,class (:foreground ,fg3))))
   ;; js3-mode
   `(js3-error-face ((,class (:underline ,warning))))
   `(js3-external-variable-face ((,class (:foreground ,var))))
   `(js3-function-param-face ((,class (:foreground ,key3))))
   `(js3-instance-member-face ((,class (:foreground ,const))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
   `(js3-warning-face ((,class (:underline ,keyword))))
   ;; magit
   `(magit-branch ((,class (:foreground ,const :weight bold))))
   `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
   `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
   `(magit-diffstat-added   ((,class (:foreground ,type))))
   `(magit-diffstat-removed ((,class (:foreground ,var))))
   `(magit-hash ((,class (:foreground ,fg2))))
   `(magit-hunk-heading           ((,class (:background ,bg3))))
   `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
   `(magit-item-highlight ((,class :background ,bg3)))
   `(magit-log-author ((,class (:foreground ,fg3))))
   `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
   `(magit-process-ok ((,class (:foreground ,func :weight bold))))
   `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
   `(magit-section-highlight      ((,class (:background ,bg2))))
   ;; mode-line
   `(mode-line ((,class (:foreground nil :background ,bg3 :box ,bg3))))
   `(mode-line-inactive ((,class (:foreground ,fg1 :background ,bg1 :box ,bg1))))
   ;; mu4e
   `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
   `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
   `(mu4e-header-marks-face ((,class (:foreground ,type))))
   `(mu4e-view-url-number-face ((,class (:foreground ,type))))
   ;; org
   `(org-agenda-date ((,class (:foreground ,rainbow-2 :underline nil))))
   `(org-agenda-dimmed-todo-face ((,class (:foreground ,comment))))
   `(org-agenda-done ((,class (:foreground ,rainbow-6))))
   `(org-agenda-structure ((,class (:foreground ,rainbow-3))))
   `(org-block ((,class (:foreground ,rainbow-5))))
   `(org-code ((,class (:foreground ,rainbow-7))))
   `(org-column ((,class (:background ,bg4))))
   `(org-column-title ((,class (:inherit org-column :weight bold :underline t))))
   `(org-date ((,class (:foreground ,rainbow-2 :underline t))))
   `(org-document-info ((,class (:foreground ,rainbow-8))))
   `(org-document-info-keyword ((,class (:foreground ,comment))))
   `(org-document-title ((,class (:weight bold :foreground ,rainbow-5 :height 1.44))))
   `(org-done ((,class (:foreground ,rainbow-6))))
   `(org-ellipsis ((,class (:foreground ,comment))))
   `(org-footnote ((,class (:foreground ,rainbow-8))))
   `(org-formula ((,class (:foreground ,rainbow-4))))
   `(org-headline-done ((,class (:foreground ,comment :bold nil :strike-through t))))
   `(org-hide ((,class (:foreground ,bg1 :background ,bg1))))
   `(org-level-1 ((,class (:inherit bold :foreground ,rainbow-4 :height 1.3))))
   `(org-level-2 ((,class (:inherit bold :foreground ,rainbow-3 :height 1.1))))
   `(org-level-3 ((,class (:bold nil :foreground ,rainbow-6 :height 1.0))))
   `(org-level-4 ((,class (:bold nil :foreground ,rainbow-7))))
   `(org-level-5 ((,class (:bold nil :foreground ,rainbow-2))))
   `(org-level-6 ((,class (:bold nil :foreground ,rainbow-5))))
   `(org-level-7 ((,class (:bold nil :foreground ,rainbow-8))))
   `(org-level-8 ((,class (:bold nil :foreground ,rainbow-1))))
   `(org-link ((,class (:foreground ,rainbow-2 :underline t))))
   `(org-priority ((,class (:foreground ,rainbow-2))))
   `(org-scheduled ((,class (:foreground ,rainbow-6))))
   `(org-scheduled-previously ((,class (:foreground ,rainbow-7))))
   `(org-scheduled-today ((,class (:foreground ,rainbow-6))))
   `(org-sexp-date ((,class (:foreground ,fg4))))
   `(org-special-keyword ((,class (:foreground ,rainbow-7))))
   `(org-table ((,class (:foreground ,rainbow-3))))
   `(org-tag ((,class (:foreground ,rainbow-4 :bold t :background ,bg2))))
   `(org-todo ((,class (:foreground ,rainbow-5 :bold t :background ,bg2))))
   `(org-upcoming-deadline ((,class (:foreground ,rainbow-7))))
   `(org-warning ((,class (:weight bold :foreground ,rainbow-4))))
   ;; outline
   `(outline-1 ((,class (:foreground ,rainbow-6))))
   `(outline-2 ((,class (:foreground ,rainbow-3))))
   `(outline-3 ((,class (:foreground ,rainbow-2))))
   `(outline-4 ((,class (:foreground ,rainbow-5))))
   `(outline-5 ((,class (:foreground ,rainbow-5))))
   `(outline-6 ((,class (:foreground ,rainbow-8))))
   ;; powerline
   `(powerline-evil-base-face ((t (:foreground ,bg2))))
   `(powerline-evil-emacs-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-7))))
   `(powerline-evil-insert-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-2))))
   `(powerline-evil-motion-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-3))))
   `(powerline-evil-normal-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-6))))
   `(powerline-evil-operator-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-4))))
   `(powerline-evil-replace-face ((,class (:inherit powerline-evil-base-face :background "#ff5555"))))
   `(powerline-evil-visual-face ((,class (:inherit powerline-evil-base-face :background ,rainbow-5))))
   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class :foreground ,rainbow-1)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,rainbow-2)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,rainbow-3)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,rainbow-4)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,rainbow-5)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,rainbow-6)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,rainbow-7)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,rainbow-8)))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))
   ;; rpm-spec
   `(rpm-spec-dir-face ((,class (:foreground ,rainbow-6))))
   `(rpm-spec-doc-face ((,class (:foreground ,rainbow-4))))
   `(rpm-spec-ghost-face ((,class (:foreground ,rainbow-3))))
   `(rpm-spec-macro-face ((,class (:foreground ,rainbow-7))))
   `(rpm-spec-obsolete-tag-face ((,class (:inherit font-lock-warning-face))))
   `(rpm-spec-package-face ((,class (:foreground ,rainbow-3))))
   `(rpm-spec-section-face ((,class (:foreground ,rainbow-7))))
   `(rpm-spec-tag-face ((,class (:foreground ,rainbow-2))))
   `(rpm-spec-var-face ((,class (:foreground "#a0522d"))))
   ;; slime
   `(slime-repl-inputed-output-face ((,class (:foreground ,type))))
   ;; spam
   `(spam ((,class (:inherit gnus-summary-normal-read :foreground ,warning :strike-through t :slant oblique))))
   ;; term
   `(term ((,class (:foreground ,fg1 :background ,bg1))))
   `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))
   `(term-color-blue ((,class (:foreground ,func :background ,func))))
   `(term-color-cyan ((,class (:foreground ,str :background ,str))))
   `(term-color-green ((,class (:foreground ,type :background ,bg3))))
   `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))
   `(term-color-red ((,class (:foreground ,keyword :background ,bg3))))
   `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))
   `(term-color-yellow ((,class (:foreground ,var :background ,var))))
   ;; undo-tree
   `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
   `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
   ;; web-mode
   `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,type))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,func))))
   `(web-mode-html-tag-face ((,class (:foreground ,keyword :bold t))))
   `(web-mode-keyword-face ((,class (:foreground ,keyword))))
   `(web-mode-string-face ((,class (:foreground ,str))))
   `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
   ;; which-func
   `(which-func ((,class (:inherit ,font-lock-function-name-face))))
   `(dired-directory ((,class (:foreground ,func :weight normal))))
   `(dired-flagged ((,class (:foreground ,keyword))))
   `(dired-header ((,class (:foreground ,fg3 :background ,func))))
   `(dired-ignored ((,class (:inherit shadow))))
   `(dired-mark ((,class (:foreground ,var :weight bold))))
   `(dired-marked ((,class (:foreground ,builtin :weight bold))))
   `(dired-perm-write ((,class (:foreground ,fg3 :underline t))))
   `(dired-symlink ((,class (:foreground ,str :weight normal :slant italic))))
   `(dired-warning ((,class (:foreground ,warning :underline t))))
   `(diredp-compressed-file-name ((,class (:foreground ,fg3))))
   `(diredp-compressed-file-suffix ((,class (:foreground ,fg4))))
   `(diredp-date-time ((,class (:foreground ,var))))
   `(diredp-deletion-file-name ((,class (:foreground ,keyword :background ,bg5))))
   `(diredp-deletion ((,class (:foreground ,keyword :weight bold))))
   `(diredp-dir-heading ((,class (:foreground ,fg2 :background ,bg4))))
   `(diredp-dir-name ((,class (:inherit dired-directory))))
   `(diredp-dir-priv ((,class (:inherit dired-directory))))
   `(diredp-executable-tag ((,class (:foreground ,builtin))))
   `(diredp-file-name ((,class (:foreground ,fg1))))
   `(diredp-file-suffix ((,class (:foreground ,fg4))))
   `(diredp-flag-mark-line ((,class (:foreground ,fg2 :slant italic :background ,bg5))))
   `(diredp-flag-mark ((,class (:foreground ,fg2 :weight bold :background ,bg5))))
   `(diredp-ignored-file-name ((,class (:foreground ,fg1))))
   `(diredp-mode-line-flagged ((,class (:foreground ,warning))))
   `(diredp-mode-line-marked ((,class (:foreground ,warning))))
   `(diredp-no-priv ((,class (:foreground ,fg1))))
   `(diredp-number ((,class (:foreground ,const))))
   `(diredp-other-priv ((,class (:foreground ,builtin))))
   `(diredp-rare-priv ((,class (:foreground ,builtin))))
   `(diredp-read-priv ((,class (:foreground ,type))))
   `(diredp-write-priv ((,class (:foreground ,keyword))))
   `(diredp-exec-priv ((,class (:foreground ,str))))
   `(diredp-symlink ((,class (:foreground ,warning))))
   `(diredp-link-priv ((,class (:foreground ,warning))))
   `(diredp-autofile-name ((,class (:foreground ,str))))
   `(diredp-tagged-autofile-name ((,class (:foreground ,str))))
   `(icicle-whitespace-highlight               ((,class (:background ,var))))
   `(icicle-special-candidate                  ((,class (:foreground ,fg2))))
   `(icicle-extra-candidate                    ((,class (:foreground ,fg2))))
   `(icicle-search-main-regexp-others          ((,class (:foreground ,var))))
   `(icicle-search-current-input               ((,class (:foreground ,keyword))))
   `(icicle-search-context-level-8             ((,class (:foreground ,warning))))
   `(icicle-search-context-level-7             ((,class (:foreground ,warning))))
   `(icicle-search-context-level-6             ((,class (:foreground ,warning))))
   `(icicle-search-context-level-5             ((,class (:foreground ,warning))))
   `(icicle-search-context-level-4             ((,class (:foreground ,warning))))
   `(icicle-search-context-level-3             ((,class (:foreground ,warning))))
   `(icicle-search-context-level-2             ((,class (:foreground ,warning))))
   `(icicle-search-context-level-1             ((,class (:foreground ,warning))))
   `(icicle-search-main-regexp-current         ((,class (:foreground ,fg1))))
   `(icicle-saved-candidate                    ((,class (:foreground ,fg1))))
   `(icicle-proxy-candidate                    ((,class (:foreground ,fg1))))
   `(icicle-mustmatch-completion               ((,class (:foreground ,type))))
   `(icicle-multi-command-completion           ((,class (:foreground ,fg2 :background ,bg2))))
   `(icicle-msg-emphasis                       ((,class (:foreground ,func))))
   `(icicle-mode-line-help                     ((,class (:foreground ,fg4))))
   `(icicle-match-highlight-minibuffer         ((,class (:foreground ,builtin))))
   `(icicle-match-highlight-Completions        ((,class (:foreground ,func))))
   `(icicle-key-complete-menu-local            ((,class (:foreground ,fg1))))
   `(icicle-key-complete-menu                  ((,class (:foreground ,fg1))))
   `(icicle-input-completion-fail-lax          ((,class (:foreground ,keyword))))
   `(icicle-input-completion-fail              ((,class (:foreground ,keyword))))
   `(icicle-historical-candidate-other         ((,class (:foreground ,fg1))))
   `(icicle-historical-candidate               ((,class (:foreground ,fg1))))
   `(icicle-current-candidate-highlight        ((,class (:foreground ,warning :background ,bg3))))
   `(icicle-Completions-instruction-2          ((,class (:foreground ,fg4))))
   `(icicle-Completions-instruction-1          ((,class (:foreground ,fg4))))
   `(icicle-completion                         ((,class (:foreground ,var))))
   `(icicle-complete-input                     ((,class (:foreground ,builtin))))
   `(icicle-common-match-highlight-Completions ((,class (:foreground ,type))))
   `(icicle-candidate-part                     ((,class (:foreground ,var))))
   `(icicle-annotation                         ((,class (:foreground ,fg4))))
   ))


;;;###autoload
;(when load-file-name
;  (add-to-list 'custom-theme-load-path
;               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'apprentice)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; apprentice-theme.el ends here
