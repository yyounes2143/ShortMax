.class public Lcom/ss/texturerender/VideoTextureRenderer;
.super Lcom/ss/texturerender/TextureRenderer;
.source "VideoTextureRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static mRenderInstance:Lcom/ss/texturerender/VideoTextureRenderer;


# instance fields
.field private mCurrentDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

.field private mErrorList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalTexId:I

.field private mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

.field private mFrameCallbackBufffer:Ljava/nio/ByteBuffer;

.field private mHardwareBuffer2GLFilter:Lcom/ss/texturerender/effect/AbsEffect;

.field private mMultiRenderTargetFilter:Lcom/ss/texturerender/effect/AbsEffect;

.field private mOutTexHeight:I

.field private mOutTexWidth:I

.field private mSaveFrameBuffer:Ljava/nio/ByteBuffer;

.field private mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

.field private mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

.field private mTileVideoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

.field private mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

.field private mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/effect/EffectConfig;I)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ss/texturerender/TextureRenderer;-><init>(Lcom/ss/texturerender/effect/EffectConfig;I)V

    .line 24
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mErrorList:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mSaveFrameBuffer:Ljava/nio/ByteBuffer;

    .line 26
    iput-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameCallbackBufffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mOutTexWidth:I

    .line 28
    iput v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mOutTexHeight:I

    .line 29
    iput v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFinalTexId:I

    .line 30
    iput-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTileVideoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 31
    iput-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 32
    new-instance p1, Lcom/ss/texturerender/effect/EmptyEffect;

    invoke-direct {p1, p2}, Lcom/ss/texturerender/effect/EmptyEffect;-><init>(I)V

    iput-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/ss/texturerender/TextureRenderer;-><init>(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)V

    .line 13
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mErrorList:Ljava/util/Queue;

    const/4 p3, 0x0

    .line 14
    iput-object p3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mSaveFrameBuffer:Ljava/nio/ByteBuffer;

    .line 15
    iput-object p3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameCallbackBufffer:Ljava/nio/ByteBuffer;

    const/4 p4, -0x1

    .line 16
    iput p4, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mOutTexWidth:I

    .line 17
    iput p4, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mOutTexHeight:I

    .line 18
    iput p4, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFinalTexId:I

    .line 19
    iput-object p3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTileVideoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 20
    iput-object p3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 21
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectConfig;->isOpenTile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->initTileVideoSurfaceTexture()V

    .line 22
    :cond_0
    new-instance p1, Lcom/ss/texturerender/effect/EmptyEffect;

    invoke-direct {p1, p2}, Lcom/ss/texturerender/effect/EmptyEffect;-><init>(I)V

    iput-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/ss/texturerender/TextureRenderer;-><init>(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)V

    .line 2
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mErrorList:Ljava/util/Queue;

    const/4 p3, 0x0

    .line 3
    iput-object p3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mSaveFrameBuffer:Ljava/nio/ByteBuffer;

    .line 4
    iput-object p3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameCallbackBufffer:Ljava/nio/ByteBuffer;

    const/4 p4, -0x1

    .line 5
    iput p4, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mOutTexWidth:I

    .line 6
    iput p4, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mOutTexHeight:I

    .line 7
    iput p4, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFinalTexId:I

    .line 8
    iput-object p3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTileVideoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 9
    iput-object p3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 10
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectConfig;->isOpenTile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->initTileVideoSurfaceTexture()V

    .line 11
    :cond_0
    new-instance p1, Lcom/ss/texturerender/effect/EmptyEffect;

    invoke-direct {p1, p2}, Lcom/ss/texturerender/effect/EmptyEffect;-><init>(I)V

    iput-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    return-void
.end method

.method private _setValueToElement(IF)V
    .locals 4

    .line 2
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_setValueToElement key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(IF)V

    return-void
.end method

.method private _setValueToElement(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(II)V

    return-void
.end method

.method private checkDirectRenderToScreen(Lcom/ss/texturerender/effect/AbsEffect;Lcom/ss/texturerender/VideoSurfaceTexture;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getExtraRealSurfaces()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    move v1, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 20
    :goto_0
    iget v2, p2, Lcom/ss/texturerender/VideoSurfaceTexture;->mRotationType:I

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    iget v2, p2, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorHorizontal:I

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    iget v2, p2, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorVertical:I

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getCropParamsBundle(Z)Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    :cond_2
    move v1, v0

    .line 39
    :cond_3
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/AbsEffect;->getNextEffect()Lcom/ss/texturerender/effect/AbsEffect;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    move v0, v1

    .line 47
    :goto_1
    const/16 p2, 0x271f

    .line 48
    .line 49
    invoke-virtual {p1, p2, v0}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(II)V

    .line 50
    .line 51
    .line 52
    return v0
.end method

.method private checkUseOesFormat(Lcom/ss/texturerender/effect/AbsEffect;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mMultiRenderTargetFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/AbsEffect;->getNextEffect()Lcom/ss/texturerender/effect/AbsEffect;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_5

    .line 18
    .line 19
    if-ne v1, p1, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    const/16 v3, 0x271b

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v1, v3}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-lt v4, v3, :cond_6

    .line 33
    .line 34
    const/16 v3, 0x2714

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const v4, 0x8d65

    .line 41
    .line 42
    .line 43
    if-ne v3, v4, :cond_5

    .line 44
    .line 45
    const/16 v3, 0x2715

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/16 v3, 0xde1

    .line 52
    .line 53
    invoke-direct {p0, v1, v3}, Lcom/ss/texturerender/VideoTextureRenderer;->reInitIfNeed(II)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    const/4 v3, 0x5

    .line 60
    if-ne v1, v3, :cond_3

    .line 61
    .line 62
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mErrorList:Ljava/util/Queue;

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-interface {v1, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    if-ne v1, v2, :cond_4

    .line 73
    .line 74
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mErrorList:Ljava/util/Queue;

    .line 75
    .line 76
    const/4 v3, 0x3

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v1, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mErrorList:Ljava/util/Queue;

    .line 86
    .line 87
    const/4 v3, 0x6

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v1, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_1
    const/16 v1, 0x271e

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-ne p1, v2, :cond_6

    .line 102
    .line 103
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 104
    .line 105
    const/16 v1, 0xb

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_6

    .line 112
    .line 113
    return v2

    .line 114
    :cond_6
    return v0
.end method

.method private draw(Lcom/ss/texturerender/VideoSurfaceTexture;I)Z
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/ss/texturerender/VideoTextureRenderer;->surfaceTextureUpdateImage(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v0, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mErrorList:Ljava/util/Queue;

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :goto_0
    iget-object v0, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mErrorList:Ljava/util/Queue;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mErrorList:Ljava/util/Queue;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const-string v1, ""

    .line 38
    .line 39
    invoke-virtual {v7, v0, v8, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->needDrop()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1b

    .line 48
    .line 49
    if-nez p2, :cond_2

    .line 50
    .line 51
    goto/16 :goto_c

    .line 52
    .line 53
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->isMakeCurrent()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v9, 0x1

    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getRenderSurface()Landroid/view/Surface;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string/jumbo v1, "texture : "

    .line 65
    .line 66
    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    iget v0, v6, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 70
    .line 71
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " not set surface"

    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getEnableUseEglDummySurface()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-ne v0, v9, :cond_3

    .line 101
    .line 102
    iget-object v0, v6, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    iget v0, v6, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 107
    .line 108
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 109
    .line 110
    const-string v2, "create dummy surface"

    .line 111
    .line 112
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v9}, Lcom/ss/texturerender/VideoSurfaceTexture;->createEGLWindowSurface(Z)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    return v8

    .line 120
    :cond_4
    iget-object v0, v6, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 121
    .line 122
    const/4 v2, 0x4

    .line 123
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_5

    .line 128
    .line 129
    iget v0, v6, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 130
    .line 131
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 132
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v4, ", retry create"

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v0, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v8}, Lcom/ss/texturerender/VideoSurfaceTexture;->createEGLWindowSurface(Z)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_5

    .line 161
    .line 162
    iget v0, v6, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 163
    .line 164
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 165
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v1, ", retry failed"

    .line 178
    .line 179
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return v8

    .line 190
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getParamList()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_6

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_6

    .line 205
    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Landroid/os/Bundle;

    .line 211
    .line 212
    invoke-direct {v6, v1, v7}, Lcom/ss/texturerender/VideoTextureRenderer;->setEffect(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/ss/texturerender/VideoTextureRenderer;->hasEffectOpen(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->effectChainBegin()V

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getEffectTexture()Lcom/ss/texturerender/effect/EffectTexture;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-nez v1, :cond_7

    .line 228
    .line 229
    sget-object v0, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 230
    .line 231
    const-string/jumbo v1, "surfaceTexture.getEffectTexture() null"

    .line 232
    .line 233
    .line 234
    const/4 v2, -0x1

    .line 235
    invoke-static {v2, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    return v8

    .line 239
    :cond_7
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTexture;->getSourceType()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    const/4 v3, 0x2

    .line 244
    const/4 v4, 0x0

    .line 245
    if-ne v2, v3, :cond_9

    .line 246
    .line 247
    iget-object v2, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mHardwareBuffer2GLFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 248
    .line 249
    if-nez v2, :cond_8

    .line 250
    .line 251
    iget-object v2, v6, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 252
    .line 253
    if-eqz v2, :cond_8

    .line 254
    .line 255
    new-instance v3, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;

    .line 256
    .line 257
    iget v5, v6, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 258
    .line 259
    iget-object v2, v2, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 260
    .line 261
    invoke-direct {v3, v5, v2}, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;-><init>(ILandroid/opengl/EGLDisplay;)V

    .line 262
    .line 263
    .line 264
    iput-object v3, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mHardwareBuffer2GLFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 265
    .line 266
    :cond_8
    iget-object v2, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mHardwareBuffer2GLFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 267
    .line 268
    invoke-virtual {v2, v1, v4}, Lcom/ss/texturerender/effect/AbsEffect;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    :cond_9
    iget-object v2, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 273
    .line 274
    if-eqz v2, :cond_c

    .line 275
    .line 276
    const/16 v2, 0x98

    .line 277
    .line 278
    invoke-virtual {v7, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-ne v3, v9, :cond_c

    .line 283
    .line 284
    iget v3, v6, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 285
    .line 286
    sget-object v5, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 287
    .line 288
    const-string v10, "enter open vqscore"

    .line 289
    .line 290
    invoke-static {v3, v5, v10}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-object v3, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 294
    .line 295
    invoke-virtual {v3, v7}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 296
    .line 297
    .line 298
    const/16 v3, 0x99

    .line 299
    .line 300
    invoke-virtual {v7, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getOption(I)Landroid/os/Bundle;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    if-eqz v3, :cond_b

    .line 305
    .line 306
    const-string/jumbo v5, "vqscore_callback"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    check-cast v3, Lcom/ss/texturerender/VideoSurface$VQScoreCallback;

    .line 314
    .line 315
    if-eqz v3, :cond_a

    .line 316
    .line 317
    iget-object v5, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 318
    .line 319
    invoke-virtual {v5, v1, v3, v8}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->processVqscore(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/VideoSurface$VQScoreCallback;Z)V

    .line 320
    .line 321
    .line 322
    move v5, v9

    .line 323
    goto :goto_4

    .line 324
    :cond_a
    :goto_3
    move v5, v8

    .line 325
    goto :goto_4

    .line 326
    :cond_b
    move-object v3, v4

    .line 327
    goto :goto_3

    .line 328
    :goto_4
    invoke-virtual {v7, v2, v8}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 329
    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_c
    move-object v3, v4

    .line 333
    move v5, v8

    .line 334
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getEffectConfig()Lcom/ss/texturerender/effect/EffectConfig;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    iget-object v2, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mMultiRenderTargetFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 339
    .line 340
    const/16 v11, 0xde1

    .line 341
    .line 342
    if-eqz v2, :cond_e

    .line 343
    .line 344
    const/16 v12, 0x2715

    .line 345
    .line 346
    invoke-virtual {v2, v12}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    invoke-virtual {v10, v2}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_e

    .line 355
    .line 356
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    const v12, 0x8d65

    .line 361
    .line 362
    .line 363
    if-ne v2, v12, :cond_d

    .line 364
    .line 365
    iget-object v2, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mMultiRenderTargetFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 366
    .line 367
    const/16 v12, 0x2714

    .line 368
    .line 369
    invoke-virtual {v2, v12}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-ne v2, v11, :cond_d

    .line 374
    .line 375
    iget-object v2, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 376
    .line 377
    invoke-virtual {v2, v7}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 378
    .line 379
    .line 380
    iget-object v2, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 381
    .line 382
    iget-object v12, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 383
    .line 384
    invoke-virtual {v2, v1, v12}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    :cond_d
    iget-object v2, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mMultiRenderTargetFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 389
    .line 390
    iget-object v12, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 391
    .line 392
    invoke-virtual {v2, v1, v12}, Lcom/ss/texturerender/effect/AbsEffect;->processWithMRT(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)[Lcom/ss/texturerender/effect/EffectTexture;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    if-eqz v2, :cond_e

    .line 397
    .line 398
    aget-object v1, v2, v8

    .line 399
    .line 400
    aget-object v4, v2, v9

    .line 401
    .line 402
    :cond_e
    move-object v12, v4

    .line 403
    if-eqz v0, :cond_f

    .line 404
    .line 405
    invoke-direct {v6, v7, v1}, Lcom/ss/texturerender/VideoTextureRenderer;->processEffectTexture(Lcom/ss/texturerender/VideoSurfaceTexture;Lcom/ss/texturerender/effect/EffectTexture;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    :goto_6
    move-object v13, v1

    .line 410
    goto :goto_7

    .line 411
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->resetFlag()V

    .line 412
    .line 413
    .line 414
    goto :goto_6

    .line 415
    :goto_7
    if-nez v13, :cond_10

    .line 416
    .line 417
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->effectChainEnd()V

    .line 418
    .line 419
    .line 420
    return v9

    .line 421
    :cond_10
    if-eqz v0, :cond_11

    .line 422
    .line 423
    if-eqz v5, :cond_11

    .line 424
    .line 425
    iget-object v0, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 426
    .line 427
    if-eqz v0, :cond_11

    .line 428
    .line 429
    invoke-virtual {v0, v13, v3, v9}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->processVqscore(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/VideoSurface$VQScoreCallback;Z)V

    .line 430
    .line 431
    .line 432
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getExtraRealSurfaces()Ljava/util/HashMap;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 441
    .line 442
    .line 443
    move-result-object v14

    .line 444
    move v0, v8

    .line 445
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_14

    .line 450
    .line 451
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    move-object v15, v0

    .line 456
    check-cast v15, Ljava/util/Map$Entry;

    .line 457
    .line 458
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    move-object v5, v0

    .line 463
    check-cast v5, Landroid/opengl/EGLSurface;

    .line 464
    .line 465
    invoke-virtual {v7, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->makeCurrent(Landroid/opengl/EGLSurface;)Z

    .line 466
    .line 467
    .line 468
    if-nez v12, :cond_12

    .line 469
    .line 470
    move-object v1, v13

    .line 471
    goto :goto_9

    .line 472
    :cond_12
    move-object v1, v12

    .line 473
    :goto_9
    invoke-virtual {v7, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->getConsumerHeight(Landroid/opengl/EGLSurface;)I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    invoke-virtual {v7, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->getConsumerWidth(Landroid/opengl/EGLSurface;)I

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    const/16 v16, 0x1

    .line 482
    .line 483
    move-object/from16 v0, p0

    .line 484
    .line 485
    move-object/from16 v2, p1

    .line 486
    .line 487
    move-object v11, v5

    .line 488
    move/from16 v5, v16

    .line 489
    .line 490
    invoke-direct/range {v0 .. v5}, Lcom/ss/texturerender/VideoTextureRenderer;->drawToSurface(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/VideoSurfaceTexture;IIZ)I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-nez v0, :cond_13

    .line 495
    .line 496
    invoke-virtual {v7, v11, v8}, Lcom/ss/texturerender/VideoSurfaceTexture;->eglSwapBuffer(Landroid/opengl/EGLSurface;Z)Z

    .line 497
    .line 498
    .line 499
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    check-cast v0, Landroid/view/Surface;

    .line 504
    .line 505
    const/16 v1, 0x8d

    .line 506
    .line 507
    invoke-virtual {v7, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-ne v1, v9, :cond_13

    .line 512
    .line 513
    invoke-virtual {v7, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyExtraSurfaceRender(Landroid/view/Surface;)V

    .line 514
    .line 515
    .line 516
    :cond_13
    move v0, v9

    .line 517
    const/16 v11, 0xde1

    .line 518
    .line 519
    goto :goto_8

    .line 520
    :cond_14
    if-eqz v12, :cond_15

    .line 521
    .line 522
    invoke-virtual {v12}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 523
    .line 524
    .line 525
    :cond_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-direct {v6, v7, v0}, Lcom/ss/texturerender/VideoTextureRenderer;->switchContextToMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;Ljava/lang/Boolean;)Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-nez v0, :cond_16

    .line 534
    .line 535
    return v8

    .line 536
    :cond_16
    invoke-virtual {v13}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    iput v0, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mOutTexWidth:I

    .line 541
    .line 542
    invoke-virtual {v13}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    iput v0, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mOutTexHeight:I

    .line 547
    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getFrameCallbackBundle()Landroid/os/Bundle;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    if-eqz v0, :cond_19

    .line 553
    .line 554
    invoke-virtual {v13}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    const/16 v1, 0xde1

    .line 559
    .line 560
    if-eq v0, v1, :cond_19

    .line 561
    .line 562
    iget-object v0, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 563
    .line 564
    if-nez v0, :cond_17

    .line 565
    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/ss/texturerender/VideoTextureRenderer;->initFbo()V

    .line 567
    .line 568
    .line 569
    :cond_17
    iget-object v0, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 570
    .line 571
    invoke-virtual {v0, v7}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 572
    .line 573
    .line 574
    iget-object v0, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 575
    .line 576
    const/16 v1, 0x2716

    .line 577
    .line 578
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 583
    .line 584
    .line 585
    iget-object v0, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 586
    .line 587
    const/16 v1, 0x2717

    .line 588
    .line 589
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 594
    .line 595
    .line 596
    iget-object v0, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 597
    .line 598
    iget-object v1, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 599
    .line 600
    invoke-virtual {v0, v13, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    iget-object v1, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 605
    .line 606
    if-nez v1, :cond_18

    .line 607
    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/ss/texturerender/VideoTextureRenderer;->setup2DGraphics()V

    .line 609
    .line 610
    .line 611
    :cond_18
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    iput v1, v6, Lcom/ss/texturerender/VideoTextureRenderer;->mFinalTexId:I

    .line 616
    .line 617
    move-object v1, v0

    .line 618
    goto :goto_a

    .line 619
    :cond_19
    move-object v1, v13

    .line 620
    :goto_a
    const/16 v0, 0x12

    .line 621
    .line 622
    invoke-virtual {v10, v0}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    if-nez v0, :cond_1a

    .line 627
    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 633
    .line 634
    .line 635
    move-result v4

    .line 636
    const/4 v5, 0x0

    .line 637
    move-object/from16 v0, p0

    .line 638
    .line 639
    move-object/from16 v2, p1

    .line 640
    .line 641
    invoke-direct/range {v0 .. v5}, Lcom/ss/texturerender/VideoTextureRenderer;->drawToSurface(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/VideoSurfaceTexture;IIZ)I

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    goto :goto_b

    .line 646
    :cond_1a
    move v0, v8

    .line 647
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->effectChainEnd()V

    .line 648
    .line 649
    .line 650
    if-nez v0, :cond_1b

    .line 651
    .line 652
    move v8, v9

    .line 653
    :cond_1b
    :goto_c
    return v8
.end method

.method private drawToSurface(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/VideoSurfaceTexture;IIZ)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xde1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 13
    .line 14
    :goto_0
    iput-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mCurrentDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    return p1

    .line 20
    :cond_1
    invoke-virtual {v0, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 21
    .line 22
    .line 23
    iget v1, p2, Lcom/ss/texturerender/VideoSurfaceTexture;->mLayoutMode:I

    .line 24
    .line 25
    const/16 v2, 0x1a

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x1b

    .line 31
    .line 32
    iget v2, p2, Lcom/ss/texturerender/VideoSurfaceTexture;->mLayoutRatio:F

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(IF)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x92

    .line 38
    .line 39
    invoke-virtual {p2, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/16 v2, 0x1d

    .line 44
    .line 45
    const/16 v3, 0x1f

    .line 46
    .line 47
    const/16 v4, 0x1e

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    if-ne v1, v5, :cond_2

    .line 51
    .line 52
    iget v1, p2, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorHorizontal:I

    .line 53
    .line 54
    invoke-virtual {v0, v4, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 55
    .line 56
    .line 57
    iget v1, p2, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorVertical:I

    .line 58
    .line 59
    invoke-virtual {v0, v3, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 60
    .line 61
    .line 62
    iget v1, p2, Lcom/ss/texturerender/VideoSurfaceTexture;->mRotationType:I

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget v1, p2, Lcom/ss/texturerender/VideoSurfaceTexture;->mRotationType:I

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 71
    .line 72
    .line 73
    iget v1, p2, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorHorizontal:I

    .line 74
    .line 75
    invoke-virtual {v0, v4, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 76
    .line 77
    .line 78
    iget v1, p2, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorVertical:I

    .line 79
    .line 80
    invoke-virtual {v0, v3, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 81
    .line 82
    .line 83
    :goto_1
    const/16 v1, 0x2716

    .line 84
    .line 85
    invoke-virtual {v0, v1, p4}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 86
    .line 87
    .line 88
    const/16 p4, 0x2717

    .line 89
    .line 90
    invoke-virtual {v0, p4, p3}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 91
    .line 92
    .line 93
    iget p3, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 94
    .line 95
    if-ne p3, v5, :cond_4

    .line 96
    .line 97
    invoke-virtual {p2, p5}, Lcom/ss/texturerender/VideoSurfaceTexture;->getCropParamsBundle(Z)Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    if-eqz p3, :cond_3

    .line 102
    .line 103
    invoke-virtual {v0, p3}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    if-nez p5, :cond_4

    .line 108
    .line 109
    const/16 p3, 0xab

    .line 110
    .line 111
    invoke-virtual {p2, p3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-ne p2, v5, :cond_4

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->resetCropParams()V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_2
    const/4 p2, 0x0

    .line 121
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 122
    .line 123
    .line 124
    const/16 p1, 0x4e25

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getIntOption(I)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    return p1
.end method

.method private frameBufferCallback(Landroid/os/Message;)V
    .locals 14

    .line 1
    const-string v0, "handleFrameCallback"

    .line 2
    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getFrameCallbackBundle()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    const-string v2, "callback"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/ss/texturerender/VideoSurface$FrameRenderCallback;

    .line 20
    .line 21
    iget v10, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mOutTexWidth:I

    .line 22
    .line 23
    iget v11, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mOutTexHeight:I

    .line 24
    .line 25
    const-string v3, "buffer_type"

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v12

    .line 31
    const/4 v13, 0x2

    .line 32
    if-ne v12, v13, :cond_7

    .line 33
    .line 34
    mul-int v3, v10, v11

    .line 35
    .line 36
    mul-int/lit8 v3, v3, 0x4

    .line 37
    .line 38
    :try_start_0
    const-string v4, "reuse_buffer"

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameCallbackBufffer:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-ge v1, v3, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameCallbackBufffer:Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    :cond_1
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameCallbackBufffer:Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 74
    .line 75
    .line 76
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 85
    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    iget v4, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFinalTexId:I

    .line 89
    .line 90
    const/4 v5, -0x1

    .line 91
    if-eq v4, v5, :cond_3

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Lcom/ss/texturerender/effect/FrameBuffer;->bindTexture2D(I)I

    .line 94
    .line 95
    .line 96
    :cond_3
    const/16 v7, 0x1908

    .line 97
    .line 98
    const/16 v8, 0x1401

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    move v5, v10

    .line 103
    move v6, v11

    .line 104
    move-object v9, v1

    .line 105
    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 109
    .line 110
    if-eqz v3, :cond_4

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/ss/texturerender/effect/FrameBuffer;->unbindTexture2D()V

    .line 113
    .line 114
    .line 115
    :cond_4
    iget v3, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 116
    .line 117
    invoke-static {v3, v0}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    const/4 v4, 0x0

    .line 122
    if-eqz v3, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1, v3, v4, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 128
    .line 129
    .line 130
    mul-int/lit8 p1, v10, 0x4

    .line 131
    .line 132
    new-array v0, p1, [B

    .line 133
    .line 134
    move v3, v4

    .line 135
    :goto_2
    div-int/lit8 v5, v11, 0x2

    .line 136
    .line 137
    if-ge v3, v5, :cond_6

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    sub-int/2addr v6, v7

    .line 155
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    sub-int/2addr v8, p1

    .line 164
    invoke-static {v5, v6, v7, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    sub-int/2addr v6, v7

    .line 180
    invoke-static {v0, v4, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    .line 182
    .line 183
    add-int/lit8 v3, v3, 0x1

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 190
    .line 191
    .line 192
    move-result-wide v8

    .line 193
    const/4 v4, 0x2

    .line 194
    move-object v3, v2

    .line 195
    move-object v5, v1

    .line 196
    move v6, v10

    .line 197
    move v7, v11

    .line 198
    invoke-interface/range {v3 .. v9}, Lcom/ss/texturerender/VideoSurface$FrameRenderCallback;->onBytebufferCallbck(ILjava/nio/ByteBuffer;IIJ)I

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_7
    const/4 p1, 0x1

    .line 203
    if-ne v12, p1, :cond_9

    .line 204
    .line 205
    iget v6, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFinalTexId:I

    .line 206
    .line 207
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 208
    .line 209
    iget-object v7, p1, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 210
    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide v0

    .line 215
    const/16 v4, 0x1908

    .line 216
    .line 217
    const/4 v5, 0x2

    .line 218
    move-object v3, v2

    .line 219
    move v8, v10

    .line 220
    move v9, v11

    .line 221
    move-wide v10, v0

    .line 222
    invoke-interface/range {v3 .. v11}, Lcom/ss/texturerender/VideoSurface$FrameRenderCallback;->onTextureCallback(IIILandroid/opengl/EGLContext;IIJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :goto_3
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 227
    .line 228
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 229
    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v4, "frame callback failed "

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {v0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    if-ne v12, v13, :cond_8

    .line 255
    .line 256
    const/4 v7, -0x1

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 258
    .line 259
    .line 260
    move-result-wide v8

    .line 261
    const/4 v4, -0x1

    .line 262
    const/4 v5, 0x0

    .line 263
    const/4 v6, -0x1

    .line 264
    move-object v3, v2

    .line 265
    invoke-interface/range {v3 .. v9}, Lcom/ss/texturerender/VideoSurface$FrameRenderCallback;->onBytebufferCallbck(ILjava/nio/ByteBuffer;IIJ)I

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_8
    const/4 v9, -0x1

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 271
    .line 272
    .line 273
    move-result-wide v10

    .line 274
    const/4 v4, -0x1

    .line 275
    const/4 v5, -0x1

    .line 276
    const/4 v6, -0x1

    .line 277
    const/4 v7, 0x0

    .line 278
    const/4 v8, -0x1

    .line 279
    move-object v3, v2

    .line 280
    invoke-interface/range {v3 .. v11}, Lcom/ss/texturerender/VideoSurface$FrameRenderCallback;->onTextureCallback(IIILandroid/opengl/EGLContext;IIJ)I

    .line 281
    .line 282
    .line 283
    :cond_9
    :goto_4
    return-void
.end method

.method private getConsumerHeight(Landroid/opengl/EGLSurface;)I
    .locals 4

    .line 1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 13
    .line 14
    const/16 v2, 0x3056

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v1, p1, v2, v0, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 18
    .line 19
    .line 20
    aget p1, v0, v3

    .line 21
    .line 22
    return p1
.end method

.method private getConsumerWidth(Landroid/opengl/EGLSurface;)I
    .locals 4

    .line 1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 13
    .line 14
    const/16 v2, 0x3057

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v1, p1, v2, v0, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 18
    .line 19
    .line 20
    aget p1, v0, v3

    .line 21
    .line 22
    return p1
.end method

.method private getEffect(I)Lcom/ss/texturerender/effect/AbsEffect;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mMultiRenderTargetFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 2
    .line 3
    const/16 v1, 0x2715

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mMultiRenderTargetFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/AbsEffect;->getNextEffect()Lcom/ss/texturerender/effect/AbsEffect;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v2, p1, :cond_1

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/AbsEffect;->getNextEffect()Lcom/ss/texturerender/effect/AbsEffect;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public static declared-synchronized getRenderer()Lcom/ss/texturerender/VideoTextureRenderer;
    .locals 2

    const-class v0, Lcom/ss/texturerender/VideoTextureRenderer;

    monitor-enter v0

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {v1, v1}, Lcom/ss/texturerender/VideoTextureRenderer;->getRenderer(Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Lcom/ss/texturerender/VideoTextureRenderer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getRenderer(Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Lcom/ss/texturerender/VideoTextureRenderer;
    .locals 4

    const-class v0, Lcom/ss/texturerender/VideoTextureRenderer;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ss/texturerender/VideoTextureRenderer;->mRenderInstance:Lcom/ss/texturerender/VideoTextureRenderer;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/ss/texturerender/VideoTextureRenderer;

    new-instance v2, Lcom/ss/texturerender/effect/EffectConfig;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/ss/texturerender/effect/EffectConfig;-><init>(I)V

    invoke-direct {v1, v2, v3, p0, p1}, Lcom/ss/texturerender/VideoTextureRenderer;-><init>(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)V

    sput-object v1, Lcom/ss/texturerender/VideoTextureRenderer;->mRenderInstance:Lcom/ss/texturerender/VideoTextureRenderer;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    sget-object p0, Lcom/ss/texturerender/VideoTextureRenderer;->mRenderInstance:Lcom/ss/texturerender/VideoTextureRenderer;

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    .line 4
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_1
    :try_start_1
    sget-object p0, Lcom/ss/texturerender/VideoTextureRenderer;->mRenderInstance:Lcom/ss/texturerender/VideoTextureRenderer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private hasEffectOpen(Lcom/ss/texturerender/VideoSurfaceTexture;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectConfigMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getEffectConfig()Lcom/ss/texturerender/effect/EffectConfig;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x1

    .line 42
    if-ne v2, v3, :cond_0

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p1, v1}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v3, 0x0

    .line 62
    :goto_0
    return v3
.end method

.method private initEffect(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurfaceTexture;)I
    .locals 9

    .line 1
    const-string v0, "effect_type"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 8
    .line 9
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "initeffect:"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0xde1

    .line 32
    .line 33
    const v2, 0x8d65

    .line 34
    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    const-string/jumbo v4, "texture_type"

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x5

    .line 41
    const/4 v6, 0x1

    .line 42
    if-eq v0, v6, :cond_6

    .line 43
    .line 44
    if-eq v0, v5, :cond_6

    .line 45
    .line 46
    const/16 v7, 0xb

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    if-eq v0, v7, :cond_5

    .line 50
    .line 51
    const/16 v7, 0x10

    .line 52
    .line 53
    if-eq v0, v7, :cond_3

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/ss/texturerender/VideoTextureRenderer;->getEffect(I)Lcom/ss/texturerender/effect/AbsEffect;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    if-nez v7, :cond_0

    .line 60
    .line 61
    iget v7, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 62
    .line 63
    invoke-static {v7, v0}, Lcom/ss/texturerender/effect/EffectFactory;->createEffect(II)Lcom/ss/texturerender/effect/AbsEffect;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    :cond_0
    if-nez v7, :cond_1

    .line 68
    .line 69
    iget p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 70
    .line 71
    sget-object p2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v2, "create effect fail"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return v3

    .line 94
    :cond_1
    invoke-virtual {v7, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, p0}, Lcom/ss/texturerender/effect/AbsEffect;->setParentRender(Lcom/ss/texturerender/TextureRenderer;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v7}, Lcom/ss/texturerender/VideoTextureRenderer;->checkUseOesFormat(Lcom/ss/texturerender/effect/AbsEffect;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_2

    .line 105
    .line 106
    move v1, v2

    .line 107
    :cond_2
    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, p1}, Lcom/ss/texturerender/effect/AbsEffect;->init(Landroid/os/Bundle;)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/16 v2, 0x16

    .line 115
    .line 116
    if-ne v0, v2, :cond_b

    .line 117
    .line 118
    iput-object v7, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mMultiRenderTargetFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 119
    .line 120
    goto/16 :goto_3

    .line 121
    .line 122
    :cond_3
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 123
    .line 124
    if-nez v1, :cond_4

    .line 125
    .line 126
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 127
    .line 128
    invoke-static {v1, v0}, Lcom/ss/texturerender/effect/EffectFactory;->createEffect(II)Lcom/ss/texturerender/effect/AbsEffect;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 135
    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    invoke-virtual {v0, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 142
    .line 143
    invoke-virtual {p2, p0}, Lcom/ss/texturerender/effect/AbsEffect;->setParentRender(Lcom/ss/texturerender/TextureRenderer;)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->downloadModel(Landroid/os/Bundle;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    return v8

    .line 152
    :cond_5
    iget-object p2, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 153
    .line 154
    invoke-virtual {p2, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(Landroid/os/Bundle;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->initFbo()V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 161
    .line 162
    invoke-direct {p0, p1}, Lcom/ss/texturerender/VideoTextureRenderer;->checkUseOesFormat(Lcom/ss/texturerender/effect/AbsEffect;)Z

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 166
    .line 167
    invoke-virtual {p1, v0, v6}, Lcom/ss/texturerender/effect/EffectConfig;->setEffectOpen(II)Lcom/ss/texturerender/effect/EffectConfig;

    .line 168
    .line 169
    .line 170
    return v8

    .line 171
    :cond_6
    invoke-direct {p0, v0}, Lcom/ss/texturerender/VideoTextureRenderer;->getEffect(I)Lcom/ss/texturerender/effect/AbsEffect;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    if-nez v7, :cond_7

    .line 176
    .line 177
    iget v7, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 178
    .line 179
    invoke-static {v7, v0}, Lcom/ss/texturerender/effect/EffectFactory;->createEffect(II)Lcom/ss/texturerender/effect/AbsEffect;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    if-nez v7, :cond_7

    .line 184
    .line 185
    iget p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 186
    .line 187
    sget-object p2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 188
    .line 189
    const-string v0, "create effect failed"

    .line 190
    .line 191
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return v3

    .line 195
    :cond_7
    invoke-direct {p0, v7}, Lcom/ss/texturerender/VideoTextureRenderer;->checkUseOesFormat(Lcom/ss/texturerender/effect/AbsEffect;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_9

    .line 200
    .line 201
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_8

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_8
    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_9
    :goto_0
    invoke-direct {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->initFbo()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    :goto_1
    invoke-virtual {v7, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, p1}, Lcom/ss/texturerender/effect/AbsEffect;->init(Landroid/os/Bundle;)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-gez v1, :cond_b

    .line 226
    .line 227
    invoke-virtual {v7}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 228
    .line 229
    .line 230
    iget-object v2, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mErrorList:Ljava/util/Queue;

    .line 231
    .line 232
    if-ne v0, v5, :cond_a

    .line 233
    .line 234
    move v3, v6

    .line 235
    goto :goto_2

    .line 236
    :cond_a
    const/4 v3, 0x3

    .line 237
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    const/4 v7, 0x0

    .line 245
    :cond_b
    :goto_3
    if-eqz v7, :cond_10

    .line 246
    .line 247
    iget v2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 248
    .line 249
    sget-object v3, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 250
    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    const-string v8, "initeffect successful:"

    .line 257
    .line 258
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-static {v2, v3, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v2, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 272
    .line 273
    invoke-virtual {v2, v0, v6}, Lcom/ss/texturerender/effect/EffectConfig;->setEffectOpen(II)Lcom/ss/texturerender/effect/EffectConfig;

    .line 274
    .line 275
    .line 276
    iget-object v2, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 277
    .line 278
    if-nez v2, :cond_c

    .line 279
    .line 280
    invoke-direct {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->setup2DGraphics()V

    .line 281
    .line 282
    .line 283
    :cond_c
    const-string v2, "effect_order"

    .line 284
    .line 285
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    if-eqz v3, :cond_d

    .line 290
    .line 291
    const/16 v3, 0x271b

    .line 292
    .line 293
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    invoke-virtual {v7, v3, v2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(II)V

    .line 298
    .line 299
    .line 300
    :cond_d
    invoke-direct {p0, v0}, Lcom/ss/texturerender/VideoTextureRenderer;->getEffect(I)Lcom/ss/texturerender/effect/AbsEffect;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    if-nez v2, :cond_e

    .line 305
    .line 306
    iget-object v2, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    .line 307
    .line 308
    invoke-virtual {v2, v7}, Lcom/ss/texturerender/effect/AbsEffect;->insertEffect(Lcom/ss/texturerender/effect/AbsEffect;)V

    .line 309
    .line 310
    .line 311
    :cond_e
    if-eq v0, v6, :cond_f

    .line 312
    .line 313
    if-eq v0, v5, :cond_f

    .line 314
    .line 315
    invoke-direct {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->initFbo()V

    .line 316
    .line 317
    .line 318
    :cond_f
    if-eqz p2, :cond_10

    .line 319
    .line 320
    const-string/jumbo v2, "use_effect"

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_10

    .line 328
    .line 329
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    invoke-virtual {p2, v0, v2, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->setEffectOpen(IILandroid/os/Bundle;)V

    .line 334
    .line 335
    .line 336
    :cond_10
    iget p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 337
    .line 338
    sget-object p2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 339
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v2, "initEffect render:"

    .line 346
    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v2, ",chain:"

    .line 354
    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    iget-object v2, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    .line 359
    .line 360
    invoke-virtual {v2}, Lcom/ss/texturerender/effect/AbsEffect;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    return v1
.end method

.method private initFbo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/ss/texturerender/effect/FrameBuffer;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/ss/texturerender/effect/FrameBuffer;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectTextureManager:Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 17
    .line 18
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/ss/texturerender/effect/EffectTextureManager;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectTextureManager:Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private initTileVideoSurfaceTexture()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/ss/texturerender/TextureRenderer;->getTexture()Lcom/ss/texturerender/ITexture;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {v1, v0, v2, p0}, Lcom/ss/texturerender/VideoSurfaceTexture;-><init>(Lcom/ss/texturerender/ITexture;Landroid/os/Handler;Lcom/ss/texturerender/TextureRenderer;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0x12

    .line 17
    .line 18
    invoke-virtual {v1, v4, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->setEffectOpen(IILandroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    iget v3, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->bindEGLEnv(Lcom/ss/texturerender/base/EGLRuntime;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/ss/texturerender/IRef;->decRef()I

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTileVideoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 39
    .line 40
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string/jumbo v2, "tile surface texture init failed"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method private processEffectTexture(Lcom/ss/texturerender/VideoSurfaceTexture;Lcom/ss/texturerender/effect/EffectTexture;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->effectChainBegin()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getEffectConfig()Lcom/ss/texturerender/effect/EffectConfig;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/AbsEffect;->getNextEffect()Lcom/ss/texturerender/effect/AbsEffect;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move-object v2, p2

    .line 15
    :goto_0
    if-eqz v1, :cond_9

    .line 16
    .line 17
    const/16 v3, 0x2715

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v0, v4}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x0

    .line 28
    if-eqz v5, :cond_8

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const v5, 0x8d65

    .line 35
    .line 36
    .line 37
    const/16 v7, 0x12

    .line 38
    .line 39
    if-ne v4, v5, :cond_3

    .line 40
    .line 41
    const/16 v4, 0x2714

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v5, 0xde1

    .line 48
    .line 49
    if-ne v4, v5, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, v7}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    iget v4, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    if-ne v4, v5, :cond_0

    .line 61
    .line 62
    iget-object v4, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/ss/texturerender/effect/GLDefaultFilter;->resetCropParams()V

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object v4, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 68
    .line 69
    invoke-virtual {v4, p1}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    sget-object v4, Lcom/ss/texturerender/effect/EffectTexture$FilterType;->NEAREST:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

    .line 79
    .line 80
    invoke-virtual {p2, v4, v4}, Lcom/ss/texturerender/effect/EffectTexture;->switchFilterType(Lcom/ss/texturerender/effect/EffectTexture$FilterType;Lcom/ss/texturerender/effect/EffectTexture$FilterType;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v4, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 84
    .line 85
    if-nez v4, :cond_2

    .line 86
    .line 87
    iget v4, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 88
    .line 89
    sget-object v5, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 90
    .line 91
    const-string v8, "init fbo before oesTo2d process"

    .line 92
    .line 93
    invoke-static {v4, v5, v8}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->initFbo()V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object v4, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 100
    .line 101
    iget-object v5, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 102
    .line 103
    invoke-virtual {v4, v2, v5}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    sget-object v4, Lcom/ss/texturerender/effect/EffectTexture$FilterType;->LINEAR:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

    .line 114
    .line 115
    invoke-virtual {p2, v4, v4}, Lcom/ss/texturerender/effect/EffectTexture;->switchFilterType(Lcom/ss/texturerender/effect/EffectTexture$FilterType;Lcom/ss/texturerender/effect/EffectTexture$FilterType;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-virtual {v1, p1}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v3}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-ne v3, v7, :cond_4

    .line 126
    .line 127
    const/16 v3, 0x2716

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-virtual {v1, v3, v4}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(II)V

    .line 134
    .line 135
    .line 136
    const/16 v3, 0x2717

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-virtual {v1, v3, v4}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(II)V

    .line 143
    .line 144
    .line 145
    :cond_4
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getExtraVideoSurfaceTexture()Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    if-eqz v3, :cond_5

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getExtraVideoSurfaceTexture()Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    new-instance v4, Lcom/ss/texturerender/effect/EffectTexture;

    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTexId()Lcom/ss/texturerender/ITexture;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-interface {v5}, Lcom/ss/texturerender/ITexture;->lock()I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTexWidth()I

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTexHeight()I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    const v12, 0x8d65

    .line 174
    .line 175
    .line 176
    const/4 v8, 0x0

    .line 177
    move-object v7, v4

    .line 178
    invoke-direct/range {v7 .. v12}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 179
    .line 180
    .line 181
    filled-new-array {v4}, [Lcom/ss/texturerender/effect/EffectTexture;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v2, v4}, Lcom/ss/texturerender/effect/EffectTexture;->setExtraEffectTexture([Lcom/ss/texturerender/effect/EffectTexture;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTexId()Lcom/ss/texturerender/ITexture;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-interface {v3}, Lcom/ss/texturerender/ITexture;->unlock()V

    .line 193
    .line 194
    .line 195
    :cond_5
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-nez v3, :cond_6

    .line 200
    .line 201
    invoke-direct {p0, v1, p1}, Lcom/ss/texturerender/VideoTextureRenderer;->checkDirectRenderToScreen(Lcom/ss/texturerender/effect/AbsEffect;Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    :cond_6
    if-eqz v6, :cond_7

    .line 206
    .line 207
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-direct {p0, p1, v3}, Lcom/ss/texturerender/VideoTextureRenderer;->switchContextToMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;Ljava/lang/Boolean;)Z

    .line 210
    .line 211
    .line 212
    :cond_7
    iget-object v3, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 213
    .line 214
    invoke-virtual {v1, v2, v3}, Lcom/ss/texturerender/effect/AbsEffect;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    goto :goto_1

    .line 219
    :cond_8
    const/16 v3, 0x13

    .line 220
    .line 221
    invoke-virtual {p1, v3, v4, v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 222
    .line 223
    .line 224
    :goto_1
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/AbsEffect;->getNextEffect()Lcom/ss/texturerender/effect/AbsEffect;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_9
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->effectChainEnd()V

    .line 231
    .line 232
    .line 233
    return-object v2
.end method

.method private reInitIfNeed(II)I
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/texturerender/VideoTextureRenderer;->getEffect(I)Lcom/ss/texturerender/effect/AbsEffect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x2714

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq v1, p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/AbsEffect;->getInitBundle()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string/jumbo v2, "texture_type"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/AbsEffect;->init(Landroid/os/Bundle;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget v2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 32
    .line 33
    sget-object v3, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v5, "reInit, effectType:"

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, ",texTarget:"

    .line 49
    .line 50
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lcom/ss/texturerender/TexGLUtils;->texTargetToString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v2, v3, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :cond_1
    const/4 p1, 0x0

    .line 74
    return p1
.end method

.method private releaseEffect(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 4
    .line 5
    sget-object p2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "releaseEffect bundle null"

    .line 8
    .line 9
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "effect_type"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/16 v0, 0x18

    .line 20
    .line 21
    const/16 v1, 0x13

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/AbsEffect;->getNextEffect()Lcom/ss/texturerender/effect/AbsEffect;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/16 v3, 0x2715

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p2, v1, v3, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/AbsEffect;->getNextEffect()Lcom/ss/texturerender/effect/AbsEffect;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->deinitEffectComponents()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-direct {p0, p1}, Lcom/ss/texturerender/VideoTextureRenderer;->getEffect(I)Lcom/ss/texturerender/effect/AbsEffect;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 64
    .line 65
    invoke-virtual {v0, p1, v2}, Lcom/ss/texturerender/effect/EffectConfig;->setEffectOpen(II)Lcom/ss/texturerender/effect/EffectConfig;

    .line 66
    .line 67
    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    invoke-virtual {p2, v1, p1, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_1
    iget p2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 74
    .line 75
    sget-object v0, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "releaseEffect render:"

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, " type:"

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, " chain:"

    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    .line 104
    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p2, v0, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method private resetCropParams()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->resetCropParams()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->resetCropParams()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private resetRotationMirrorParams()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x1a

    .line 5
    .line 6
    const/16 v3, 0x1d

    .line 7
    .line 8
    const/16 v4, 0x1f

    .line 9
    .line 10
    const/16 v5, 0x1e

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v5, v6}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 19
    .line 20
    invoke-virtual {v0, v4, v6}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 24
    .line 25
    invoke-virtual {v0, v3, v6}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v5, v6}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 41
    .line 42
    invoke-virtual {v0, v4, v6}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 46
    .line 47
    invoke-virtual {v0, v3, v6}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method private saveImage(Landroid/os/Message;)V
    .locals 14

    .line 1
    const-string v0, "handleSaveFrame"

    .line 2
    .line 3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v2, "callback"

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;

    .line 18
    .line 19
    if-eqz v2, :cond_7

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :try_start_0
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const-string v6, "origin_video"

    .line 31
    .line 32
    invoke-virtual {p1, v6, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    iget-object v6, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mCurrentDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    const/16 v7, 0x4e23

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getIntOption(I)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    iget-object v7, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mCurrentDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 49
    .line 50
    const/16 v8, 0x4e24

    .line 51
    .line 52
    invoke-virtual {v7, v8}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getIntOption(I)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    iget-object v8, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mCurrentDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 57
    .line 58
    const/16 v9, 0x4e21

    .line 59
    .line 60
    invoke-virtual {v8, v9}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getIntOption(I)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    iget-object v9, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mCurrentDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 65
    .line 66
    const/16 v10, 0x4e22

    .line 67
    .line 68
    invoke-virtual {v9, v10}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getIntOption(I)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_0
    move v6, v3

    .line 77
    move v7, v6

    .line 78
    move v8, v4

    .line 79
    move v9, v5

    .line 80
    :goto_0
    const-string/jumbo v10, "width"

    .line 81
    .line 82
    .line 83
    const/high16 v11, -0x40800000    # -1.0f

    .line 84
    .line 85
    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    const/4 v11, 0x0

    .line 90
    cmpl-float v11, v10, v11

    .line 91
    .line 92
    if-lez v11, :cond_1

    .line 93
    .line 94
    int-to-float v6, v4

    .line 95
    mul-float/2addr v10, v6

    .line 96
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    const-string v7, "height"

    .line 101
    .line 102
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    int-to-float v9, v5

    .line 107
    mul-float/2addr v7, v9

    .line 108
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    const-string/jumbo v10, "x"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    mul-float/2addr v10, v6

    .line 120
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    const-string/jumbo v10, "y"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    mul-float/2addr v10, v9

    .line 132
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    move v12, v7

    .line 137
    move v11, v8

    .line 138
    move v7, v9

    .line 139
    goto :goto_1

    .line 140
    :cond_1
    move v11, v8

    .line 141
    move v12, v9

    .line 142
    :goto_1
    iget v8, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 143
    .line 144
    sget-object v9, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 145
    .line 146
    new-instance v10, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v13, "async saveframe = "

    .line 152
    .line 153
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v13, ", "

    .line 160
    .line 161
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v13, " viewW:"

    .line 168
    .line 169
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v4, " viewH:"

    .line 176
    .line 177
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-static {v8, v9, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    mul-int v4, v11, v12

    .line 191
    .line 192
    mul-int/lit8 v4, v4, 0x4

    .line 193
    .line 194
    const-string v5, "reuse_buffer"

    .line 195
    .line 196
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_4

    .line 201
    .line 202
    iget-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mSaveFrameBuffer:Ljava/nio/ByteBuffer;

    .line 203
    .line 204
    if-eqz p1, :cond_2

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-ge p1, v4, :cond_3

    .line 211
    .line 212
    :cond_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iput-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mSaveFrameBuffer:Ljava/nio/ByteBuffer;

    .line 217
    .line 218
    :cond_3
    iget-object p1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mSaveFrameBuffer:Ljava/nio/ByteBuffer;

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_4
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 226
    .line 227
    .line 228
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 229
    .line 230
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 234
    .line 235
    .line 236
    const/16 v8, 0x1908

    .line 237
    .line 238
    const/16 v9, 0x1401

    .line 239
    .line 240
    move v4, v6

    .line 241
    move v5, v7

    .line 242
    move v6, v11

    .line 243
    move v7, v12

    .line 244
    move-object v10, p1

    .line 245
    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 246
    .line 247
    .line 248
    iget v4, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 249
    .line 250
    invoke-static {v4, v0}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_5

    .line 255
    .line 256
    invoke-virtual {v1, v4, v3, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 260
    .line 261
    .line 262
    mul-int/lit8 v0, v11, 0x4

    .line 263
    .line 264
    new-array v1, v0, [B

    .line 265
    .line 266
    move v4, v3

    .line 267
    :goto_3
    div-int/lit8 v5, v12, 0x2

    .line 268
    .line 269
    if-ge v4, v5, :cond_6

    .line 270
    .line 271
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 283
    .line 284
    .line 285
    move-result v7

    .line 286
    sub-int/2addr v6, v7

    .line 287
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    sub-int/2addr v8, v0

    .line 296
    invoke-static {v5, v6, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    sub-int/2addr v6, v7

    .line 312
    invoke-static {v1, v3, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    .line 314
    .line 315
    add-int/lit8 v4, v4, 0x1

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 319
    .line 320
    .line 321
    invoke-interface {v2, p1, v11, v12}, Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;->onFrame(Ljava/nio/ByteBuffer;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :goto_4
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 326
    .line 327
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 328
    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v5, "save frame failed "

    .line 335
    .line 336
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-static {v0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    const/4 p1, 0x0

    .line 354
    invoke-interface {v2, p1, v3, v3}, Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;->onFrame(Ljava/nio/ByteBuffer;II)I

    .line 355
    .line 356
    .line 357
    :cond_7
    :goto_5
    return-void
.end method

.method private setEffect(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 4
    .line 5
    sget-object p2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "set effect but missing bundle?"

    .line 8
    .line 9
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "action"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x15

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/16 p2, 0x97

    .line 28
    .line 29
    if-eq v0, p2, :cond_1

    .line 30
    .line 31
    const-string p2, "effect_type"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-direct {p0, p2}, Lcom/ss/texturerender/VideoTextureRenderer;->getEffect(I)Lcom/ss/texturerender/effect/AbsEffect;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    if-eqz p2, :cond_4

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p2, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->init(Landroid/os/Bundle;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ss/texturerender/VideoTextureRenderer;->releaseEffect(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/ss/texturerender/VideoTextureRenderer;->initEffect(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurfaceTexture;)I

    .line 60
    .line 61
    .line 62
    :cond_4
    :goto_0
    return-void
.end method

.method private setup2DGraphics()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 12
    .line 13
    const/4 v1, 0x7

    .line 14
    invoke-static {v0, v1}, Lcom/ss/texturerender/effect/EffectFactory;->createEffect(II)Lcom/ss/texturerender/effect/AbsEffect;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 25
    .line 26
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "create effect failed"

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->init(Landroid/os/Bundle;)I

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Lcom/ss/texturerender/effect/AbsEffect;->setParentRender(Lcom/ss/texturerender/TextureRenderer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :goto_1
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v1, v0}, Lcom/ss/texturerender/TextureRenderer;->notifyEGLError(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    return-void
.end method

.method private setupGraphics()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-static {v0, v1}, Lcom/ss/texturerender/effect/EffectFactory;->createEffect(II)Lcom/ss/texturerender/effect/AbsEffect;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 25
    .line 26
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "create effect failed"

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/GLOesTo2DFilter;->init(Landroid/os/Bundle;)I

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Lcom/ss/texturerender/effect/AbsEffect;->setParentRender(Lcom/ss/texturerender/TextureRenderer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :goto_1
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v1, v0}, Lcom/ss/texturerender/TextureRenderer;->notifyEGLError(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    return-void
.end method

.method private surfaceTextureUpdateImage(Lcom/ss/texturerender/VideoSurfaceTexture;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 5
    .line 6
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v2, "surface texture is null not draw"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->lock()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->isRelease()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 25
    .line 26
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string/jumbo v3, "surface texture is released not draw"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 35
    .line 36
    .line 37
    return v0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->updateTexImage()V

    .line 43
    .line 44
    .line 45
    iput-boolean v0, p1, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameReady:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    iget v2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 56
    .line 57
    sget-object v3, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string/jumbo v5, "surface texture no draw"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v2, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 85
    .line 86
    .line 87
    return v0

    .line 88
    :goto_1
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 89
    .line 90
    .line 91
    throw v0
.end method

.method private switchContextToMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;Ljava/lang/Boolean;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->isCurrentObject()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->isMakeCurrent()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget p2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 14
    .line 15
    sget-object v0, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "not active texture but already make current : "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p2, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->makeCurrent()Z

    .line 38
    .line 39
    .line 40
    iget p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 41
    .line 42
    sget-object p2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string/jumbo v0, "texture switch surface & playing "

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget p2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 52
    .line 53
    sget-object v0, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v2, "tex: "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, " not current object id "

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getOjbectId()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {p2, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->effectChainEnd()V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    return p1

    .line 93
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_2

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->makeCurrent()Z

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 103
    return p1
.end method

.method private updateTexImage(Lcom/ss/texturerender/VideoSurfaceTexture;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->lock()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->isRelease()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 12
    .line 13
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string/jumbo v3, "surface texture is released not draw"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->needDrop()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    return v0

    .line 39
    :cond_1
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 45
    .line 46
    .line 47
    return v0

    .line 48
    :goto_2
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 49
    .line 50
    .line 51
    throw v0
.end method


# virtual methods
.method protected deinitEffectComponents()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 11
    .line 12
    const/16 v3, 0x2715

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v2, v3, v1}, Lcom/ss/texturerender/effect/EffectConfig;->setEffectOpen(II)Lcom/ss/texturerender/effect/EffectConfig;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/16 v2, 0x10

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/ss/texturerender/effect/EffectConfig;->setEffectOpen(II)Lcom/ss/texturerender/effect/EffectConfig;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mVqscoreWrapper:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mMultiRenderTargetFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mMultiRenderTargetFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method protected deinitGLComponents()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 2
    .line 3
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "delete program"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mCurrentDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTexOesDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTex2dDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/FrameBuffer;->release()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mFrameBuffer:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 39
    .line 40
    :cond_2
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectTextureManager:Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTextureManager;->release()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectTextureManager:Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 48
    .line 49
    :cond_3
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mHardwareBuffer2GLFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mHardwareBuffer2GLFilter:Lcom/ss/texturerender/effect/AbsEffect;

    .line 57
    .line 58
    :cond_4
    return-void
.end method

.method public getExtraVideoSurfaceTexture()Lcom/ss/texturerender/VideoSurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTileVideoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOption(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "effect_type"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/ss/texturerender/VideoTextureRenderer;->getEffect(I)Lcom/ss/texturerender/effect/AbsEffect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/effect/AbsEffect;->getOption(Landroid/os/Bundle;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return-object p1
.end method

.method protected handleFrameAvailable(Landroid/os/Message;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTileVideoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/ss/texturerender/VideoTextureRenderer;->updateTexImage(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->checkGeometry()V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/ss/texturerender/RenderCheckDispatcher;->onSurfaceTextureCallbackCalled(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/ss/texturerender/RenderCheckDispatcher;->onFrameCome(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 33
    .line 34
    .line 35
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 36
    .line 37
    invoke-direct {p0, v0, v1}, Lcom/ss/texturerender/VideoTextureRenderer;->draw(Lcom/ss/texturerender/VideoSurfaceTexture;I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-direct {p0, p1}, Lcom/ss/texturerender/VideoTextureRenderer;->frameBufferCallback(Landroid/os/Message;)V

    .line 42
    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-direct {p0, p1}, Lcom/ss/texturerender/VideoTextureRenderer;->saveImage(Landroid/os/Message;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->render()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    long-to-float v2, v2

    .line 58
    const/16 v3, 0x7b

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getFloatOption(I)F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const/16 v5, 0x79

    .line 65
    .line 66
    invoke-virtual {v0, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/16 v7, 0x7a

    .line 71
    .line 72
    invoke-virtual {v0, v7}, Lcom/ss/texturerender/VideoSurfaceTexture;->getFloatOption(I)F

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    :cond_4
    const/4 v9, 0x1

    .line 81
    if-le v6, v9, :cond_5

    .line 82
    .line 83
    sub-float v4, v2, v4

    .line 84
    .line 85
    add-float/2addr v8, v4

    .line 86
    :cond_5
    invoke-virtual {v0, v5, v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v7, v8}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(IF)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(IF)V

    .line 93
    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    cmpl-float v2, v8, v2

    .line 97
    .line 98
    if-lez v2, :cond_6

    .line 99
    .line 100
    if-lez v6, :cond_6

    .line 101
    .line 102
    sub-int/2addr v6, v9

    .line 103
    int-to-float v2, v6

    .line 104
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 105
    .line 106
    mul-float/2addr v2, v3

    .line 107
    div-float/2addr v2, v8

    .line 108
    const/16 v3, 0x78

    .line 109
    .line 110
    invoke-virtual {v0, v3, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(IF)V

    .line 111
    .line 112
    .line 113
    :cond_6
    if-eqz v1, :cond_7

    .line 114
    .line 115
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lcom/ss/texturerender/RenderCheckDispatcher;->onDrawSucceed(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 121
    .line 122
    if-ne p1, v9, :cond_8

    .line 123
    .line 124
    monitor-enter v0

    .line 125
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 126
    .line 127
    .line 128
    monitor-exit v0

    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    throw p1

    .line 133
    :cond_8
    :goto_0
    return-void
.end method

.method protected handleGLThreadMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    if-eq v0, v1, :cond_5

    .line 6
    .line 7
    const/16 v1, 0x19

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/16 v1, 0x1a

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    packed-switch v0, :pswitch_data_1

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :pswitch_0
    invoke-direct {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->resetRotationMirrorParams()V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :pswitch_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    .line 30
    .line 31
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 32
    .line 33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :pswitch_2
    invoke-direct {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->resetCropParams()V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 52
    .line 53
    const-string v1, "float_value"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/VideoTextureRenderer;->_setValueToElement(IF)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 65
    .line 66
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 67
    .line 68
    invoke-direct {p0, v0, p1}, Lcom/ss/texturerender/VideoTextureRenderer;->_setValueToElement(II)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->handleUpdateVideoState(I)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoTextureRenderer;->mTopEffect:Lcom/ss/texturerender/effect/AbsEffect;

    .line 84
    .line 85
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 86
    .line 87
    invoke-virtual {v0, v2, p1}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(II)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string/jumbo v1, "surface"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/view/Surface;

    .line 103
    .line 104
    const-string/jumbo v3, "texture"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 112
    .line 113
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 114
    .line 115
    if-ne p1, v2, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->initExtraSurface(Landroid/view/Surface;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const/4 v2, 0x2

    .line 122
    if-ne p1, v2, :cond_4

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->releaseExtraSurface(Landroid/view/Surface;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    const/4 v1, 0x3

    .line 129
    if-ne p1, v1, :cond_6

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->releaseAllExtraSurface()V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    :pswitch_5
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 136
    .line 137
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string/jumbo v3, "setEffect bundle:"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v3, " surfacetexture:"

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p1, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 181
    .line 182
    invoke-direct {p0, v0, p1}, Lcom/ss/texturerender/VideoTextureRenderer;->setEffect(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    :goto_0
    return-void

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSetSurface(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const-string/jumbo v1, "texture"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->handleSurfaceChange(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 25
    .line 26
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string/jumbo v2, "texture switch surface & playing"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    monitor-enter p1

    .line 39
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 40
    .line 41
    .line 42
    monitor-exit p1

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v0

    .line 47
    :cond_1
    :goto_0
    iget p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 48
    .line 49
    sget-object v0, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v1, "set surface done"

    .line 52
    .line 53
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 58
    .line 59
    const-string/jumbo v0, "update surface but missing texture"

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 67
    .line 68
    const-string/jumbo v0, "update surface but missing bundle?"

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method protected initGLComponents()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->setupGraphics()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectConfig;->isOpenSR()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/ss/texturerender/VideoTextureRenderer;->setup2DGraphics()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method protected onInternalStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/ss/texturerender/TextureRenderer;->release()V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/ss/texturerender/VideoTextureRenderer;->mRenderInstance:Lcom/ss/texturerender/VideoTextureRenderer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method protected updateDisplaySize(II)V
    .locals 0

    .line 1
    return-void
.end method
