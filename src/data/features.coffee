module.exports=
  # Border Radius
  'border-radius':
    properties: [
      'border-radius'
      'border-top-left-radius'
      'border-top-right-radius'
      'border-bottom-right-radius'
      'border-bottom-left-radius']

  # Box Shadow
  'css-boxshadow':
    properties: ['box-shadow']

  # Animation
  'css-animation':
    properties: [
      'animation'
      'animation-name'
      'animation-duration'
      'animation-delay'
      'animation-direction'
      'animation-fill-mode'
      'animation-iteration-count'
      'animation-play-state'
      'animation-timing-function'
      '@keyframes']

  # Transition
  'css-transitions':
    properties: [
      'transition'
      'transition-property'
      'transition-duration'
      'transition-delay'
      'transition-timing-function']

  # Transform 2D
  'transforms2d':
    properties: [
      'transform'
      'transform-origin']

  # Transform 3D
  'transforms3d':
    properties: [
      'perspective'
      'perspective-origin'
      'transform-style'
      'backface-visibility']

  # Gradients
  'css-gradients':
    properties: [
      'background'
      'background-image'
      'border-image']
      
    values: [
      'linear-gradient'
      'repeating-linear-gradient'
      'radial-gradient'
      'repeating-radial-gradient']

  # Box sizing
  'css3-boxsizing':
    properties: ['box-sizing']

  # Filter Effects
  'css-filters':
    properties: ['filter']

  # Multicolumns
  'multicolumn':
    properties: [
      'columns'
      'column-width'
      'column-gap'
      'column-rule'
      'column-rule-color'
      'column-rule-width'
      'column-count'
      'column-rule-style'
      'column-span'
      'column-fill'
      'break-before'
      'break-after'
      'break-inside']

  # User select
  'user-select-none':
    properties: ['user-select']

  # Flexible Box Layout
  'flexbox':
    properties: ['display']
    values: [
      'display-flex'
      'inline-flex'
      'flex'
      'flex-grow'
      'flex-shrink'
      'flex-basis'
      'flex-direction'
      'flex-wrap'
      'flex-flow'
      'justify-content'
      'order'
      'align-items'
      'align-self'
      'align-content']

  # calc() unit
  'calc':
    values: ['calc']
    properties: [''] # any property

  # Background options
  'background-img-opts':
    properties: [
      'background-clip'
      'background-origin'
      'background-size']

  # Font feature settings
  'font-feature':
    properties: [
      'font-feature-settings'
      'font-variant-ligatures'
      'font-language-override'
      'font-kerning']

  # Border image
  'border-image':
    properties: ['border-image']

  # Selection selector
  'css-selection':
    properties: ['::selection']
    selector: true
      # Placeholder selector
  'css-placeholder':
    properties: ['::placeholder']
    selector: true
      # Hyphenation
  'css-hyphens':
    properties: ['hyphens']

  # Fullscreen selector
  'fullscreen':
    properties: [':fullscreen']
    selector: true
      # Tab size
  'css3-tabsize':
    properties: ['tab-size']

  # Intrinsic & extrinsic sizing
  'intrinsic-width':
    properties: [
      'width'
      'min-width'
      'max-width'
      'height'
      'min-height'
      'max-height']
    values: [
      'max-content'
      'min-content'
      'fit-content'
      'fill-available']

  # Zoom and grab cursor
  'css3-cursors-newer':
    properties: ['cursor']
    values: [
      'zoom-in'
      'zoom-out'
      'grab'
      'grabbing']

  # Sticky position
  'css-sticky':
    properties: ['position']
    values: ['sticky']

  # Pointer Events
  'pointer':
    properties: ['touch-action']

  # Text decoration
  'text-decoration':
    properties: [
      'text-decoration-style'
      'text-decoration-line'
      'text-decoration-color']

  # Text Size Adjust
  'text-size-adjust':
    properties: ['text-size-adjust']

  # CSS Masks
  'css-masks':
    properties: [
      'clip-path'
      'mask'
      'mask-clip'
      'mask-composite'
      'mask-image'
      'mask-origin'
      'mask-position'
      'mask-repeat'
      'mask-size']
   
  # @font-face Web fonts
  'fontface':{}

  # CSS3 Multiple backgrounds
  'multibackgrounds':{}

  # CSS Table display
  'css-table':{}

  # CSS Generated content for pseudo-elements
  'css-gencontent':{}

  # CSS position:fixed
  'css-fixed':{}

  # CSS 2.1 selectors
  'css-sel2':{}

  # CSS3 selectors
  'css-sel3':{}

  # CSS3 Text-shadow
  'css-textshadow':{}

  # CSS3 Colors
  'css3-colors':{}

  # CSS3 Media Queries
  'css-mediaqueries':{}

  # CSS Canvas Drawings
  'css-canvas':{}

  # CSS Reflections
  'css-reflections':{}

  # SVG in CSS backgrounds
  'svg-css':{}

  # CSS Feature Queries
  'css-featurequeries':{}

  # CSS3 Opacity
  'css-opacity':{}

  # CSS3 Text-overflow
  'text-overflow':{}

  # CSS3 Overflow-wrap
  'wordwrap':{}

  # CSS3 object-fit/object-position
  'object-fit':{}

  # CSS min/max-width/height
  'minmaxwh':{}

  # CSS text-stroke
  'text-stroke':{}

  # CSS inline-block
  'inline-block':{}

  # CSS Grid Layout
  'css-grid':{}

  # rem (root em) units
  'rem':{}

  # TTF/OTF - TrueType and OpenType font support
  'ttf':{}

  # CSS pointer-events (for HTML)
  'pointer-events':{}

  # CSS Regions
  'css-regions':{}

  # CSS Counters
  'css-counters':{}

  # CSS resize property
  'css-resize':{}

  # CSS Repeating Gradients
  'css-repeating-gradients':{}

  # getComputedStyle
  'getcomputedstyle':{}

  # CSS3 word-break
  'word-break':{}

  # Viewport units: vw, vh, vmin, vmax
  'viewport-units':{}

  # Scoped CSS
  'style-scoped':{}

  # CSS outline
  'outline':{}

  # CSS3 Cursors (original values)
  'css3-cursors':{}

  # CSS Variables
  'css-variables':{}

  # CSS background-blend-mode
  'css-backgroundblendmode':{}

  # Blending of HTML/SVG elements
  'css-mixblendmode':{}

  # CSS will-change property
  'will-change':{}

  # CSS Shapes Level 1
  'css-shapes':{}

  # Improved kerning pairs & ligatures
  'kerning-pairs-ligatures':{}

  # CSS3 image-orientation
  'css-image-orientation':{}

  # CSS Appearance
  'css-appearance':{}

  # CSS background-position edge offsets
  'css-background-offsets':{}

  # CSS touch-action property
  'css-touch-action':{}

  # CSS clip-path property
  'css-clip-path':{}

  # CSS Font Loading
  'font-loading':{}

  # Font unicode-range subsetting
  'font-unicode-range':{}

  # CSS font-stretch
  'css-font-stretch':{}

  # CSS font-size-adjust
  'font-size-adjust':{}

  # Media Queries: resolution feature
  'css-media-resolution':{}

  # CSS image-set
  'css-image-set':{}
