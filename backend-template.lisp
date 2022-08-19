;;;; Font specific
(defmethod open (font))
(defmethod %open (font type))
(defmethod close (font))

(defmethod name (font))
(defmethod family (font))
(defmethod subfamily (font))
(defmethod weight (font))

(defmethod ascent (font &optional ppem))
(defmethod descent (font &optional ppem))
(defmethod internal-leading (font &optional ppem))
(defmethod external-leading (font &optional ppem))
(defmethod line-gap (font &optional ppem))

(defmethod height (font &optional ppem))
(defmethod cap-height (font &optional ppem))
(defmethod x-height (font &optional ppem))

(defmethod baseline (font &optional ppem))
(defmethod baselines (font &optional ppem))
(defmethod center-baseline (font &optional ppem))
(defmethod top-baseline (font &optional ppem))

(defmethod underline (font &optional ppem))
(defmethod fixed-width (font))

(defmethod kerning (font char1 char2 &optional ppem))
(defmethod kerning-pairs (font char &optional ppem))

(defmethod glyph-count (font))
(defmethod glyphs (font))
(defmethod glyph (char font))
(defmethod index (thing font))

(defmethod code-points (font))
(defmethod character-sets (font))

(defmethod paths (object font &key offset &allow-other-keys))
(defmethod tables (font))
(defmethod raw-table (table font))
(defmethod table (string font))
(defmethod index-table (index table font))
(defmethod aspect (font))

(defmethod internal-leading (font &optional ppem))
(defmethod external-leading (font &optional ppem))
(defmethod metrics (font))


;;;; Glyph specific

(defmethod index (glyph))
(defmethod character (glyph))
(defmethod code-point (glyph))
(defmethod name (glyph))
(defmethod font (glyph))
(defmethod em (glyph))


(defmethod bounding-box (glyph &optional ppem))
(defmethod x-min (glyph &optional ppem))
(defmethod x-max (glyph &optional ppem))
(defmethod y-min (glyph &optional ppem))
(defmethod y-max (glyph &optional ppem))
(defmethod vertical-origin (glyph &optional ppem))
(defmethod horizontal-origin (glyph &optional ppem))

(defmethod width (glyph &optional ppem))
(defmethod height (glyph &optional ppem))
(defmethod size (glyph  &optional ppem))


(defmethod left-side-bearing (glyph &optional ppem)) 
(defmethod right-side-bearing (glyph &optional ppem))
(defmethod top-side-bearing (glyph &optional ppem))
(defmethod bottom-side-bearing (glyph &optional ppem))       

(defmethod advance-width (glyph &optional ppem))
(defmethod advance-height (glyph &optional ppem))

(defmethod kerning (glyph1 glyph2 &optional ppem))
(defmethod kerning-pairs (glyph))
(defmethod data (glyph));raw
(defmethod paths (glyph &key offset &allow-other-keys)) ;cl-vector paths
(defmethod raster (glyph &optional ppem))
(defmethod anchors (glyph  &optional ppem))
