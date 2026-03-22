.class public Lcom/ss/texturerender/effect/GLOesTo2DFilter;
.super Lcom/ss/texturerender/effect/GLDefaultFilter;
.source "GLOesTo2DFilter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLOesTo2DFilter"


# instance fields
.field private mSTMatrix:[F

.field private muSTMatrixHandle:I

.field private final oesFragmentShader:Ljava/lang/String;

.field private final oesVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(II)V

    .line 3
    .line 4
    .line 5
    const-string/jumbo p1, "uniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLOesTo2DFilter;->oesVertexShader:Ljava/lang/String;

    .line 9
    .line 10
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLOesTo2DFilter;->oesFragmentShader:Ljava/lang/String;

    .line 13
    .line 14
    const/16 p1, 0x10

    .line 15
    .line 16
    new-array p1, p1, [F

    .line 17
    .line 18
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLOesTo2DFilter;->mSTMatrix:[F

    .line 19
    .line 20
    const p1, 0x8d65

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 24
    .line 25
    const/16 p1, 0x64

    .line 26
    .line 27
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 28
    .line 29
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 30
    .line 31
    const-string v0, "TR_GLOesTo2DFilter"

    .line 32
    .line 33
    const-string v1, "new GLOesTo2DFilter"

    .line 34
    .line 35
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x2af8

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x2af9

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getStringOption(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    const-string/jumbo p1, "uniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 18
    .line 19
    .line 20
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
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 12
    .line 13
    const-string/jumbo v1, "super.init(bundle) != TR_OK"

    .line 14
    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    return p1

    .line 23
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 24
    .line 25
    const-string/jumbo v1, "uSTMatrix"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/ss/texturerender/effect/GLOesTo2DFilter;->muSTMatrixHandle:I

    .line 33
    .line 34
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 35
    .line 36
    const-string v1, "TR_GLOesTo2DFilter"

    .line 37
    .line 38
    const-string v2, "init"

    .line 39
    .line 40
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    return p1
.end method

.method public onDrawFrameBefore()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLOesTo2DFilter;->mSTMatrix:[F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTransformMatrix([F)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/ss/texturerender/effect/GLOesTo2DFilter;->muSTMatrixHandle:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLOesTo2DFilter;->mSTMatrix:[F

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 15
    .line 16
    .line 17
    return v3
.end method
