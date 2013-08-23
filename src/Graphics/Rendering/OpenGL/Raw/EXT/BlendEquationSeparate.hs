--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.EXT.BlendEquationSeparate
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the EXT_blend_equation_separate extension, see
-- <http://www.opengl.org/registry/specs/EXT/blend_equation_separate.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.EXT.BlendEquationSeparate (
   -- * Functions
   glBlendEquationSeparate,
   -- * Tokens
   gl_BLEND_EQUATION_RGB,
   gl_BLEND_EQUATION_ALPHA
) where

import Graphics.Rendering.OpenGL.Raw.Core32
