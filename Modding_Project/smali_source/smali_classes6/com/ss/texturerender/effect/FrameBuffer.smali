.class public Lcom/ss/texturerender/effect/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# static fields
.field public static GL_COLOR_ATTACHMENTS:[I


# instance fields
.field private mFboID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x8ce0

    .line 2
    .line 3
    .line 4
    const v1, 0x8ce1

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/ss/texturerender/effect/FrameBuffer;->GL_COLOR_ATTACHMENTS:[I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/ss/texturerender/TexGLUtils;->createFbo()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/ss/texturerender/effect/FrameBuffer;->mFboID:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .line 1
    const v0, 0x8d40

    .line 2
    .line 3
    .line 4
    iget v1, p0, Lcom/ss/texturerender/effect/FrameBuffer;->mFboID:I

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bindTexture2D(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/FrameBuffer;->bind()V

    .line 2
    .line 3
    .line 4
    const v0, 0x8d40

    .line 5
    .line 6
    .line 7
    const v1, 0x8ce0

    .line 8
    .line 9
    .line 10
    const/16 v2, 0xde1

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const v0, 0x8cd5

    .line 21
    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    return p1

    .line 27
    :cond_0
    return v3
.end method

.method public bindTexture2Ds([I[I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/FrameBuffer;->bind()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const v3, 0x8d40

    .line 8
    .line 9
    .line 10
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    aget v4, p2, v2

    .line 13
    .line 14
    const/16 v5, 0xde1

    .line 15
    .line 16
    aget v6, p1, v2

    .line 17
    .line 18
    invoke-static {v3, v4, v5, v6, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0, p2, v1}, Landroid/opengl/GLES30;->glDrawBuffers(I[II)V

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const p2, 0x8cd5

    .line 32
    .line 33
    .line 34
    if-eq p1, p2, :cond_1

    .line 35
    .line 36
    const/4 p1, -0x1

    .line 37
    return p1

    .line 38
    :cond_1
    return v1
.end method

.method public release()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/FrameBuffer;->mFboID:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/texturerender/TexGLUtils;->deleteFbo(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unBind()V
    .locals 2

    .line 1
    const v0, 0x8d40

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public unbindTexture2D()V
    .locals 4

    .line 1
    const/16 v0, 0xde1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x8d40

    .line 5
    .line 6
    .line 7
    const v3, 0x8ce0

    .line 8
    .line 9
    .line 10
    invoke-static {v2, v3, v0, v1, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/FrameBuffer;->unBind()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public unbindTexture2Ds([I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_0

    .line 5
    .line 6
    aget v2, p1, v1

    .line 7
    .line 8
    const/16 v3, 0xde1

    .line 9
    .line 10
    const v4, 0x8d40

    .line 11
    .line 12
    .line 13
    invoke-static {v4, v2, v3, v0, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/FrameBuffer;->unBind()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
