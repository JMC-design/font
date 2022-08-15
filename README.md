# font
Generic protocols to deal with fonts and glyphs. Not meant to be :USEd, use the package prefixes.

for such fine purposes as
```
(defun string-paths (string font &key (kerning t))
  (let ((font (font:open font)))
    (loop :for previous := nil :then char
          :for offset := 0 :then (+ offset (glyph:advance-width glyph)
          :for char :across string
          :for glyph := (font:glyph char font)
          :for paths := (glyph:paths glyph :offset (cons offset-x offset-y))
          :when paths :collect it
          :when (and kerning previous)
            :do (incf offset (glyph:kerning previous char)))))
            ```
