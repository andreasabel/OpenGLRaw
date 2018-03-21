{-# OPTIONS_HADDOCK hide #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.GL.Functions.F18
-- Copyright   :  (c) Sven Panne 2018
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- Raw functions from the
-- <http://www.opengl.org/registry/ OpenGL registry>.
--
--------------------------------------------------------------------------------

module Graphics.GL.Functions.F18 (
  glMultiTexCoord4ivARB,
  glMultiTexCoord4s,
  glMultiTexCoord4sARB,
  glMultiTexCoord4sv,
  glMultiTexCoord4svARB,
  glMultiTexCoord4x,
  glMultiTexCoord4xOES,
  glMultiTexCoord4xvOES,
  glMultiTexCoordP1ui,
  glMultiTexCoordP1uiv,
  glMultiTexCoordP2ui,
  glMultiTexCoordP2uiv,
  glMultiTexCoordP3ui,
  glMultiTexCoordP3uiv,
  glMultiTexCoordP4ui,
  glMultiTexCoordP4uiv,
  glMultiTexCoordPointerEXT,
  glMultiTexEnvfEXT,
  glMultiTexEnvfvEXT,
  glMultiTexEnviEXT,
  glMultiTexEnvivEXT,
  glMultiTexGendEXT,
  glMultiTexGendvEXT,
  glMultiTexGenfEXT,
  glMultiTexGenfvEXT,
  glMultiTexGeniEXT,
  glMultiTexGenivEXT,
  glMultiTexImage1DEXT,
  glMultiTexImage2DEXT,
  glMultiTexImage3DEXT,
  glMultiTexParameterIivEXT,
  glMultiTexParameterIuivEXT,
  glMultiTexParameterfEXT,
  glMultiTexParameterfvEXT,
  glMultiTexParameteriEXT,
  glMultiTexParameterivEXT,
  glMultiTexRenderbufferEXT,
  glMultiTexSubImage1DEXT,
  glMultiTexSubImage2DEXT,
  glMultiTexSubImage3DEXT,
  glMulticastBarrierNV,
  glMulticastBlitFramebufferNV,
  glMulticastBufferSubDataNV,
  glMulticastCopyBufferSubDataNV,
  glMulticastCopyImageSubDataNV,
  glMulticastFramebufferSampleLocationsfvNV,
  glMulticastGetQueryObjecti64vNV,
  glMulticastGetQueryObjectivNV,
  glMulticastGetQueryObjectui64vNV,
  glMulticastGetQueryObjectuivNV,
  glMulticastWaitSyncNV,
  glNamedBufferData,
  glNamedBufferDataEXT,
  glNamedBufferPageCommitmentARB,
  glNamedBufferPageCommitmentEXT,
  glNamedBufferStorage,
  glNamedBufferStorageEXT,
  glNamedBufferStorageExternalEXT,
  glNamedBufferStorageMemEXT,
  glNamedBufferSubData,
  glNamedBufferSubDataEXT,
  glNamedCopyBufferSubDataEXT,
  glNamedFramebufferDrawBuffer,
  glNamedFramebufferDrawBuffers,
  glNamedFramebufferParameteri,
  glNamedFramebufferParameteriEXT,
  glNamedFramebufferReadBuffer,
  glNamedFramebufferRenderbuffer,
  glNamedFramebufferRenderbufferEXT,
  glNamedFramebufferSampleLocationsfvARB,
  glNamedFramebufferSampleLocationsfvNV,
  glNamedFramebufferSamplePositionsfvAMD,
  glNamedFramebufferTexture,
  glNamedFramebufferTexture1DEXT,
  glNamedFramebufferTexture2DEXT,
  glNamedFramebufferTexture3DEXT,
  glNamedFramebufferTextureEXT,
  glNamedFramebufferTextureFaceEXT,
  glNamedFramebufferTextureLayer,
  glNamedFramebufferTextureLayerEXT,
  glNamedProgramLocalParameter4dEXT,
  glNamedProgramLocalParameter4dvEXT,
  glNamedProgramLocalParameter4fEXT,
  glNamedProgramLocalParameter4fvEXT,
  glNamedProgramLocalParameterI4iEXT,
  glNamedProgramLocalParameterI4ivEXT,
  glNamedProgramLocalParameterI4uiEXT,
  glNamedProgramLocalParameterI4uivEXT,
  glNamedProgramLocalParameters4fvEXT,
  glNamedProgramLocalParametersI4ivEXT,
  glNamedProgramLocalParametersI4uivEXT,
  glNamedProgramStringEXT,
  glNamedRenderbufferStorage,
  glNamedRenderbufferStorageEXT,
  glNamedRenderbufferStorageMultisample,
  glNamedRenderbufferStorageMultisampleCoverageEXT,
  glNamedRenderbufferStorageMultisampleEXT,
  glNamedStringARB,
  glNewList,
  glNewObjectBufferATI
) where

import Control.Monad.IO.Class ( MonadIO(..) )
import Foreign.Ptr
import Graphics.GL.Foreign
import Graphics.GL.Types
import System.IO.Unsafe ( unsafePerformIO )

-- glMultiTexCoord4ivARB -------------------------------------------------------

-- | This command is an alias for 'glMultiTexCoord4iv'.
glMultiTexCoord4ivARB
  :: MonadIO m
  => GLenum -- ^ @target@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> Ptr GLint -- ^ @v@ pointing to @4@ elements of type @CoordI@.
  -> m ()
glMultiTexCoord4ivARB v1 v2 = liftIO $ dyn139 ptr_glMultiTexCoord4ivARB v1 v2

{-# NOINLINE ptr_glMultiTexCoord4ivARB #-}
ptr_glMultiTexCoord4ivARB :: FunPtr (GLenum -> Ptr GLint -> IO ())
ptr_glMultiTexCoord4ivARB = unsafePerformIO $ getCommand "glMultiTexCoord4ivARB"

-- glMultiTexCoord4s -----------------------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man2/xhtml/glMultiTexCoord.xml OpenGL 2.x>. The vector equivalent of this command is 'glMultiTexCoord4sv'.
glMultiTexCoord4s
  :: MonadIO m
  => GLenum -- ^ @target@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLshort -- ^ @s@ of type @CoordS@.
  -> GLshort -- ^ @t@ of type @CoordS@.
  -> GLshort -- ^ @r@ of type @CoordS@.
  -> GLshort -- ^ @q@ of type @CoordS@.
  -> m ()
glMultiTexCoord4s v1 v2 v3 v4 v5 = liftIO $ dyn578 ptr_glMultiTexCoord4s v1 v2 v3 v4 v5

{-# NOINLINE ptr_glMultiTexCoord4s #-}
ptr_glMultiTexCoord4s :: FunPtr (GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ())
ptr_glMultiTexCoord4s = unsafePerformIO $ getCommand "glMultiTexCoord4s"

-- glMultiTexCoord4sARB --------------------------------------------------------

-- | The vector equivalent of this command is 'glMultiTexCoord4sv'. This command is an alias for 'glMultiTexCoord4s'.
glMultiTexCoord4sARB
  :: MonadIO m
  => GLenum -- ^ @target@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLshort -- ^ @s@ of type @CoordS@.
  -> GLshort -- ^ @t@ of type @CoordS@.
  -> GLshort -- ^ @r@ of type @CoordS@.
  -> GLshort -- ^ @q@ of type @CoordS@.
  -> m ()
glMultiTexCoord4sARB v1 v2 v3 v4 v5 = liftIO $ dyn578 ptr_glMultiTexCoord4sARB v1 v2 v3 v4 v5

{-# NOINLINE ptr_glMultiTexCoord4sARB #-}
ptr_glMultiTexCoord4sARB :: FunPtr (GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ())
ptr_glMultiTexCoord4sARB = unsafePerformIO $ getCommand "glMultiTexCoord4sARB"

-- glMultiTexCoord4sv ----------------------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man2/xhtml/glMultiTexCoord.xml OpenGL 2.x>.
glMultiTexCoord4sv
  :: MonadIO m
  => GLenum -- ^ @target@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> Ptr GLshort -- ^ @v@ pointing to @4@ elements of type @CoordS@.
  -> m ()
glMultiTexCoord4sv v1 v2 = liftIO $ dyn564 ptr_glMultiTexCoord4sv v1 v2

{-# NOINLINE ptr_glMultiTexCoord4sv #-}
ptr_glMultiTexCoord4sv :: FunPtr (GLenum -> Ptr GLshort -> IO ())
ptr_glMultiTexCoord4sv = unsafePerformIO $ getCommand "glMultiTexCoord4sv"

-- glMultiTexCoord4svARB -------------------------------------------------------

-- | This command is an alias for 'glMultiTexCoord4sv'.
glMultiTexCoord4svARB
  :: MonadIO m
  => GLenum -- ^ @target@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> Ptr GLshort -- ^ @v@ pointing to @4@ elements of type @CoordS@.
  -> m ()
glMultiTexCoord4svARB v1 v2 = liftIO $ dyn564 ptr_glMultiTexCoord4svARB v1 v2

{-# NOINLINE ptr_glMultiTexCoord4svARB #-}
ptr_glMultiTexCoord4svARB :: FunPtr (GLenum -> Ptr GLshort -> IO ())
ptr_glMultiTexCoord4svARB = unsafePerformIO $ getCommand "glMultiTexCoord4svARB"

-- glMultiTexCoord4x -----------------------------------------------------------

glMultiTexCoord4x
  :: MonadIO m
  => GLenum -- ^ @texture@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLfixed -- ^ @s@.
  -> GLfixed -- ^ @t@.
  -> GLfixed -- ^ @r@.
  -> GLfixed -- ^ @q@.
  -> m ()
glMultiTexCoord4x v1 v2 v3 v4 v5 = liftIO $ dyn579 ptr_glMultiTexCoord4x v1 v2 v3 v4 v5

{-# NOINLINE ptr_glMultiTexCoord4x #-}
ptr_glMultiTexCoord4x :: FunPtr (GLenum -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ())
ptr_glMultiTexCoord4x = unsafePerformIO $ getCommand "glMultiTexCoord4x"

-- glMultiTexCoord4xOES --------------------------------------------------------

glMultiTexCoord4xOES
  :: MonadIO m
  => GLenum -- ^ @texture@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLfixed -- ^ @s@.
  -> GLfixed -- ^ @t@.
  -> GLfixed -- ^ @r@.
  -> GLfixed -- ^ @q@.
  -> m ()
glMultiTexCoord4xOES v1 v2 v3 v4 v5 = liftIO $ dyn579 ptr_glMultiTexCoord4xOES v1 v2 v3 v4 v5

{-# NOINLINE ptr_glMultiTexCoord4xOES #-}
ptr_glMultiTexCoord4xOES :: FunPtr (GLenum -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> IO ())
ptr_glMultiTexCoord4xOES = unsafePerformIO $ getCommand "glMultiTexCoord4xOES"

-- glMultiTexCoord4xvOES -------------------------------------------------------

glMultiTexCoord4xvOES
  :: MonadIO m
  => GLenum -- ^ @texture@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> Ptr GLfixed -- ^ @coords@ pointing to @4@ elements of type @GLfixed@.
  -> m ()
glMultiTexCoord4xvOES v1 v2 = liftIO $ dyn98 ptr_glMultiTexCoord4xvOES v1 v2

{-# NOINLINE ptr_glMultiTexCoord4xvOES #-}
ptr_glMultiTexCoord4xvOES :: FunPtr (GLenum -> Ptr GLfixed -> IO ())
ptr_glMultiTexCoord4xvOES = unsafePerformIO $ getCommand "glMultiTexCoord4xvOES"

-- glMultiTexCoordP1ui ---------------------------------------------------------

glMultiTexCoordP1ui
  :: MonadIO m
  => GLenum -- ^ @texture@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @type@ of type [TexCoordPointerType](Graphics-GL-Groups.html#TexCoordPointerType).
  -> GLuint -- ^ @coords@.
  -> m ()
glMultiTexCoordP1ui v1 v2 v3 = liftIO $ dyn30 ptr_glMultiTexCoordP1ui v1 v2 v3

{-# NOINLINE ptr_glMultiTexCoordP1ui #-}
ptr_glMultiTexCoordP1ui :: FunPtr (GLenum -> GLenum -> GLuint -> IO ())
ptr_glMultiTexCoordP1ui = unsafePerformIO $ getCommand "glMultiTexCoordP1ui"

-- glMultiTexCoordP1uiv --------------------------------------------------------

glMultiTexCoordP1uiv
  :: MonadIO m
  => GLenum -- ^ @texture@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @type@ of type [TexCoordPointerType](Graphics-GL-Groups.html#TexCoordPointerType).
  -> Ptr GLuint -- ^ @coords@ pointing to @1@ element of type @GLuint@.
  -> m ()
glMultiTexCoordP1uiv v1 v2 v3 = liftIO $ dyn425 ptr_glMultiTexCoordP1uiv v1 v2 v3

{-# NOINLINE ptr_glMultiTexCoordP1uiv #-}
ptr_glMultiTexCoordP1uiv :: FunPtr (GLenum -> GLenum -> Ptr GLuint -> IO ())
ptr_glMultiTexCoordP1uiv = unsafePerformIO $ getCommand "glMultiTexCoordP1uiv"

-- glMultiTexCoordP2ui ---------------------------------------------------------

glMultiTexCoordP2ui
  :: MonadIO m
  => GLenum -- ^ @texture@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @type@ of type [TexCoordPointerType](Graphics-GL-Groups.html#TexCoordPointerType).
  -> GLuint -- ^ @coords@.
  -> m ()
glMultiTexCoordP2ui v1 v2 v3 = liftIO $ dyn30 ptr_glMultiTexCoordP2ui v1 v2 v3

{-# NOINLINE ptr_glMultiTexCoordP2ui #-}
ptr_glMultiTexCoordP2ui :: FunPtr (GLenum -> GLenum -> GLuint -> IO ())
ptr_glMultiTexCoordP2ui = unsafePerformIO $ getCommand "glMultiTexCoordP2ui"

-- glMultiTexCoordP2uiv --------------------------------------------------------

glMultiTexCoordP2uiv
  :: MonadIO m
  => GLenum -- ^ @texture@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @type@ of type [TexCoordPointerType](Graphics-GL-Groups.html#TexCoordPointerType).
  -> Ptr GLuint -- ^ @coords@ pointing to @1@ element of type @GLuint@.
  -> m ()
glMultiTexCoordP2uiv v1 v2 v3 = liftIO $ dyn425 ptr_glMultiTexCoordP2uiv v1 v2 v3

{-# NOINLINE ptr_glMultiTexCoordP2uiv #-}
ptr_glMultiTexCoordP2uiv :: FunPtr (GLenum -> GLenum -> Ptr GLuint -> IO ())
ptr_glMultiTexCoordP2uiv = unsafePerformIO $ getCommand "glMultiTexCoordP2uiv"

-- glMultiTexCoordP3ui ---------------------------------------------------------

glMultiTexCoordP3ui
  :: MonadIO m
  => GLenum -- ^ @texture@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @type@ of type [TexCoordPointerType](Graphics-GL-Groups.html#TexCoordPointerType).
  -> GLuint -- ^ @coords@.
  -> m ()
glMultiTexCoordP3ui v1 v2 v3 = liftIO $ dyn30 ptr_glMultiTexCoordP3ui v1 v2 v3

{-# NOINLINE ptr_glMultiTexCoordP3ui #-}
ptr_glMultiTexCoordP3ui :: FunPtr (GLenum -> GLenum -> GLuint -> IO ())
ptr_glMultiTexCoordP3ui = unsafePerformIO $ getCommand "glMultiTexCoordP3ui"

-- glMultiTexCoordP3uiv --------------------------------------------------------

glMultiTexCoordP3uiv
  :: MonadIO m
  => GLenum -- ^ @texture@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @type@ of type [TexCoordPointerType](Graphics-GL-Groups.html#TexCoordPointerType).
  -> Ptr GLuint -- ^ @coords@ pointing to @1@ element of type @GLuint@.
  -> m ()
glMultiTexCoordP3uiv v1 v2 v3 = liftIO $ dyn425 ptr_glMultiTexCoordP3uiv v1 v2 v3

{-# NOINLINE ptr_glMultiTexCoordP3uiv #-}
ptr_glMultiTexCoordP3uiv :: FunPtr (GLenum -> GLenum -> Ptr GLuint -> IO ())
ptr_glMultiTexCoordP3uiv = unsafePerformIO $ getCommand "glMultiTexCoordP3uiv"

-- glMultiTexCoordP4ui ---------------------------------------------------------

glMultiTexCoordP4ui
  :: MonadIO m
  => GLenum -- ^ @texture@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @type@ of type [TexCoordPointerType](Graphics-GL-Groups.html#TexCoordPointerType).
  -> GLuint -- ^ @coords@.
  -> m ()
glMultiTexCoordP4ui v1 v2 v3 = liftIO $ dyn30 ptr_glMultiTexCoordP4ui v1 v2 v3

{-# NOINLINE ptr_glMultiTexCoordP4ui #-}
ptr_glMultiTexCoordP4ui :: FunPtr (GLenum -> GLenum -> GLuint -> IO ())
ptr_glMultiTexCoordP4ui = unsafePerformIO $ getCommand "glMultiTexCoordP4ui"

-- glMultiTexCoordP4uiv --------------------------------------------------------

glMultiTexCoordP4uiv
  :: MonadIO m
  => GLenum -- ^ @texture@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @type@ of type [TexCoordPointerType](Graphics-GL-Groups.html#TexCoordPointerType).
  -> Ptr GLuint -- ^ @coords@ pointing to @1@ element of type @GLuint@.
  -> m ()
glMultiTexCoordP4uiv v1 v2 v3 = liftIO $ dyn425 ptr_glMultiTexCoordP4uiv v1 v2 v3

{-# NOINLINE ptr_glMultiTexCoordP4uiv #-}
ptr_glMultiTexCoordP4uiv :: FunPtr (GLenum -> GLenum -> Ptr GLuint -> IO ())
ptr_glMultiTexCoordP4uiv = unsafePerformIO $ getCommand "glMultiTexCoordP4uiv"

-- glMultiTexCoordPointerEXT ---------------------------------------------------

glMultiTexCoordPointerEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLint -- ^ @size@.
  -> GLenum -- ^ @type@ of type [TexCoordPointerType](Graphics-GL-Groups.html#TexCoordPointerType).
  -> GLsizei -- ^ @stride@.
  -> Ptr a -- ^ @pointer@ pointing to @COMPSIZE(size,type,stride)@ elements of type @a@.
  -> m ()
glMultiTexCoordPointerEXT v1 v2 v3 v4 v5 = liftIO $ dyn580 ptr_glMultiTexCoordPointerEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glMultiTexCoordPointerEXT #-}
ptr_glMultiTexCoordPointerEXT :: FunPtr (GLenum -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
ptr_glMultiTexCoordPointerEXT = unsafePerformIO $ getCommand "glMultiTexCoordPointerEXT"

-- glMultiTexEnvfEXT -----------------------------------------------------------

-- | The vector equivalent of this command is 'glMultiTexEnvfvEXT'.
glMultiTexEnvfEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureEnvTarget](Graphics-GL-Groups.html#TextureEnvTarget).
  -> GLenum -- ^ @pname@ of type [TextureEnvParameter](Graphics-GL-Groups.html#TextureEnvParameter).
  -> GLfloat -- ^ @param@ of type @CheckedFloat32@.
  -> m ()
glMultiTexEnvfEXT v1 v2 v3 v4 = liftIO $ dyn581 ptr_glMultiTexEnvfEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexEnvfEXT #-}
ptr_glMultiTexEnvfEXT :: FunPtr (GLenum -> GLenum -> GLenum -> GLfloat -> IO ())
ptr_glMultiTexEnvfEXT = unsafePerformIO $ getCommand "glMultiTexEnvfEXT"

-- glMultiTexEnvfvEXT ----------------------------------------------------------

glMultiTexEnvfvEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureEnvTarget](Graphics-GL-Groups.html#TextureEnvTarget).
  -> GLenum -- ^ @pname@ of type [TextureEnvParameter](Graphics-GL-Groups.html#TextureEnvParameter).
  -> Ptr GLfloat -- ^ @params@ pointing to @COMPSIZE(pname)@ elements of type @CheckedFloat32@.
  -> m ()
glMultiTexEnvfvEXT v1 v2 v3 v4 = liftIO $ dyn330 ptr_glMultiTexEnvfvEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexEnvfvEXT #-}
ptr_glMultiTexEnvfvEXT :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
ptr_glMultiTexEnvfvEXT = unsafePerformIO $ getCommand "glMultiTexEnvfvEXT"

-- glMultiTexEnviEXT -----------------------------------------------------------

-- | The vector equivalent of this command is 'glMultiTexEnvivEXT'.
glMultiTexEnviEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureEnvTarget](Graphics-GL-Groups.html#TextureEnvTarget).
  -> GLenum -- ^ @pname@ of type [TextureEnvParameter](Graphics-GL-Groups.html#TextureEnvParameter).
  -> GLint -- ^ @param@ of type @CheckedInt32@.
  -> m ()
glMultiTexEnviEXT v1 v2 v3 v4 = liftIO $ dyn582 ptr_glMultiTexEnviEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexEnviEXT #-}
ptr_glMultiTexEnviEXT :: FunPtr (GLenum -> GLenum -> GLenum -> GLint -> IO ())
ptr_glMultiTexEnviEXT = unsafePerformIO $ getCommand "glMultiTexEnviEXT"

-- glMultiTexEnvivEXT ----------------------------------------------------------

glMultiTexEnvivEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureEnvTarget](Graphics-GL-Groups.html#TextureEnvTarget).
  -> GLenum -- ^ @pname@ of type [TextureEnvParameter](Graphics-GL-Groups.html#TextureEnvParameter).
  -> Ptr GLint -- ^ @params@ pointing to @COMPSIZE(pname)@ elements of type @CheckedInt32@.
  -> m ()
glMultiTexEnvivEXT v1 v2 v3 v4 = liftIO $ dyn331 ptr_glMultiTexEnvivEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexEnvivEXT #-}
ptr_glMultiTexEnvivEXT :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
ptr_glMultiTexEnvivEXT = unsafePerformIO $ getCommand "glMultiTexEnvivEXT"

-- glMultiTexGendEXT -----------------------------------------------------------

-- | The vector equivalent of this command is 'glMultiTexGendvEXT'.
glMultiTexGendEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @coord@ of type [TextureCoordName](Graphics-GL-Groups.html#TextureCoordName).
  -> GLenum -- ^ @pname@ of type [TextureGenParameter](Graphics-GL-Groups.html#TextureGenParameter).
  -> GLdouble -- ^ @param@.
  -> m ()
glMultiTexGendEXT v1 v2 v3 v4 = liftIO $ dyn583 ptr_glMultiTexGendEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexGendEXT #-}
ptr_glMultiTexGendEXT :: FunPtr (GLenum -> GLenum -> GLenum -> GLdouble -> IO ())
ptr_glMultiTexGendEXT = unsafePerformIO $ getCommand "glMultiTexGendEXT"

-- glMultiTexGendvEXT ----------------------------------------------------------

glMultiTexGendvEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @coord@ of type [TextureCoordName](Graphics-GL-Groups.html#TextureCoordName).
  -> GLenum -- ^ @pname@ of type [TextureGenParameter](Graphics-GL-Groups.html#TextureGenParameter).
  -> Ptr GLdouble -- ^ @params@ pointing to @COMPSIZE(pname)@ elements of type @GLdouble@.
  -> m ()
glMultiTexGendvEXT v1 v2 v3 v4 = liftIO $ dyn365 ptr_glMultiTexGendvEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexGendvEXT #-}
ptr_glMultiTexGendvEXT :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO ())
ptr_glMultiTexGendvEXT = unsafePerformIO $ getCommand "glMultiTexGendvEXT"

-- glMultiTexGenfEXT -----------------------------------------------------------

-- | The vector equivalent of this command is 'glMultiTexGenfvEXT'.
glMultiTexGenfEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @coord@ of type [TextureCoordName](Graphics-GL-Groups.html#TextureCoordName).
  -> GLenum -- ^ @pname@ of type [TextureGenParameter](Graphics-GL-Groups.html#TextureGenParameter).
  -> GLfloat -- ^ @param@ of type @CheckedFloat32@.
  -> m ()
glMultiTexGenfEXT v1 v2 v3 v4 = liftIO $ dyn581 ptr_glMultiTexGenfEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexGenfEXT #-}
ptr_glMultiTexGenfEXT :: FunPtr (GLenum -> GLenum -> GLenum -> GLfloat -> IO ())
ptr_glMultiTexGenfEXT = unsafePerformIO $ getCommand "glMultiTexGenfEXT"

-- glMultiTexGenfvEXT ----------------------------------------------------------

glMultiTexGenfvEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @coord@ of type [TextureCoordName](Graphics-GL-Groups.html#TextureCoordName).
  -> GLenum -- ^ @pname@ of type [TextureGenParameter](Graphics-GL-Groups.html#TextureGenParameter).
  -> Ptr GLfloat -- ^ @params@ pointing to @COMPSIZE(pname)@ elements of type @CheckedFloat32@.
  -> m ()
glMultiTexGenfvEXT v1 v2 v3 v4 = liftIO $ dyn330 ptr_glMultiTexGenfvEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexGenfvEXT #-}
ptr_glMultiTexGenfvEXT :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
ptr_glMultiTexGenfvEXT = unsafePerformIO $ getCommand "glMultiTexGenfvEXT"

-- glMultiTexGeniEXT -----------------------------------------------------------

-- | The vector equivalent of this command is 'glMultiTexGenivEXT'.
glMultiTexGeniEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @coord@ of type [TextureCoordName](Graphics-GL-Groups.html#TextureCoordName).
  -> GLenum -- ^ @pname@ of type [TextureGenParameter](Graphics-GL-Groups.html#TextureGenParameter).
  -> GLint -- ^ @param@ of type @CheckedInt32@.
  -> m ()
glMultiTexGeniEXT v1 v2 v3 v4 = liftIO $ dyn582 ptr_glMultiTexGeniEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexGeniEXT #-}
ptr_glMultiTexGeniEXT :: FunPtr (GLenum -> GLenum -> GLenum -> GLint -> IO ())
ptr_glMultiTexGeniEXT = unsafePerformIO $ getCommand "glMultiTexGeniEXT"

-- glMultiTexGenivEXT ----------------------------------------------------------

glMultiTexGenivEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @coord@ of type [TextureCoordName](Graphics-GL-Groups.html#TextureCoordName).
  -> GLenum -- ^ @pname@ of type [TextureGenParameter](Graphics-GL-Groups.html#TextureGenParameter).
  -> Ptr GLint -- ^ @params@ pointing to @COMPSIZE(pname)@ elements of type @CheckedInt32@.
  -> m ()
glMultiTexGenivEXT v1 v2 v3 v4 = liftIO $ dyn331 ptr_glMultiTexGenivEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexGenivEXT #-}
ptr_glMultiTexGenivEXT :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
ptr_glMultiTexGenivEXT = unsafePerformIO $ getCommand "glMultiTexGenivEXT"

-- glMultiTexImage1DEXT --------------------------------------------------------

glMultiTexImage1DEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> GLint -- ^ @internalformat@ of type [InternalFormat](Graphics-GL-Groups.html#InternalFormat).
  -> GLsizei -- ^ @width@.
  -> GLint -- ^ @border@ of type @CheckedInt32@.
  -> GLenum -- ^ @format@ of type [PixelFormat](Graphics-GL-Groups.html#PixelFormat).
  -> GLenum -- ^ @type@ of type [PixelType](Graphics-GL-Groups.html#PixelType).
  -> Ptr a -- ^ @pixels@ pointing to @COMPSIZE(format,type,width)@ elements of type @a@.
  -> m ()
glMultiTexImage1DEXT v1 v2 v3 v4 v5 v6 v7 v8 v9 = liftIO $ dyn584 ptr_glMultiTexImage1DEXT v1 v2 v3 v4 v5 v6 v7 v8 v9

{-# NOINLINE ptr_glMultiTexImage1DEXT #-}
ptr_glMultiTexImage1DEXT :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
ptr_glMultiTexImage1DEXT = unsafePerformIO $ getCommand "glMultiTexImage1DEXT"

-- glMultiTexImage2DEXT --------------------------------------------------------

glMultiTexImage2DEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> GLint -- ^ @internalformat@ of type [InternalFormat](Graphics-GL-Groups.html#InternalFormat).
  -> GLsizei -- ^ @width@.
  -> GLsizei -- ^ @height@.
  -> GLint -- ^ @border@ of type @CheckedInt32@.
  -> GLenum -- ^ @format@ of type [PixelFormat](Graphics-GL-Groups.html#PixelFormat).
  -> GLenum -- ^ @type@ of type [PixelType](Graphics-GL-Groups.html#PixelType).
  -> Ptr a -- ^ @pixels@ pointing to @COMPSIZE(format,type,width,height)@ elements of type @a@.
  -> m ()
glMultiTexImage2DEXT v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = liftIO $ dyn585 ptr_glMultiTexImage2DEXT v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

{-# NOINLINE ptr_glMultiTexImage2DEXT #-}
ptr_glMultiTexImage2DEXT :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
ptr_glMultiTexImage2DEXT = unsafePerformIO $ getCommand "glMultiTexImage2DEXT"

-- glMultiTexImage3DEXT --------------------------------------------------------

glMultiTexImage3DEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> GLint -- ^ @internalformat@ of type [InternalFormat](Graphics-GL-Groups.html#InternalFormat).
  -> GLsizei -- ^ @width@.
  -> GLsizei -- ^ @height@.
  -> GLsizei -- ^ @depth@.
  -> GLint -- ^ @border@ of type @CheckedInt32@.
  -> GLenum -- ^ @format@ of type [PixelFormat](Graphics-GL-Groups.html#PixelFormat).
  -> GLenum -- ^ @type@ of type [PixelType](Graphics-GL-Groups.html#PixelType).
  -> Ptr a -- ^ @pixels@ pointing to @COMPSIZE(format,type,width,height,depth)@ elements of type @a@.
  -> m ()
glMultiTexImage3DEXT v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = liftIO $ dyn586 ptr_glMultiTexImage3DEXT v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11

{-# NOINLINE ptr_glMultiTexImage3DEXT #-}
ptr_glMultiTexImage3DEXT :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
ptr_glMultiTexImage3DEXT = unsafePerformIO $ getCommand "glMultiTexImage3DEXT"

-- glMultiTexParameterIivEXT ---------------------------------------------------

glMultiTexParameterIivEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLenum -- ^ @pname@ of type [TextureParameterName](Graphics-GL-Groups.html#TextureParameterName).
  -> Ptr GLint -- ^ @params@ pointing to @COMPSIZE(pname)@ elements of type @CheckedInt32@.
  -> m ()
glMultiTexParameterIivEXT v1 v2 v3 v4 = liftIO $ dyn331 ptr_glMultiTexParameterIivEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexParameterIivEXT #-}
ptr_glMultiTexParameterIivEXT :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
ptr_glMultiTexParameterIivEXT = unsafePerformIO $ getCommand "glMultiTexParameterIivEXT"

-- glMultiTexParameterIuivEXT --------------------------------------------------

glMultiTexParameterIuivEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLenum -- ^ @pname@ of type [TextureParameterName](Graphics-GL-Groups.html#TextureParameterName).
  -> Ptr GLuint -- ^ @params@ pointing to @COMPSIZE(pname)@ elements of type @GLuint@.
  -> m ()
glMultiTexParameterIuivEXT v1 v2 v3 v4 = liftIO $ dyn369 ptr_glMultiTexParameterIuivEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexParameterIuivEXT #-}
ptr_glMultiTexParameterIuivEXT :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO ())
ptr_glMultiTexParameterIuivEXT = unsafePerformIO $ getCommand "glMultiTexParameterIuivEXT"

-- glMultiTexParameterfEXT -----------------------------------------------------

-- | The vector equivalent of this command is 'glMultiTexParameterfvEXT'.
glMultiTexParameterfEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLenum -- ^ @pname@ of type [TextureParameterName](Graphics-GL-Groups.html#TextureParameterName).
  -> GLfloat -- ^ @param@ of type @CheckedFloat32@.
  -> m ()
glMultiTexParameterfEXT v1 v2 v3 v4 = liftIO $ dyn581 ptr_glMultiTexParameterfEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexParameterfEXT #-}
ptr_glMultiTexParameterfEXT :: FunPtr (GLenum -> GLenum -> GLenum -> GLfloat -> IO ())
ptr_glMultiTexParameterfEXT = unsafePerformIO $ getCommand "glMultiTexParameterfEXT"

-- glMultiTexParameterfvEXT ----------------------------------------------------

glMultiTexParameterfvEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLenum -- ^ @pname@ of type [TextureParameterName](Graphics-GL-Groups.html#TextureParameterName).
  -> Ptr GLfloat -- ^ @params@ pointing to @COMPSIZE(pname)@ elements of type @CheckedFloat32@.
  -> m ()
glMultiTexParameterfvEXT v1 v2 v3 v4 = liftIO $ dyn330 ptr_glMultiTexParameterfvEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexParameterfvEXT #-}
ptr_glMultiTexParameterfvEXT :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
ptr_glMultiTexParameterfvEXT = unsafePerformIO $ getCommand "glMultiTexParameterfvEXT"

-- glMultiTexParameteriEXT -----------------------------------------------------

-- | The vector equivalent of this command is 'glMultiTexParameterivEXT'.
glMultiTexParameteriEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLenum -- ^ @pname@ of type [TextureParameterName](Graphics-GL-Groups.html#TextureParameterName).
  -> GLint -- ^ @param@ of type @CheckedInt32@.
  -> m ()
glMultiTexParameteriEXT v1 v2 v3 v4 = liftIO $ dyn582 ptr_glMultiTexParameteriEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexParameteriEXT #-}
ptr_glMultiTexParameteriEXT :: FunPtr (GLenum -> GLenum -> GLenum -> GLint -> IO ())
ptr_glMultiTexParameteriEXT = unsafePerformIO $ getCommand "glMultiTexParameteriEXT"

-- glMultiTexParameterivEXT ----------------------------------------------------

glMultiTexParameterivEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLenum -- ^ @pname@ of type [TextureParameterName](Graphics-GL-Groups.html#TextureParameterName).
  -> Ptr GLint -- ^ @params@ pointing to @COMPSIZE(pname)@ elements of type @CheckedInt32@.
  -> m ()
glMultiTexParameterivEXT v1 v2 v3 v4 = liftIO $ dyn331 ptr_glMultiTexParameterivEXT v1 v2 v3 v4

{-# NOINLINE ptr_glMultiTexParameterivEXT #-}
ptr_glMultiTexParameterivEXT :: FunPtr (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
ptr_glMultiTexParameterivEXT = unsafePerformIO $ getCommand "glMultiTexParameterivEXT"

-- glMultiTexRenderbufferEXT ---------------------------------------------------

glMultiTexRenderbufferEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLuint -- ^ @renderbuffer@.
  -> m ()
glMultiTexRenderbufferEXT v1 v2 v3 = liftIO $ dyn30 ptr_glMultiTexRenderbufferEXT v1 v2 v3

{-# NOINLINE ptr_glMultiTexRenderbufferEXT #-}
ptr_glMultiTexRenderbufferEXT :: FunPtr (GLenum -> GLenum -> GLuint -> IO ())
ptr_glMultiTexRenderbufferEXT = unsafePerformIO $ getCommand "glMultiTexRenderbufferEXT"

-- glMultiTexSubImage1DEXT -----------------------------------------------------

glMultiTexSubImage1DEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> GLint -- ^ @xoffset@ of type @CheckedInt32@.
  -> GLsizei -- ^ @width@.
  -> GLenum -- ^ @format@ of type [PixelFormat](Graphics-GL-Groups.html#PixelFormat).
  -> GLenum -- ^ @type@ of type [PixelType](Graphics-GL-Groups.html#PixelType).
  -> Ptr a -- ^ @pixels@ pointing to @COMPSIZE(format,type,width)@ elements of type @a@.
  -> m ()
glMultiTexSubImage1DEXT v1 v2 v3 v4 v5 v6 v7 v8 = liftIO $ dyn587 ptr_glMultiTexSubImage1DEXT v1 v2 v3 v4 v5 v6 v7 v8

{-# NOINLINE ptr_glMultiTexSubImage1DEXT #-}
ptr_glMultiTexSubImage1DEXT :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
ptr_glMultiTexSubImage1DEXT = unsafePerformIO $ getCommand "glMultiTexSubImage1DEXT"

-- glMultiTexSubImage2DEXT -----------------------------------------------------

glMultiTexSubImage2DEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> GLint -- ^ @xoffset@ of type @CheckedInt32@.
  -> GLint -- ^ @yoffset@ of type @CheckedInt32@.
  -> GLsizei -- ^ @width@.
  -> GLsizei -- ^ @height@.
  -> GLenum -- ^ @format@ of type [PixelFormat](Graphics-GL-Groups.html#PixelFormat).
  -> GLenum -- ^ @type@ of type [PixelType](Graphics-GL-Groups.html#PixelType).
  -> Ptr a -- ^ @pixels@ pointing to @COMPSIZE(format,type,width,height)@ elements of type @a@.
  -> m ()
glMultiTexSubImage2DEXT v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = liftIO $ dyn588 ptr_glMultiTexSubImage2DEXT v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

{-# NOINLINE ptr_glMultiTexSubImage2DEXT #-}
ptr_glMultiTexSubImage2DEXT :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
ptr_glMultiTexSubImage2DEXT = unsafePerformIO $ getCommand "glMultiTexSubImage2DEXT"

-- glMultiTexSubImage3DEXT -----------------------------------------------------

glMultiTexSubImage3DEXT
  :: MonadIO m
  => GLenum -- ^ @texunit@ of type [TextureUnit](Graphics-GL-Groups.html#TextureUnit).
  -> GLenum -- ^ @target@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> GLint -- ^ @xoffset@ of type @CheckedInt32@.
  -> GLint -- ^ @yoffset@ of type @CheckedInt32@.
  -> GLint -- ^ @zoffset@ of type @CheckedInt32@.
  -> GLsizei -- ^ @width@.
  -> GLsizei -- ^ @height@.
  -> GLsizei -- ^ @depth@.
  -> GLenum -- ^ @format@ of type [PixelFormat](Graphics-GL-Groups.html#PixelFormat).
  -> GLenum -- ^ @type@ of type [PixelType](Graphics-GL-Groups.html#PixelType).
  -> Ptr a -- ^ @pixels@ pointing to @COMPSIZE(format,type,width,height,depth)@ elements of type @a@.
  -> m ()
glMultiTexSubImage3DEXT v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = liftIO $ dyn589 ptr_glMultiTexSubImage3DEXT v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12

{-# NOINLINE ptr_glMultiTexSubImage3DEXT #-}
ptr_glMultiTexSubImage3DEXT :: FunPtr (GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
ptr_glMultiTexSubImage3DEXT = unsafePerformIO $ getCommand "glMultiTexSubImage3DEXT"

-- glMulticastBarrierNV --------------------------------------------------------

glMulticastBarrierNV
  :: MonadIO m
  => m ()
glMulticastBarrierNV = liftIO $ dyn11 ptr_glMulticastBarrierNV

{-# NOINLINE ptr_glMulticastBarrierNV #-}
ptr_glMulticastBarrierNV :: FunPtr (IO ())
ptr_glMulticastBarrierNV = unsafePerformIO $ getCommand "glMulticastBarrierNV"

-- glMulticastBlitFramebufferNV ------------------------------------------------

glMulticastBlitFramebufferNV
  :: MonadIO m
  => GLuint -- ^ @srcGpu@.
  -> GLuint -- ^ @dstGpu@.
  -> GLint -- ^ @srcX0@.
  -> GLint -- ^ @srcY0@.
  -> GLint -- ^ @srcX1@.
  -> GLint -- ^ @srcY1@.
  -> GLint -- ^ @dstX0@.
  -> GLint -- ^ @dstY0@.
  -> GLint -- ^ @dstX1@.
  -> GLint -- ^ @dstY1@.
  -> GLbitfield -- ^ @mask@ of type [ClearBufferMask](Graphics-GL-Groups.html#ClearBufferMask).
  -> GLenum -- ^ @filter@.
  -> m ()
glMulticastBlitFramebufferNV v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = liftIO $ dyn58 ptr_glMulticastBlitFramebufferNV v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12

{-# NOINLINE ptr_glMulticastBlitFramebufferNV #-}
ptr_glMulticastBlitFramebufferNV :: FunPtr (GLuint -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ())
ptr_glMulticastBlitFramebufferNV = unsafePerformIO $ getCommand "glMulticastBlitFramebufferNV"

-- glMulticastBufferSubDataNV --------------------------------------------------

glMulticastBufferSubDataNV
  :: MonadIO m
  => GLbitfield -- ^ @gpuMask@.
  -> GLuint -- ^ @buffer@.
  -> GLintptr -- ^ @offset@.
  -> GLsizeiptr -- ^ @size@.
  -> Ptr a -- ^ @data@.
  -> m ()
glMulticastBufferSubDataNV v1 v2 v3 v4 v5 = liftIO $ dyn503 ptr_glMulticastBufferSubDataNV v1 v2 v3 v4 v5

{-# NOINLINE ptr_glMulticastBufferSubDataNV #-}
ptr_glMulticastBufferSubDataNV :: FunPtr (GLbitfield -> GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO ())
ptr_glMulticastBufferSubDataNV = unsafePerformIO $ getCommand "glMulticastBufferSubDataNV"

-- glMulticastCopyBufferSubDataNV ----------------------------------------------

glMulticastCopyBufferSubDataNV
  :: MonadIO m
  => GLuint -- ^ @readGpu@.
  -> GLbitfield -- ^ @writeGpuMask@.
  -> GLuint -- ^ @readBuffer@.
  -> GLuint -- ^ @writeBuffer@.
  -> GLintptr -- ^ @readOffset@.
  -> GLintptr -- ^ @writeOffset@.
  -> GLsizeiptr -- ^ @size@.
  -> m ()
glMulticastCopyBufferSubDataNV v1 v2 v3 v4 v5 v6 v7 = liftIO $ dyn590 ptr_glMulticastCopyBufferSubDataNV v1 v2 v3 v4 v5 v6 v7

{-# NOINLINE ptr_glMulticastCopyBufferSubDataNV #-}
ptr_glMulticastCopyBufferSubDataNV :: FunPtr (GLuint -> GLbitfield -> GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizeiptr -> IO ())
ptr_glMulticastCopyBufferSubDataNV = unsafePerformIO $ getCommand "glMulticastCopyBufferSubDataNV"

-- glMulticastCopyImageSubDataNV -----------------------------------------------

glMulticastCopyImageSubDataNV
  :: MonadIO m
  => GLuint -- ^ @srcGpu@.
  -> GLbitfield -- ^ @dstGpuMask@.
  -> GLuint -- ^ @srcName@.
  -> GLenum -- ^ @srcTarget@.
  -> GLint -- ^ @srcLevel@.
  -> GLint -- ^ @srcX@.
  -> GLint -- ^ @srcY@.
  -> GLint -- ^ @srcZ@.
  -> GLuint -- ^ @dstName@.
  -> GLenum -- ^ @dstTarget@.
  -> GLint -- ^ @dstLevel@.
  -> GLint -- ^ @dstX@.
  -> GLint -- ^ @dstY@.
  -> GLint -- ^ @dstZ@.
  -> GLsizei -- ^ @srcWidth@.
  -> GLsizei -- ^ @srcHeight@.
  -> GLsizei -- ^ @srcDepth@.
  -> m ()
glMulticastCopyImageSubDataNV v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 = liftIO $ dyn502 ptr_glMulticastCopyImageSubDataNV v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17

{-# NOINLINE ptr_glMulticastCopyImageSubDataNV #-}
ptr_glMulticastCopyImageSubDataNV :: FunPtr (GLuint -> GLbitfield -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> IO ())
ptr_glMulticastCopyImageSubDataNV = unsafePerformIO $ getCommand "glMulticastCopyImageSubDataNV"

-- glMulticastFramebufferSampleLocationsfvNV -----------------------------------

glMulticastFramebufferSampleLocationsfvNV
  :: MonadIO m
  => GLuint -- ^ @gpu@.
  -> GLuint -- ^ @framebuffer@.
  -> GLuint -- ^ @start@.
  -> GLsizei -- ^ @count@.
  -> Ptr GLfloat -- ^ @v@.
  -> m ()
glMulticastFramebufferSampleLocationsfvNV v1 v2 v3 v4 v5 = liftIO $ dyn591 ptr_glMulticastFramebufferSampleLocationsfvNV v1 v2 v3 v4 v5

{-# NOINLINE ptr_glMulticastFramebufferSampleLocationsfvNV #-}
ptr_glMulticastFramebufferSampleLocationsfvNV :: FunPtr (GLuint -> GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
ptr_glMulticastFramebufferSampleLocationsfvNV = unsafePerformIO $ getCommand "glMulticastFramebufferSampleLocationsfvNV"

-- glMulticastGetQueryObjecti64vNV ---------------------------------------------

glMulticastGetQueryObjecti64vNV
  :: MonadIO m
  => GLuint -- ^ @gpu@.
  -> GLuint -- ^ @id@.
  -> GLenum -- ^ @pname@.
  -> Ptr GLint64 -- ^ @params@.
  -> m ()
glMulticastGetQueryObjecti64vNV v1 v2 v3 v4 = liftIO $ dyn454 ptr_glMulticastGetQueryObjecti64vNV v1 v2 v3 v4

{-# NOINLINE ptr_glMulticastGetQueryObjecti64vNV #-}
ptr_glMulticastGetQueryObjecti64vNV :: FunPtr (GLuint -> GLuint -> GLenum -> Ptr GLint64 -> IO ())
ptr_glMulticastGetQueryObjecti64vNV = unsafePerformIO $ getCommand "glMulticastGetQueryObjecti64vNV"

-- glMulticastGetQueryObjectivNV -----------------------------------------------

glMulticastGetQueryObjectivNV
  :: MonadIO m
  => GLuint -- ^ @gpu@.
  -> GLuint -- ^ @id@.
  -> GLenum -- ^ @pname@.
  -> Ptr GLint -- ^ @params@.
  -> m ()
glMulticastGetQueryObjectivNV v1 v2 v3 v4 = liftIO $ dyn310 ptr_glMulticastGetQueryObjectivNV v1 v2 v3 v4

{-# NOINLINE ptr_glMulticastGetQueryObjectivNV #-}
ptr_glMulticastGetQueryObjectivNV :: FunPtr (GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ())
ptr_glMulticastGetQueryObjectivNV = unsafePerformIO $ getCommand "glMulticastGetQueryObjectivNV"

-- glMulticastGetQueryObjectui64vNV --------------------------------------------

glMulticastGetQueryObjectui64vNV
  :: MonadIO m
  => GLuint -- ^ @gpu@.
  -> GLuint -- ^ @id@.
  -> GLenum -- ^ @pname@.
  -> Ptr GLuint64 -- ^ @params@.
  -> m ()
glMulticastGetQueryObjectui64vNV v1 v2 v3 v4 = liftIO $ dyn592 ptr_glMulticastGetQueryObjectui64vNV v1 v2 v3 v4

{-# NOINLINE ptr_glMulticastGetQueryObjectui64vNV #-}
ptr_glMulticastGetQueryObjectui64vNV :: FunPtr (GLuint -> GLuint -> GLenum -> Ptr GLuint64 -> IO ())
ptr_glMulticastGetQueryObjectui64vNV = unsafePerformIO $ getCommand "glMulticastGetQueryObjectui64vNV"

-- glMulticastGetQueryObjectuivNV ----------------------------------------------

glMulticastGetQueryObjectuivNV
  :: MonadIO m
  => GLuint -- ^ @gpu@.
  -> GLuint -- ^ @id@.
  -> GLenum -- ^ @pname@.
  -> Ptr GLuint -- ^ @params@.
  -> m ()
glMulticastGetQueryObjectuivNV v1 v2 v3 v4 = liftIO $ dyn593 ptr_glMulticastGetQueryObjectuivNV v1 v2 v3 v4

{-# NOINLINE ptr_glMulticastGetQueryObjectuivNV #-}
ptr_glMulticastGetQueryObjectuivNV :: FunPtr (GLuint -> GLuint -> GLenum -> Ptr GLuint -> IO ())
ptr_glMulticastGetQueryObjectuivNV = unsafePerformIO $ getCommand "glMulticastGetQueryObjectuivNV"

-- glMulticastWaitSyncNV -------------------------------------------------------

glMulticastWaitSyncNV
  :: MonadIO m
  => GLuint -- ^ @signalGpu@.
  -> GLbitfield -- ^ @waitGpuMask@.
  -> m ()
glMulticastWaitSyncNV v1 v2 = liftIO $ dyn594 ptr_glMulticastWaitSyncNV v1 v2

{-# NOINLINE ptr_glMulticastWaitSyncNV #-}
ptr_glMulticastWaitSyncNV :: FunPtr (GLuint -> GLbitfield -> IO ())
ptr_glMulticastWaitSyncNV = unsafePerformIO $ getCommand "glMulticastWaitSyncNV"

-- glNamedBufferData -----------------------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glBufferData.xhtml OpenGL 4.x>.
glNamedBufferData
  :: MonadIO m
  => GLuint -- ^ @buffer@.
  -> GLsizeiptr -- ^ @size@ of type @BufferSize@.
  -> Ptr a -- ^ @data@.
  -> GLenum -- ^ @usage@ of type [VertexBufferObjectUsage](Graphics-GL-Groups.html#VertexBufferObjectUsage).
  -> m ()
glNamedBufferData v1 v2 v3 v4 = liftIO $ dyn595 ptr_glNamedBufferData v1 v2 v3 v4

{-# NOINLINE ptr_glNamedBufferData #-}
ptr_glNamedBufferData :: FunPtr (GLuint -> GLsizeiptr -> Ptr a -> GLenum -> IO ())
ptr_glNamedBufferData = unsafePerformIO $ getCommand "glNamedBufferData"

-- glNamedBufferDataEXT --------------------------------------------------------

glNamedBufferDataEXT
  :: MonadIO m
  => GLuint -- ^ @buffer@.
  -> GLsizeiptr -- ^ @size@.
  -> Ptr a -- ^ @data@ pointing to @COMPSIZE(size)@ elements of type @a@.
  -> GLenum -- ^ @usage@ of type [VertexBufferObjectUsage](Graphics-GL-Groups.html#VertexBufferObjectUsage).
  -> m ()
glNamedBufferDataEXT v1 v2 v3 v4 = liftIO $ dyn595 ptr_glNamedBufferDataEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedBufferDataEXT #-}
ptr_glNamedBufferDataEXT :: FunPtr (GLuint -> GLsizeiptr -> Ptr a -> GLenum -> IO ())
ptr_glNamedBufferDataEXT = unsafePerformIO $ getCommand "glNamedBufferDataEXT"

-- glNamedBufferPageCommitmentARB ----------------------------------------------

glNamedBufferPageCommitmentARB
  :: MonadIO m
  => GLuint -- ^ @buffer@.
  -> GLintptr -- ^ @offset@.
  -> GLsizeiptr -- ^ @size@.
  -> GLboolean -- ^ @commit@.
  -> m ()
glNamedBufferPageCommitmentARB v1 v2 v3 v4 = liftIO $ dyn596 ptr_glNamedBufferPageCommitmentARB v1 v2 v3 v4

{-# NOINLINE ptr_glNamedBufferPageCommitmentARB #-}
ptr_glNamedBufferPageCommitmentARB :: FunPtr (GLuint -> GLintptr -> GLsizeiptr -> GLboolean -> IO ())
ptr_glNamedBufferPageCommitmentARB = unsafePerformIO $ getCommand "glNamedBufferPageCommitmentARB"

-- glNamedBufferPageCommitmentEXT ----------------------------------------------

glNamedBufferPageCommitmentEXT
  :: MonadIO m
  => GLuint -- ^ @buffer@.
  -> GLintptr -- ^ @offset@.
  -> GLsizeiptr -- ^ @size@.
  -> GLboolean -- ^ @commit@.
  -> m ()
glNamedBufferPageCommitmentEXT v1 v2 v3 v4 = liftIO $ dyn596 ptr_glNamedBufferPageCommitmentEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedBufferPageCommitmentEXT #-}
ptr_glNamedBufferPageCommitmentEXT :: FunPtr (GLuint -> GLintptr -> GLsizeiptr -> GLboolean -> IO ())
ptr_glNamedBufferPageCommitmentEXT = unsafePerformIO $ getCommand "glNamedBufferPageCommitmentEXT"

-- glNamedBufferStorage --------------------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glBufferStorage.xhtml OpenGL 4.x>.
glNamedBufferStorage
  :: MonadIO m
  => GLuint -- ^ @buffer@.
  -> GLsizeiptr -- ^ @size@ of type @BufferSize@.
  -> Ptr a -- ^ @data@ pointing to @size@ elements of type @a@.
  -> GLbitfield -- ^ @flags@ of type [MapBufferUsageMask](Graphics-GL-Groups.html#MapBufferUsageMask).
  -> m ()
glNamedBufferStorage v1 v2 v3 v4 = liftIO $ dyn597 ptr_glNamedBufferStorage v1 v2 v3 v4

{-# NOINLINE ptr_glNamedBufferStorage #-}
ptr_glNamedBufferStorage :: FunPtr (GLuint -> GLsizeiptr -> Ptr a -> GLbitfield -> IO ())
ptr_glNamedBufferStorage = unsafePerformIO $ getCommand "glNamedBufferStorage"

-- glNamedBufferStorageEXT -----------------------------------------------------

-- | This command is an alias for 'glNamedBufferStorage'.
glNamedBufferStorageEXT
  :: MonadIO m
  => GLuint -- ^ @buffer@.
  -> GLsizeiptr -- ^ @size@ of type @BufferSize@.
  -> Ptr a -- ^ @data@ pointing to @size@ elements of type @a@.
  -> GLbitfield -- ^ @flags@ of type [MapBufferUsageMask](Graphics-GL-Groups.html#MapBufferUsageMask).
  -> m ()
glNamedBufferStorageEXT v1 v2 v3 v4 = liftIO $ dyn597 ptr_glNamedBufferStorageEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedBufferStorageEXT #-}
ptr_glNamedBufferStorageEXT :: FunPtr (GLuint -> GLsizeiptr -> Ptr a -> GLbitfield -> IO ())
ptr_glNamedBufferStorageEXT = unsafePerformIO $ getCommand "glNamedBufferStorageEXT"

-- glNamedBufferStorageExternalEXT ---------------------------------------------

glNamedBufferStorageExternalEXT
  :: MonadIO m
  => GLuint -- ^ @buffer@.
  -> GLintptr -- ^ @offset@.
  -> GLsizeiptr -- ^ @size@.
  -> GLeglClientBufferEXT -- ^ @clientBuffer@.
  -> GLbitfield -- ^ @flags@ of type [MapBufferUsageMask](Graphics-GL-Groups.html#MapBufferUsageMask).
  -> m ()
glNamedBufferStorageExternalEXT v1 v2 v3 v4 v5 = liftIO $ dyn598 ptr_glNamedBufferStorageExternalEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedBufferStorageExternalEXT #-}
ptr_glNamedBufferStorageExternalEXT :: FunPtr (GLuint -> GLintptr -> GLsizeiptr -> GLeglClientBufferEXT -> GLbitfield -> IO ())
ptr_glNamedBufferStorageExternalEXT = unsafePerformIO $ getCommand "glNamedBufferStorageExternalEXT"

-- glNamedBufferStorageMemEXT --------------------------------------------------

glNamedBufferStorageMemEXT
  :: MonadIO m
  => GLuint -- ^ @buffer@.
  -> GLsizeiptr -- ^ @size@ of type @BufferSize@.
  -> GLuint -- ^ @memory@.
  -> GLuint64 -- ^ @offset@.
  -> m ()
glNamedBufferStorageMemEXT v1 v2 v3 v4 = liftIO $ dyn599 ptr_glNamedBufferStorageMemEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedBufferStorageMemEXT #-}
ptr_glNamedBufferStorageMemEXT :: FunPtr (GLuint -> GLsizeiptr -> GLuint -> GLuint64 -> IO ())
ptr_glNamedBufferStorageMemEXT = unsafePerformIO $ getCommand "glNamedBufferStorageMemEXT"

-- glNamedBufferSubData --------------------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glBufferSubData.xhtml OpenGL 4.x>.
glNamedBufferSubData
  :: MonadIO m
  => GLuint -- ^ @buffer@.
  -> GLintptr -- ^ @offset@.
  -> GLsizeiptr -- ^ @size@ of type @BufferSize@.
  -> Ptr a -- ^ @data@ pointing to @COMPSIZE(size)@ elements of type @a@.
  -> m ()
glNamedBufferSubData v1 v2 v3 v4 = liftIO $ dyn373 ptr_glNamedBufferSubData v1 v2 v3 v4

{-# NOINLINE ptr_glNamedBufferSubData #-}
ptr_glNamedBufferSubData :: FunPtr (GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO ())
ptr_glNamedBufferSubData = unsafePerformIO $ getCommand "glNamedBufferSubData"

-- glNamedBufferSubDataEXT -----------------------------------------------------

-- | This command is an alias for 'glNamedBufferSubData'.
glNamedBufferSubDataEXT
  :: MonadIO m
  => GLuint -- ^ @buffer@.
  -> GLintptr -- ^ @offset@.
  -> GLsizeiptr -- ^ @size@ of type @BufferSize@.
  -> Ptr a -- ^ @data@ pointing to @COMPSIZE(size)@ elements of type @a@.
  -> m ()
glNamedBufferSubDataEXT v1 v2 v3 v4 = liftIO $ dyn373 ptr_glNamedBufferSubDataEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedBufferSubDataEXT #-}
ptr_glNamedBufferSubDataEXT :: FunPtr (GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO ())
ptr_glNamedBufferSubDataEXT = unsafePerformIO $ getCommand "glNamedBufferSubDataEXT"

-- glNamedCopyBufferSubDataEXT -------------------------------------------------

glNamedCopyBufferSubDataEXT
  :: MonadIO m
  => GLuint -- ^ @readBuffer@.
  -> GLuint -- ^ @writeBuffer@.
  -> GLintptr -- ^ @readOffset@.
  -> GLintptr -- ^ @writeOffset@.
  -> GLsizeiptr -- ^ @size@.
  -> m ()
glNamedCopyBufferSubDataEXT v1 v2 v3 v4 v5 = liftIO $ dyn177 ptr_glNamedCopyBufferSubDataEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedCopyBufferSubDataEXT #-}
ptr_glNamedCopyBufferSubDataEXT :: FunPtr (GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizeiptr -> IO ())
ptr_glNamedCopyBufferSubDataEXT = unsafePerformIO $ getCommand "glNamedCopyBufferSubDataEXT"

-- glNamedFramebufferDrawBuffer ------------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glDrawBuffer.xhtml OpenGL 4.x>.
glNamedFramebufferDrawBuffer
  :: MonadIO m
  => GLuint -- ^ @framebuffer@.
  -> GLenum -- ^ @buf@ of type [ColorBuffer](Graphics-GL-Groups.html#ColorBuffer).
  -> m ()
glNamedFramebufferDrawBuffer v1 v2 = liftIO $ dyn16 ptr_glNamedFramebufferDrawBuffer v1 v2

{-# NOINLINE ptr_glNamedFramebufferDrawBuffer #-}
ptr_glNamedFramebufferDrawBuffer :: FunPtr (GLuint -> GLenum -> IO ())
ptr_glNamedFramebufferDrawBuffer = unsafePerformIO $ getCommand "glNamedFramebufferDrawBuffer"

-- glNamedFramebufferDrawBuffers -----------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glDrawBuffers.xhtml OpenGL 4.x>.
glNamedFramebufferDrawBuffers
  :: MonadIO m
  => GLuint -- ^ @framebuffer@.
  -> GLsizei -- ^ @n@.
  -> Ptr GLenum -- ^ @bufs@ pointing to elements of type [ColorBuffer](Graphics-GL-Groups.html#ColorBuffer).
  -> m ()
glNamedFramebufferDrawBuffers v1 v2 v3 = liftIO $ dyn289 ptr_glNamedFramebufferDrawBuffers v1 v2 v3

{-# NOINLINE ptr_glNamedFramebufferDrawBuffers #-}
ptr_glNamedFramebufferDrawBuffers :: FunPtr (GLuint -> GLsizei -> Ptr GLenum -> IO ())
ptr_glNamedFramebufferDrawBuffers = unsafePerformIO $ getCommand "glNamedFramebufferDrawBuffers"

-- glNamedFramebufferParameteri ------------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glFramebufferParameteri.xhtml OpenGL 4.x>.
glNamedFramebufferParameteri
  :: MonadIO m
  => GLuint -- ^ @framebuffer@.
  -> GLenum -- ^ @pname@ of type [FramebufferParameterName](Graphics-GL-Groups.html#FramebufferParameterName).
  -> GLint -- ^ @param@.
  -> m ()
glNamedFramebufferParameteri v1 v2 v3 = liftIO $ dyn484 ptr_glNamedFramebufferParameteri v1 v2 v3

{-# NOINLINE ptr_glNamedFramebufferParameteri #-}
ptr_glNamedFramebufferParameteri :: FunPtr (GLuint -> GLenum -> GLint -> IO ())
ptr_glNamedFramebufferParameteri = unsafePerformIO $ getCommand "glNamedFramebufferParameteri"

-- glNamedFramebufferParameteriEXT ---------------------------------------------

glNamedFramebufferParameteriEXT
  :: MonadIO m
  => GLuint -- ^ @framebuffer@ of type @Framebuffer@.
  -> GLenum -- ^ @pname@ of type [FramebufferParameterName](Graphics-GL-Groups.html#FramebufferParameterName).
  -> GLint -- ^ @param@.
  -> m ()
glNamedFramebufferParameteriEXT v1 v2 v3 = liftIO $ dyn484 ptr_glNamedFramebufferParameteriEXT v1 v2 v3

{-# NOINLINE ptr_glNamedFramebufferParameteriEXT #-}
ptr_glNamedFramebufferParameteriEXT :: FunPtr (GLuint -> GLenum -> GLint -> IO ())
ptr_glNamedFramebufferParameteriEXT = unsafePerformIO $ getCommand "glNamedFramebufferParameteriEXT"

-- glNamedFramebufferReadBuffer ------------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glReadBuffer.xhtml OpenGL 4.x>.
glNamedFramebufferReadBuffer
  :: MonadIO m
  => GLuint -- ^ @framebuffer@.
  -> GLenum -- ^ @src@ of type [ColorBuffer](Graphics-GL-Groups.html#ColorBuffer).
  -> m ()
glNamedFramebufferReadBuffer v1 v2 = liftIO $ dyn16 ptr_glNamedFramebufferReadBuffer v1 v2

{-# NOINLINE ptr_glNamedFramebufferReadBuffer #-}
ptr_glNamedFramebufferReadBuffer :: FunPtr (GLuint -> GLenum -> IO ())
ptr_glNamedFramebufferReadBuffer = unsafePerformIO $ getCommand "glNamedFramebufferReadBuffer"

-- glNamedFramebufferRenderbuffer ----------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glFramebufferRenderbuffer.xhtml OpenGL 4.x>.
glNamedFramebufferRenderbuffer
  :: MonadIO m
  => GLuint -- ^ @framebuffer@.
  -> GLenum -- ^ @attachment@ of type [FramebufferAttachment](Graphics-GL-Groups.html#FramebufferAttachment).
  -> GLenum -- ^ @renderbuffertarget@ of type [RenderbufferTarget](Graphics-GL-Groups.html#RenderbufferTarget).
  -> GLuint -- ^ @renderbuffer@.
  -> m ()
glNamedFramebufferRenderbuffer v1 v2 v3 v4 = liftIO $ dyn600 ptr_glNamedFramebufferRenderbuffer v1 v2 v3 v4

{-# NOINLINE ptr_glNamedFramebufferRenderbuffer #-}
ptr_glNamedFramebufferRenderbuffer :: FunPtr (GLuint -> GLenum -> GLenum -> GLuint -> IO ())
ptr_glNamedFramebufferRenderbuffer = unsafePerformIO $ getCommand "glNamedFramebufferRenderbuffer"

-- glNamedFramebufferRenderbufferEXT -------------------------------------------

glNamedFramebufferRenderbufferEXT
  :: MonadIO m
  => GLuint -- ^ @framebuffer@ of type @Framebuffer@.
  -> GLenum -- ^ @attachment@ of type [FramebufferAttachment](Graphics-GL-Groups.html#FramebufferAttachment).
  -> GLenum -- ^ @renderbuffertarget@ of type [RenderbufferTarget](Graphics-GL-Groups.html#RenderbufferTarget).
  -> GLuint -- ^ @renderbuffer@ of type @Renderbuffer@.
  -> m ()
glNamedFramebufferRenderbufferEXT v1 v2 v3 v4 = liftIO $ dyn600 ptr_glNamedFramebufferRenderbufferEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedFramebufferRenderbufferEXT #-}
ptr_glNamedFramebufferRenderbufferEXT :: FunPtr (GLuint -> GLenum -> GLenum -> GLuint -> IO ())
ptr_glNamedFramebufferRenderbufferEXT = unsafePerformIO $ getCommand "glNamedFramebufferRenderbufferEXT"

-- glNamedFramebufferSampleLocationsfvARB --------------------------------------

glNamedFramebufferSampleLocationsfvARB
  :: MonadIO m
  => GLuint -- ^ @framebuffer@.
  -> GLuint -- ^ @start@.
  -> GLsizei -- ^ @count@.
  -> Ptr GLfloat -- ^ @v@.
  -> m ()
glNamedFramebufferSampleLocationsfvARB v1 v2 v3 v4 = liftIO $ dyn601 ptr_glNamedFramebufferSampleLocationsfvARB v1 v2 v3 v4

{-# NOINLINE ptr_glNamedFramebufferSampleLocationsfvARB #-}
ptr_glNamedFramebufferSampleLocationsfvARB :: FunPtr (GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
ptr_glNamedFramebufferSampleLocationsfvARB = unsafePerformIO $ getCommand "glNamedFramebufferSampleLocationsfvARB"

-- glNamedFramebufferSampleLocationsfvNV ---------------------------------------

glNamedFramebufferSampleLocationsfvNV
  :: MonadIO m
  => GLuint -- ^ @framebuffer@.
  -> GLuint -- ^ @start@.
  -> GLsizei -- ^ @count@.
  -> Ptr GLfloat -- ^ @v@.
  -> m ()
glNamedFramebufferSampleLocationsfvNV v1 v2 v3 v4 = liftIO $ dyn601 ptr_glNamedFramebufferSampleLocationsfvNV v1 v2 v3 v4

{-# NOINLINE ptr_glNamedFramebufferSampleLocationsfvNV #-}
ptr_glNamedFramebufferSampleLocationsfvNV :: FunPtr (GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
ptr_glNamedFramebufferSampleLocationsfvNV = unsafePerformIO $ getCommand "glNamedFramebufferSampleLocationsfvNV"

-- glNamedFramebufferSamplePositionsfvAMD --------------------------------------

glNamedFramebufferSamplePositionsfvAMD
  :: MonadIO m
  => GLuint -- ^ @framebuffer@.
  -> GLuint -- ^ @numsamples@.
  -> GLuint -- ^ @pixelindex@.
  -> Ptr GLfloat -- ^ @values@.
  -> m ()
glNamedFramebufferSamplePositionsfvAMD v1 v2 v3 v4 = liftIO $ dyn602 ptr_glNamedFramebufferSamplePositionsfvAMD v1 v2 v3 v4

{-# NOINLINE ptr_glNamedFramebufferSamplePositionsfvAMD #-}
ptr_glNamedFramebufferSamplePositionsfvAMD :: FunPtr (GLuint -> GLuint -> GLuint -> Ptr GLfloat -> IO ())
ptr_glNamedFramebufferSamplePositionsfvAMD = unsafePerformIO $ getCommand "glNamedFramebufferSamplePositionsfvAMD"

-- glNamedFramebufferTexture ---------------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glFramebufferTexture.xhtml OpenGL 4.x>.
glNamedFramebufferTexture
  :: MonadIO m
  => GLuint -- ^ @framebuffer@.
  -> GLenum -- ^ @attachment@ of type [FramebufferAttachment](Graphics-GL-Groups.html#FramebufferAttachment).
  -> GLuint -- ^ @texture@.
  -> GLint -- ^ @level@.
  -> m ()
glNamedFramebufferTexture v1 v2 v3 v4 = liftIO $ dyn603 ptr_glNamedFramebufferTexture v1 v2 v3 v4

{-# NOINLINE ptr_glNamedFramebufferTexture #-}
ptr_glNamedFramebufferTexture :: FunPtr (GLuint -> GLenum -> GLuint -> GLint -> IO ())
ptr_glNamedFramebufferTexture = unsafePerformIO $ getCommand "glNamedFramebufferTexture"

-- glNamedFramebufferTexture1DEXT ----------------------------------------------

glNamedFramebufferTexture1DEXT
  :: MonadIO m
  => GLuint -- ^ @framebuffer@ of type @Framebuffer@.
  -> GLenum -- ^ @attachment@ of type [FramebufferAttachment](Graphics-GL-Groups.html#FramebufferAttachment).
  -> GLenum -- ^ @textarget@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLuint -- ^ @texture@ of type @Texture@.
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> m ()
glNamedFramebufferTexture1DEXT v1 v2 v3 v4 v5 = liftIO $ dyn604 ptr_glNamedFramebufferTexture1DEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedFramebufferTexture1DEXT #-}
ptr_glNamedFramebufferTexture1DEXT :: FunPtr (GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
ptr_glNamedFramebufferTexture1DEXT = unsafePerformIO $ getCommand "glNamedFramebufferTexture1DEXT"

-- glNamedFramebufferTexture2DEXT ----------------------------------------------

glNamedFramebufferTexture2DEXT
  :: MonadIO m
  => GLuint -- ^ @framebuffer@ of type @Framebuffer@.
  -> GLenum -- ^ @attachment@ of type [FramebufferAttachment](Graphics-GL-Groups.html#FramebufferAttachment).
  -> GLenum -- ^ @textarget@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLuint -- ^ @texture@ of type @Texture@.
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> m ()
glNamedFramebufferTexture2DEXT v1 v2 v3 v4 v5 = liftIO $ dyn604 ptr_glNamedFramebufferTexture2DEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedFramebufferTexture2DEXT #-}
ptr_glNamedFramebufferTexture2DEXT :: FunPtr (GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
ptr_glNamedFramebufferTexture2DEXT = unsafePerformIO $ getCommand "glNamedFramebufferTexture2DEXT"

-- glNamedFramebufferTexture3DEXT ----------------------------------------------

glNamedFramebufferTexture3DEXT
  :: MonadIO m
  => GLuint -- ^ @framebuffer@ of type @Framebuffer@.
  -> GLenum -- ^ @attachment@ of type [FramebufferAttachment](Graphics-GL-Groups.html#FramebufferAttachment).
  -> GLenum -- ^ @textarget@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> GLuint -- ^ @texture@ of type @Texture@.
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> GLint -- ^ @zoffset@ of type @CheckedInt32@.
  -> m ()
glNamedFramebufferTexture3DEXT v1 v2 v3 v4 v5 v6 = liftIO $ dyn605 ptr_glNamedFramebufferTexture3DEXT v1 v2 v3 v4 v5 v6

{-# NOINLINE ptr_glNamedFramebufferTexture3DEXT #-}
ptr_glNamedFramebufferTexture3DEXT :: FunPtr (GLuint -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ())
ptr_glNamedFramebufferTexture3DEXT = unsafePerformIO $ getCommand "glNamedFramebufferTexture3DEXT"

-- glNamedFramebufferTextureEXT ------------------------------------------------

glNamedFramebufferTextureEXT
  :: MonadIO m
  => GLuint -- ^ @framebuffer@ of type @Framebuffer@.
  -> GLenum -- ^ @attachment@ of type [FramebufferAttachment](Graphics-GL-Groups.html#FramebufferAttachment).
  -> GLuint -- ^ @texture@ of type @Texture@.
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> m ()
glNamedFramebufferTextureEXT v1 v2 v3 v4 = liftIO $ dyn603 ptr_glNamedFramebufferTextureEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedFramebufferTextureEXT #-}
ptr_glNamedFramebufferTextureEXT :: FunPtr (GLuint -> GLenum -> GLuint -> GLint -> IO ())
ptr_glNamedFramebufferTextureEXT = unsafePerformIO $ getCommand "glNamedFramebufferTextureEXT"

-- glNamedFramebufferTextureFaceEXT --------------------------------------------

glNamedFramebufferTextureFaceEXT
  :: MonadIO m
  => GLuint -- ^ @framebuffer@ of type @Framebuffer@.
  -> GLenum -- ^ @attachment@ of type [FramebufferAttachment](Graphics-GL-Groups.html#FramebufferAttachment).
  -> GLuint -- ^ @texture@ of type @Texture@.
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> GLenum -- ^ @face@ of type [TextureTarget](Graphics-GL-Groups.html#TextureTarget).
  -> m ()
glNamedFramebufferTextureFaceEXT v1 v2 v3 v4 v5 = liftIO $ dyn606 ptr_glNamedFramebufferTextureFaceEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedFramebufferTextureFaceEXT #-}
ptr_glNamedFramebufferTextureFaceEXT :: FunPtr (GLuint -> GLenum -> GLuint -> GLint -> GLenum -> IO ())
ptr_glNamedFramebufferTextureFaceEXT = unsafePerformIO $ getCommand "glNamedFramebufferTextureFaceEXT"

-- glNamedFramebufferTextureLayer ----------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glFramebufferTextureLayer.xhtml OpenGL 4.x>.
glNamedFramebufferTextureLayer
  :: MonadIO m
  => GLuint -- ^ @framebuffer@.
  -> GLenum -- ^ @attachment@ of type [FramebufferAttachment](Graphics-GL-Groups.html#FramebufferAttachment).
  -> GLuint -- ^ @texture@.
  -> GLint -- ^ @level@.
  -> GLint -- ^ @layer@.
  -> m ()
glNamedFramebufferTextureLayer v1 v2 v3 v4 v5 = liftIO $ dyn607 ptr_glNamedFramebufferTextureLayer v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedFramebufferTextureLayer #-}
ptr_glNamedFramebufferTextureLayer :: FunPtr (GLuint -> GLenum -> GLuint -> GLint -> GLint -> IO ())
ptr_glNamedFramebufferTextureLayer = unsafePerformIO $ getCommand "glNamedFramebufferTextureLayer"

-- glNamedFramebufferTextureLayerEXT -------------------------------------------

glNamedFramebufferTextureLayerEXT
  :: MonadIO m
  => GLuint -- ^ @framebuffer@ of type @Framebuffer@.
  -> GLenum -- ^ @attachment@ of type [FramebufferAttachment](Graphics-GL-Groups.html#FramebufferAttachment).
  -> GLuint -- ^ @texture@ of type @Texture@.
  -> GLint -- ^ @level@ of type @CheckedInt32@.
  -> GLint -- ^ @layer@ of type @CheckedInt32@.
  -> m ()
glNamedFramebufferTextureLayerEXT v1 v2 v3 v4 v5 = liftIO $ dyn607 ptr_glNamedFramebufferTextureLayerEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedFramebufferTextureLayerEXT #-}
ptr_glNamedFramebufferTextureLayerEXT :: FunPtr (GLuint -> GLenum -> GLuint -> GLint -> GLint -> IO ())
ptr_glNamedFramebufferTextureLayerEXT = unsafePerformIO $ getCommand "glNamedFramebufferTextureLayerEXT"

-- glNamedProgramLocalParameter4dEXT -------------------------------------------

-- | The vector equivalent of this command is 'glNamedProgramLocalParameter4dvEXT'.
glNamedProgramLocalParameter4dEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLuint -- ^ @index@.
  -> GLdouble -- ^ @x@.
  -> GLdouble -- ^ @y@.
  -> GLdouble -- ^ @z@.
  -> GLdouble -- ^ @w@.
  -> m ()
glNamedProgramLocalParameter4dEXT v1 v2 v3 v4 v5 v6 v7 = liftIO $ dyn608 ptr_glNamedProgramLocalParameter4dEXT v1 v2 v3 v4 v5 v6 v7

{-# NOINLINE ptr_glNamedProgramLocalParameter4dEXT #-}
ptr_glNamedProgramLocalParameter4dEXT :: FunPtr (GLuint -> GLenum -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
ptr_glNamedProgramLocalParameter4dEXT = unsafePerformIO $ getCommand "glNamedProgramLocalParameter4dEXT"

-- glNamedProgramLocalParameter4dvEXT ------------------------------------------

glNamedProgramLocalParameter4dvEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLuint -- ^ @index@.
  -> Ptr GLdouble -- ^ @params@ pointing to @4@ elements of type @GLdouble@.
  -> m ()
glNamedProgramLocalParameter4dvEXT v1 v2 v3 v4 = liftIO $ dyn378 ptr_glNamedProgramLocalParameter4dvEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedProgramLocalParameter4dvEXT #-}
ptr_glNamedProgramLocalParameter4dvEXT :: FunPtr (GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO ())
ptr_glNamedProgramLocalParameter4dvEXT = unsafePerformIO $ getCommand "glNamedProgramLocalParameter4dvEXT"

-- glNamedProgramLocalParameter4fEXT -------------------------------------------

-- | The vector equivalent of this command is 'glNamedProgramLocalParameter4fvEXT'.
glNamedProgramLocalParameter4fEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLuint -- ^ @index@.
  -> GLfloat -- ^ @x@.
  -> GLfloat -- ^ @y@.
  -> GLfloat -- ^ @z@.
  -> GLfloat -- ^ @w@.
  -> m ()
glNamedProgramLocalParameter4fEXT v1 v2 v3 v4 v5 v6 v7 = liftIO $ dyn609 ptr_glNamedProgramLocalParameter4fEXT v1 v2 v3 v4 v5 v6 v7

{-# NOINLINE ptr_glNamedProgramLocalParameter4fEXT #-}
ptr_glNamedProgramLocalParameter4fEXT :: FunPtr (GLuint -> GLenum -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
ptr_glNamedProgramLocalParameter4fEXT = unsafePerformIO $ getCommand "glNamedProgramLocalParameter4fEXT"

-- glNamedProgramLocalParameter4fvEXT ------------------------------------------

glNamedProgramLocalParameter4fvEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLuint -- ^ @index@.
  -> Ptr GLfloat -- ^ @params@ pointing to @4@ elements of type @GLfloat@.
  -> m ()
glNamedProgramLocalParameter4fvEXT v1 v2 v3 v4 = liftIO $ dyn379 ptr_glNamedProgramLocalParameter4fvEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedProgramLocalParameter4fvEXT #-}
ptr_glNamedProgramLocalParameter4fvEXT :: FunPtr (GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO ())
ptr_glNamedProgramLocalParameter4fvEXT = unsafePerformIO $ getCommand "glNamedProgramLocalParameter4fvEXT"

-- glNamedProgramLocalParameterI4iEXT ------------------------------------------

-- | The vector equivalent of this command is 'glNamedProgramLocalParameterI4ivEXT'.
glNamedProgramLocalParameterI4iEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLuint -- ^ @index@.
  -> GLint -- ^ @x@.
  -> GLint -- ^ @y@.
  -> GLint -- ^ @z@.
  -> GLint -- ^ @w@.
  -> m ()
glNamedProgramLocalParameterI4iEXT v1 v2 v3 v4 v5 v6 v7 = liftIO $ dyn610 ptr_glNamedProgramLocalParameterI4iEXT v1 v2 v3 v4 v5 v6 v7

{-# NOINLINE ptr_glNamedProgramLocalParameterI4iEXT #-}
ptr_glNamedProgramLocalParameterI4iEXT :: FunPtr (GLuint -> GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
ptr_glNamedProgramLocalParameterI4iEXT = unsafePerformIO $ getCommand "glNamedProgramLocalParameterI4iEXT"

-- glNamedProgramLocalParameterI4ivEXT -----------------------------------------

glNamedProgramLocalParameterI4ivEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLuint -- ^ @index@.
  -> Ptr GLint -- ^ @params@ pointing to @4@ elements of type @GLint@.
  -> m ()
glNamedProgramLocalParameterI4ivEXT v1 v2 v3 v4 = liftIO $ dyn376 ptr_glNamedProgramLocalParameterI4ivEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedProgramLocalParameterI4ivEXT #-}
ptr_glNamedProgramLocalParameterI4ivEXT :: FunPtr (GLuint -> GLenum -> GLuint -> Ptr GLint -> IO ())
ptr_glNamedProgramLocalParameterI4ivEXT = unsafePerformIO $ getCommand "glNamedProgramLocalParameterI4ivEXT"

-- glNamedProgramLocalParameterI4uiEXT -----------------------------------------

-- | The vector equivalent of this command is 'glNamedProgramLocalParameterI4uivEXT'.
glNamedProgramLocalParameterI4uiEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLuint -- ^ @index@.
  -> GLuint -- ^ @x@.
  -> GLuint -- ^ @y@.
  -> GLuint -- ^ @z@.
  -> GLuint -- ^ @w@.
  -> m ()
glNamedProgramLocalParameterI4uiEXT v1 v2 v3 v4 v5 v6 v7 = liftIO $ dyn611 ptr_glNamedProgramLocalParameterI4uiEXT v1 v2 v3 v4 v5 v6 v7

{-# NOINLINE ptr_glNamedProgramLocalParameterI4uiEXT #-}
ptr_glNamedProgramLocalParameterI4uiEXT :: FunPtr (GLuint -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
ptr_glNamedProgramLocalParameterI4uiEXT = unsafePerformIO $ getCommand "glNamedProgramLocalParameterI4uiEXT"

-- glNamedProgramLocalParameterI4uivEXT ----------------------------------------

glNamedProgramLocalParameterI4uivEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLuint -- ^ @index@.
  -> Ptr GLuint -- ^ @params@ pointing to @4@ elements of type @GLuint@.
  -> m ()
glNamedProgramLocalParameterI4uivEXT v1 v2 v3 v4 = liftIO $ dyn377 ptr_glNamedProgramLocalParameterI4uivEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedProgramLocalParameterI4uivEXT #-}
ptr_glNamedProgramLocalParameterI4uivEXT :: FunPtr (GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO ())
ptr_glNamedProgramLocalParameterI4uivEXT = unsafePerformIO $ getCommand "glNamedProgramLocalParameterI4uivEXT"

-- glNamedProgramLocalParameters4fvEXT -----------------------------------------

glNamedProgramLocalParameters4fvEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLuint -- ^ @index@.
  -> GLsizei -- ^ @count@.
  -> Ptr GLfloat -- ^ @params@ pointing to @count*4@ elements of type @GLfloat@.
  -> m ()
glNamedProgramLocalParameters4fvEXT v1 v2 v3 v4 v5 = liftIO $ dyn612 ptr_glNamedProgramLocalParameters4fvEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedProgramLocalParameters4fvEXT #-}
ptr_glNamedProgramLocalParameters4fvEXT :: FunPtr (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
ptr_glNamedProgramLocalParameters4fvEXT = unsafePerformIO $ getCommand "glNamedProgramLocalParameters4fvEXT"

-- glNamedProgramLocalParametersI4ivEXT ----------------------------------------

glNamedProgramLocalParametersI4ivEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLuint -- ^ @index@.
  -> GLsizei -- ^ @count@.
  -> Ptr GLint -- ^ @params@ pointing to @count*4@ elements of type @GLint@.
  -> m ()
glNamedProgramLocalParametersI4ivEXT v1 v2 v3 v4 v5 = liftIO $ dyn613 ptr_glNamedProgramLocalParametersI4ivEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedProgramLocalParametersI4ivEXT #-}
ptr_glNamedProgramLocalParametersI4ivEXT :: FunPtr (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ())
ptr_glNamedProgramLocalParametersI4ivEXT = unsafePerformIO $ getCommand "glNamedProgramLocalParametersI4ivEXT"

-- glNamedProgramLocalParametersI4uivEXT ---------------------------------------

glNamedProgramLocalParametersI4uivEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLuint -- ^ @index@.
  -> GLsizei -- ^ @count@.
  -> Ptr GLuint -- ^ @params@ pointing to @count*4@ elements of type @GLuint@.
  -> m ()
glNamedProgramLocalParametersI4uivEXT v1 v2 v3 v4 v5 = liftIO $ dyn614 ptr_glNamedProgramLocalParametersI4uivEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedProgramLocalParametersI4uivEXT #-}
ptr_glNamedProgramLocalParametersI4uivEXT :: FunPtr (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ())
ptr_glNamedProgramLocalParametersI4uivEXT = unsafePerformIO $ getCommand "glNamedProgramLocalParametersI4uivEXT"

-- glNamedProgramStringEXT -----------------------------------------------------

glNamedProgramStringEXT
  :: MonadIO m
  => GLuint -- ^ @program@.
  -> GLenum -- ^ @target@ of type @ProgramTarget@.
  -> GLenum -- ^ @format@ of type @ProgramFormat@.
  -> GLsizei -- ^ @len@.
  -> Ptr a -- ^ @string@ pointing to @len@ elements of type @a@.
  -> m ()
glNamedProgramStringEXT v1 v2 v3 v4 v5 = liftIO $ dyn615 ptr_glNamedProgramStringEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedProgramStringEXT #-}
ptr_glNamedProgramStringEXT :: FunPtr (GLuint -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
ptr_glNamedProgramStringEXT = unsafePerformIO $ getCommand "glNamedProgramStringEXT"

-- glNamedRenderbufferStorage --------------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glRenderbufferStorage.xhtml OpenGL 4.x>.
glNamedRenderbufferStorage
  :: MonadIO m
  => GLuint -- ^ @renderbuffer@.
  -> GLenum -- ^ @internalformat@ of type [InternalFormat](Graphics-GL-Groups.html#InternalFormat).
  -> GLsizei -- ^ @width@.
  -> GLsizei -- ^ @height@.
  -> m ()
glNamedRenderbufferStorage v1 v2 v3 v4 = liftIO $ dyn616 ptr_glNamedRenderbufferStorage v1 v2 v3 v4

{-# NOINLINE ptr_glNamedRenderbufferStorage #-}
ptr_glNamedRenderbufferStorage :: FunPtr (GLuint -> GLenum -> GLsizei -> GLsizei -> IO ())
ptr_glNamedRenderbufferStorage = unsafePerformIO $ getCommand "glNamedRenderbufferStorage"

-- glNamedRenderbufferStorageEXT -----------------------------------------------

glNamedRenderbufferStorageEXT
  :: MonadIO m
  => GLuint -- ^ @renderbuffer@ of type @Renderbuffer@.
  -> GLenum -- ^ @internalformat@ of type [InternalFormat](Graphics-GL-Groups.html#InternalFormat).
  -> GLsizei -- ^ @width@.
  -> GLsizei -- ^ @height@.
  -> m ()
glNamedRenderbufferStorageEXT v1 v2 v3 v4 = liftIO $ dyn616 ptr_glNamedRenderbufferStorageEXT v1 v2 v3 v4

{-# NOINLINE ptr_glNamedRenderbufferStorageEXT #-}
ptr_glNamedRenderbufferStorageEXT :: FunPtr (GLuint -> GLenum -> GLsizei -> GLsizei -> IO ())
ptr_glNamedRenderbufferStorageEXT = unsafePerformIO $ getCommand "glNamedRenderbufferStorageEXT"

-- glNamedRenderbufferStorageMultisample ---------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man4/html/glRenderbufferStorageMultisample.xhtml OpenGL 4.x>.
glNamedRenderbufferStorageMultisample
  :: MonadIO m
  => GLuint -- ^ @renderbuffer@.
  -> GLsizei -- ^ @samples@.
  -> GLenum -- ^ @internalformat@ of type [InternalFormat](Graphics-GL-Groups.html#InternalFormat).
  -> GLsizei -- ^ @width@.
  -> GLsizei -- ^ @height@.
  -> m ()
glNamedRenderbufferStorageMultisample v1 v2 v3 v4 v5 = liftIO $ dyn617 ptr_glNamedRenderbufferStorageMultisample v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedRenderbufferStorageMultisample #-}
ptr_glNamedRenderbufferStorageMultisample :: FunPtr (GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
ptr_glNamedRenderbufferStorageMultisample = unsafePerformIO $ getCommand "glNamedRenderbufferStorageMultisample"

-- glNamedRenderbufferStorageMultisampleCoverageEXT ----------------------------

glNamedRenderbufferStorageMultisampleCoverageEXT
  :: MonadIO m
  => GLuint -- ^ @renderbuffer@ of type @Renderbuffer@.
  -> GLsizei -- ^ @coverageSamples@.
  -> GLsizei -- ^ @colorSamples@.
  -> GLenum -- ^ @internalformat@ of type [InternalFormat](Graphics-GL-Groups.html#InternalFormat).
  -> GLsizei -- ^ @width@.
  -> GLsizei -- ^ @height@.
  -> m ()
glNamedRenderbufferStorageMultisampleCoverageEXT v1 v2 v3 v4 v5 v6 = liftIO $ dyn618 ptr_glNamedRenderbufferStorageMultisampleCoverageEXT v1 v2 v3 v4 v5 v6

{-# NOINLINE ptr_glNamedRenderbufferStorageMultisampleCoverageEXT #-}
ptr_glNamedRenderbufferStorageMultisampleCoverageEXT :: FunPtr (GLuint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
ptr_glNamedRenderbufferStorageMultisampleCoverageEXT = unsafePerformIO $ getCommand "glNamedRenderbufferStorageMultisampleCoverageEXT"

-- glNamedRenderbufferStorageMultisampleEXT ------------------------------------

glNamedRenderbufferStorageMultisampleEXT
  :: MonadIO m
  => GLuint -- ^ @renderbuffer@ of type @Renderbuffer@.
  -> GLsizei -- ^ @samples@.
  -> GLenum -- ^ @internalformat@ of type [InternalFormat](Graphics-GL-Groups.html#InternalFormat).
  -> GLsizei -- ^ @width@.
  -> GLsizei -- ^ @height@.
  -> m ()
glNamedRenderbufferStorageMultisampleEXT v1 v2 v3 v4 v5 = liftIO $ dyn617 ptr_glNamedRenderbufferStorageMultisampleEXT v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedRenderbufferStorageMultisampleEXT #-}
ptr_glNamedRenderbufferStorageMultisampleEXT :: FunPtr (GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
ptr_glNamedRenderbufferStorageMultisampleEXT = unsafePerformIO $ getCommand "glNamedRenderbufferStorageMultisampleEXT"

-- glNamedStringARB ------------------------------------------------------------

glNamedStringARB
  :: MonadIO m
  => GLenum -- ^ @type@.
  -> GLint -- ^ @namelen@.
  -> Ptr GLchar -- ^ @name@ pointing to @namelen@ elements of type @GLchar@.
  -> GLint -- ^ @stringlen@.
  -> Ptr GLchar -- ^ @string@ pointing to @stringlen@ elements of type @GLchar@.
  -> m ()
glNamedStringARB v1 v2 v3 v4 v5 = liftIO $ dyn619 ptr_glNamedStringARB v1 v2 v3 v4 v5

{-# NOINLINE ptr_glNamedStringARB #-}
ptr_glNamedStringARB :: FunPtr (GLenum -> GLint -> Ptr GLchar -> GLint -> Ptr GLchar -> IO ())
ptr_glNamedStringARB = unsafePerformIO $ getCommand "glNamedStringARB"

-- glNewList -------------------------------------------------------------------

-- | Manual page for <https://www.opengl.org/sdk/docs/man2/xhtml/glNewList.xml OpenGL 2.x>.
glNewList
  :: MonadIO m
  => GLuint -- ^ @list@ of type @List@.
  -> GLenum -- ^ @mode@ of type [ListMode](Graphics-GL-Groups.html#ListMode).
  -> m ()
glNewList v1 v2 = liftIO $ dyn16 ptr_glNewList v1 v2

{-# NOINLINE ptr_glNewList #-}
ptr_glNewList :: FunPtr (GLuint -> GLenum -> IO ())
ptr_glNewList = unsafePerformIO $ getCommand "glNewList"

-- glNewObjectBufferATI --------------------------------------------------------

glNewObjectBufferATI
  :: MonadIO m
  => GLsizei -- ^ @size@.
  -> Ptr a -- ^ @pointer@ pointing to @size@ elements of type @a@.
  -> GLenum -- ^ @usage@ of type @ArrayObjectUsageATI@.
  -> m GLuint
glNewObjectBufferATI v1 v2 v3 = liftIO $ dyn620 ptr_glNewObjectBufferATI v1 v2 v3

{-# NOINLINE ptr_glNewObjectBufferATI #-}
ptr_glNewObjectBufferATI :: FunPtr (GLsizei -> Ptr a -> GLenum -> IO GLuint)
ptr_glNewObjectBufferATI = unsafePerformIO $ getCommand "glNewObjectBufferATI"
