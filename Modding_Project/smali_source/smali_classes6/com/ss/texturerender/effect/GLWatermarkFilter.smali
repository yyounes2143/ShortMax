.class public Lcom/ss/texturerender/effect/GLWatermarkFilter;
.super Lcom/ss/texturerender/effect/GLDefaultFilter;
.source "GLWatermarkFilter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLWatermarkFilter"


# instance fields
.field private final fragmentDefaultShader:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mTexture:Lcom/ss/texturerender/effect/EffectTexture;

.field private mVideoStyle:I

.field private mVideoStyleLoc:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform int videoStyle;\nvoid main() {\n  vec2 uv = vTextureCoord;\n  if(videoStyle == 3) {\n    if (uv.y <= 0.5) {\n      uv.y = uv.y * 2.0;\n    } else {\n      uv.y = (uv.y - 0.5) * 2.0;\n    }\n  } else if(videoStyle == 4) {\n    if (uv.x <= 0.5) {\n      uv.x = uv.x * 2.0;\n    } else {\n      uv.x = (uv.x - 0.5) * 2.0;\n    }\n  }\n  gl_FragColor = texture2D(sTexture, uv);\n}\n"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->fragmentDefaultShader:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mVideoStyle:I

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mVideoStyleLoc:I

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    .line 18
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 19
    .line 20
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "new GLWatermarkFilter,this:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "TR_GLWatermarkFilter"

    .line 40
    .line 41
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private getFlipBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 13
    .line 14
    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    const/high16 v1, -0x40800000    # -1.0f

    .line 18
    .line 19
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v7, 0x1

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v1, p1

    .line 34
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x2af9

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getStringOption(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform int videoStyle;\nvoid main() {\n  vec2 uv = vTextureCoord;\n  if(videoStyle == 3) {\n    if (uv.y <= 0.5) {\n      uv.y = uv.y * 2.0;\n    } else {\n      uv.y = (uv.y - 0.5) * 2.0;\n    }\n  } else if(videoStyle == 4) {\n    if (uv.x <= 0.5) {\n      uv.x = uv.x * 2.0;\n    } else {\n      uv.x = (uv.x - 0.5) * 2.0;\n    }\n  }\n  gl_FragColor = texture2D(sTexture, uv);\n}\n"

    .line 11
    .line 12
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->init(Landroid/os/Bundle;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 10
    .line 11
    const-string/jumbo v1, "videoStyle"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mVideoStyleLoc:I

    .line 19
    .line 20
    const-string/jumbo v0, "video_style"

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mVideoStyle:I

    .line 29
    .line 30
    const-string/jumbo v0, "watermark_bitmap"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/graphics/Bitmap;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/ss/texturerender/effect/GLWatermarkFilter;->getFlipBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mNeedClear:Z

    .line 52
    .line 53
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "GLWatermarkFilter init,this:"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "TR_GLWatermarkFilter"

    .line 73
    .line 74
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return p1
.end method

.method public onDrawFrameAfter()I
    .locals 1

    .line 1
    const/16 v0, 0xbe2

    .line 2
    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public onDrawFrameBefore()I
    .locals 3

    .line 1
    const/16 v0, 0xbe2

    .line 2
    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/16 v1, 0x303

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mVideoStyleLoc:I

    .line 13
    .line 14
    iget v1, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mVideoStyle:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mBitmap:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/16 v2, 0xde1

    .line 25
    .line 26
    invoke-static {v2, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return v1
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2, v0}, Lcom/ss/texturerender/effect/FrameBuffer;->bindTexture2D(I)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Lcom/ss/texturerender/effect/EffectTexture;

    .line 29
    .line 30
    const/16 v1, 0xde1

    .line 31
    .line 32
    invoke-static {v1}, Lcom/ss/texturerender/TexGLUtils;->genTexture(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v5, 0x0

    .line 37
    const/16 v6, 0xde1

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    move-object v1, v0

    .line 42
    invoke-direct/range {v1 .. v6}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-super {p0, v0, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    .line 62
    :cond_2
    if-eqz p2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/ss/texturerender/effect/FrameBuffer;->unbindTexture2D()V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-object p1
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/ss/texturerender/TexGLUtils;->deleteTexture(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public setOption(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 4
    .line 5
    const-string v1, "effect_type"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "setOption:"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ",this:"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "TR_GLWatermarkFilter"

    .line 46
    .line 47
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "action"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v1, 0x16

    .line 57
    .line 58
    if-eq v0, v1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLWatermarkFilter;->mBitmap:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    .line 67
    .line 68
    :cond_1
    const-string/jumbo v0, "watermark_bitmap"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/graphics/Bitmap;

    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/ss/texturerender/effect/GLWatermarkFilter;->getFlipBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method
