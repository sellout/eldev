(progn
  (require 'bytecomp)
  (let ((byte-compile-warnings      '(not docstrings))
        (byte-compile-error-on-warn t))
    (push default-directory load-path)
    (unless (and (byte-compile-file "eldev-util.el")
                 (byte-compile-file "eldev.el")
                 (byte-compile-file "eldev-ert.el")
                 (byte-compile-file "eldev-buttercup.el")
                 (byte-compile-file "eldev-ecukes.el")
                 (byte-compile-file "eldev-build.el")
                 (byte-compile-file "eldev-vc.el")
                 (byte-compile-file "eldev-doctor.el")
                 (byte-compile-file "eldev-plugins.el"))
      (kill-emacs 1))))
