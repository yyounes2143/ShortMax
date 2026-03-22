.class public Lcom/ss/texturerender/TexGLUtils;
.super Ljava/lang/Object;
.source "TexGLUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GLUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static checkGLError(ILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, ": gl error = "

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "GLUtils"

    .line 32
    .line 33
    invoke-static {p0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return v0
.end method

.method public static createFbo()I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    const-string v3, "createFbo"

    .line 10
    .line 11
    invoke-static {v0, v3}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 12
    .line 13
    .line 14
    aget v0, v1, v2

    .line 15
    .line 16
    return v0
.end method

.method public static deleteFbo(I)V
    .locals 2

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    filled-new-array {p0}, [I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static deleteTexture(I)V
    .locals 2

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    filled-new-array {p0}, [I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static genTexture(I)I
    .locals 4

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v0, -0x1

    .line 3
    const-string v3, "glGenTextures"

    invoke-static {v0, v3}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 4
    aget v0, v1, v2

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 6
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 7
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    const/16 v3, 0x2601

    .line 8
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 9
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 10
    :cond_0
    aget p0, v1, v2

    return p0
.end method

.method public static genTexture(II)I
    .locals 4

    const/4 v0, 0x1

    .line 11
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v0, -0x1

    .line 13
    const-string v3, "glGenTextures"

    invoke-static {v0, v3}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 14
    aget v0, v1, v2

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 16
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 17
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 18
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 19
    invoke-static {p0, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 20
    :cond_0
    aget p0, v1, v2

    return p0
.end method

.method public static texTargetToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const v0, 0x8d65

    .line 2
    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const-string/jumbo p0, "texture_oes"

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/16 v0, 0xde1

    .line 11
    .line 12
    if-ne p0, v0, :cond_1

    .line 13
    .line 14
    const-string/jumbo p0, "texture_2d"

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
