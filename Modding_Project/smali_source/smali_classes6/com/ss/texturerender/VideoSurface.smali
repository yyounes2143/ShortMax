.class public Lcom/ss/texturerender/VideoSurface;
.super Landroid/view/Surface;
.source "VideoSurface.java"

# interfaces
.implements Lcom/ss/texturerender/VideoSurfaceTexture$TextureDrawCallback;
.implements Lcom/ss/texturerender/VideoSurfaceTexture$TextureErrorCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/VideoSurface$VQScoreCallback;,
        Lcom/ss/texturerender/VideoSurface$FrameRenderCallback;,
        Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;,
        Lcom/ss/texturerender/VideoSurface$OnSetSurfaceListener;,
        Lcom/ss/texturerender/VideoSurface$OnErrorListenerExt;,
        Lcom/ss/texturerender/VideoSurface$OnErrorListener;,
        Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;,
        Lcom/ss/texturerender/VideoSurface$OnHeadposeChangedListener;,
        Lcom/ss/texturerender/VideoSurface$OnExtraSurfaceDrawListener;,
        Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;
    }
.end annotation


# static fields
.field public static final ERROR_SR_EXE_FAIL:I = 0x2

.field public static final ERROR_SR_INIT_FAIL:I = 0x1

.field private static final MSG_EFFECT_ERROR:I = 0x1001

.field private static final MSG_HEADPOSE_UPDATE:I = 0x1002

.field private static final MSG_TEXTURE_UPDATE:I = 0x1000

.field public static final OPERATE_ADD:I = 0x1

.field public static final OPERATE_RELEASE:I = 0x2

.field public static final OPERATE_RELEASE_ALL:I = 0x3

.field public static final SUPER_RES_CLOSE:I = 0x0

.field public static final SUPER_RES_NN_ALG:I = 0x2

.field public static final SUPER_RES_OPEN:I = 0x1

.field public static final SUPER_RES_STAT_1_5:I = 0x4

.field public static final SUPER_RES_STAT_ALG_R:I = 0x0

.field public static final SUPER_RES_STAT_ALG_V:I = 0x1

.field public static final SUPER_RES_STAT_BMF_BACKEND_AUTO:I = 0x0

.field public static final SUPER_RES_STAT_BMF_BACKEND_CPU:I = 0x1

.field public static final SUPER_RES_STAT_BMF_BACKEND_DSP:I = 0x4

.field public static final SUPER_RES_STAT_BMF_BACKEND_OPENCL:I = 0x2

.field public static final SUPER_RES_STAT_BMF_BACKEND_OPENGL:I = 0x3

.field public static final SUPER_RES_STAT_BMF_SRV1:I = 0x8

.field public static final SUPER_RES_STAT_BMF_SRV1_COMPOUND_OPT:I = 0xd

.field public static final SUPER_RES_STAT_BMF_SRV1_COMPOUND_YUV:I = 0xc

.field public static final SUPER_RES_STAT_BMF_SRV1_OPT:I = 0xa

.field public static final SUPER_RES_STAT_BMF_SRV1_OPT_YUV:I = 0xb

.field public static final SUPER_RES_STAT_BMF_SRV2:I = 0x9

.field public static final SUPER_RES_STAT_BMF_SRV3_4_OPT_OES:I = 0x11

.field public static final SUPER_RES_STAT_BMF_SR_HP_V4_1:I = 0x12

.field public static final SUPER_RES_STAT_BMF_SR_HP_V6_1:I = 0x13

.field public static final SUPER_RES_STAT_BMF_V1:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPER_RES_STAT_BMF_V1_OPT:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPER_RES_STAT_BMF_V2:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPER_SCALE_TYPE_1_1:I = 0x4

.field public static final SUPER_SCALE_TYPE_1_2:I = 0x8

.field public static final SUPER_SCALE_TYPE_1_3:I = 0x10

.field public static final SUPER_SCALE_TYPE_1_4:I = 0x20

.field public static final SUPER_SCALE_TYPE_1_5:I = 0x1

.field public static final SUPER_SCALE_TYPE_2_0:I = 0x0

.field public static final SUPER_SCALE_TYPE_2_0_NEW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoSurface"


# instance fields
.field private mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

.field private mDrawFrameListener:Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;

.field private mEnableNoRenderCheck:Z

.field private mErrorListenerExts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/texturerender/VideoSurface$OnErrorListenerExt;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/texturerender/VideoSurface$OnErrorListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mExtraSurfaceDrawFrameListener:Lcom/ss/texturerender/VideoSurface$OnExtraSurfaceDrawListener;

.field private mHandlerObject:Ljava/lang/Object;

.field private mHeadposeChangedListener:Lcom/ss/texturerender/VideoSurface$OnHeadposeChangedListener;

.field private mMsgObjectBundle:Landroid/os/Bundle;

.field private mNotifyHandler:Landroid/os/Handler;

.field private mOnSetSurfaceListener:Lcom/ss/texturerender/VideoSurface$OnSetSurfaceListener;

.field private mQuatW:F

.field private mQuatX:F

.field private mQuatY:F

.field private mQuatZ:F

.field private mRenderChecker:Lcom/ss/texturerender/FrameRenderChecker;

.field private mRenderDevice:I

.field protected mSurfaceHeight:I

.field private mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

.field private mSurfaceTexturePicoListener:Lcom/ss/texturerender/VideoSurfaceTexturePicoInterface;

.field protected mSurfaceWidth:I

.field private mTexType:I


# direct methods
.method public constructor <init>(Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexturePicoListener:Lcom/ss/texturerender/VideoSurfaceTexturePicoInterface;

    .line 3
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListeners:Ljava/util/ArrayList;

    .line 4
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListenerExts:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mTexType:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatX:F

    .line 7
    iput v1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatY:F

    .line 8
    iput v1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatZ:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatW:F

    .line 10
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mRenderDevice:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceWidth:I

    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceHeight:I

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/VideoSurface;->init(Lcom/ss/texturerender/VideoSurfaceTexture;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/VideoSurfaceTexture;Z)V
    .locals 2

    .line 13
    invoke-direct {p0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexturePicoListener:Lcom/ss/texturerender/VideoSurfaceTexturePicoInterface;

    .line 15
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListeners:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListenerExts:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mTexType:I

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatX:F

    .line 19
    iput v1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatY:F

    .line 20
    iput v1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatZ:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    iput v1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatW:F

    .line 22
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mRenderDevice:I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceWidth:I

    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceHeight:I

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/ss/texturerender/VideoSurface;->init(Lcom/ss/texturerender/VideoSurfaceTexture;Z)V

    return-void
.end method

.method private init(Lcom/ss/texturerender/VideoSurfaceTexture;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move-object p2, p1

    .line 6
    check-cast p2, Lcom/ss/texturerender/VideoSurfaceTexturePicoInterface;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexturePicoListener:Lcom/ss/texturerender/VideoSurfaceTexturePicoInterface;

    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->texType()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iput p2, p0, Lcom/ss/texturerender/VideoSurface;->mTexType:I

    .line 17
    .line 18
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    new-instance p2, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mNotifyHandler:Landroid/os/Handler;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    new-instance p2, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p2, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mNotifyHandler:Landroid/os/Handler;

    .line 42
    .line 43
    :goto_0
    new-instance p2, Ljava/lang/Object;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mHandlerObject:Ljava/lang/Object;

    .line 49
    .line 50
    new-instance p2, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    .line 56
    .line 57
    new-instance p2, Lcom/ss/texturerender/FrameRenderChecker;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 60
    .line 61
    invoke-direct {p2, v0, p1}, Lcom/ss/texturerender/FrameRenderChecker;-><init>(Lcom/ss/texturerender/RenderCheckDispatcher;Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mRenderChecker:Lcom/ss/texturerender/FrameRenderChecker;

    .line 65
    .line 66
    return-void
.end method

.method private declared-synchronized releaseTexture()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->releaseOffScreenSurface(Z)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method


# virtual methods
.method public drawImage(Landroid/graphics/Bitmap;)I
    .locals 3

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
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/ss/texturerender/VideoSurface;->updateTexDimension(II)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return p1

    .line 50
    :cond_1
    :goto_0
    iget p1, p0, Lcom/ss/texturerender/VideoSurface;->mTexType:I

    .line 51
    .line 52
    const-string v0, "VideoSurface"

    .line 53
    .line 54
    const-string v1, "drawImage error"

    .line 55
    .line 56
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, -0x1

    .line 60
    return p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ss/texturerender/VideoSurface;->releaseTexture()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/Surface;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public frameMetaCallback(JJLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->frameMetaCallback(JJLjava/util/Map;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public getExtraVideoSurface()Lcom/ss/texturerender/VideoSurface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getExtraVideoSurfaceTexture()Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getOffScreenSurface()Lcom/ss/texturerender/VideoSurface;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    return-object v1
.end method

.method public getFloatOption(I)F
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/texturerender/VideoSurface;->getFloatOption(II)F

    move-result p1

    return p1

    .line 2
    :pswitch_0
    iget p1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatW:F

    return p1

    .line 3
    :pswitch_1
    iget p1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatZ:F

    return p1

    .line 4
    :pswitch_2
    iget p1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatY:F

    return p1

    .line 5
    :pswitch_3
    iget p1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatX:F

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFloatOption(II)F
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getFloatOption(II)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFovResult()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexturePicoListener:Lcom/ss/texturerender/VideoSurfaceTexturePicoInterface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/texturerender/VideoSurfaceTexturePicoInterface;->getFovResult()[I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getFrameProducer()Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getFrameProducer()Lcom/ss/texturerender/producer/IFrameProducer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/media/ImageReader$OnImageAvailableListener;

    .line 12
    .line 13
    return-object v0
.end method

.method public getIntOption(I)I
    .locals 1

    const/16 v0, 0x85

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/texturerender/VideoSurface;->getIntOption(II)I

    move-result p1

    return p1

    .line 2
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/VideoSurface;->mRenderDevice:I

    return p1
.end method

.method public getIntOption(II)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getLongOption(I)J
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/texturerender/VideoSurface;->getLongOption(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongOption(II)J
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getLongOption(II)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public getOption(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getOption(Landroid/os/Bundle;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getRenderSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getRenderSurface()Landroid/view/Surface;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getRenderhandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getRenderHandler()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/texturerender/VideoSurface;->getStringOption(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringOption(II)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x77

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getStringOption(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-string p1, ""

    return-object p1

    .line 5
    :cond_1
    const-string p1, "3.58.11-tob"

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v1, "quaternion_w"

    .line 4
    .line 5
    const-string v2, "quaternion_z"

    .line 6
    .line 7
    const-string v3, "quaternion_y"

    .line 8
    .line 9
    const-string v4, "quaternion_x"

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mHeadposeChangedListener:Lcom/ss/texturerender/VideoSurface$OnHeadposeChangedListener;

    .line 17
    .line 18
    if-eqz v0, :cond_6

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mQuatX:F

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mQuatY:F

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mQuatZ:F

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatW:F

    .line 53
    .line 54
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mHeadposeChangedListener:Lcom/ss/texturerender/VideoSurface$OnHeadposeChangedListener;

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    new-instance v10, Lcom/ss/texturerender/math/Quaternion;

    .line 59
    .line 60
    iget v1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatX:F

    .line 61
    .line 62
    float-to-double v2, v1

    .line 63
    iget v1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatY:F

    .line 64
    .line 65
    float-to-double v4, v1

    .line 66
    iget v1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatZ:F

    .line 67
    .line 68
    float-to-double v6, v1

    .line 69
    float-to-double v8, p1

    .line 70
    move-object v1, v10

    .line 71
    invoke-direct/range {v1 .. v9}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v10}, Lcom/ss/texturerender/VideoSurface$OnHeadposeChangedListener;->onHeadposeChanged(Lcom/ss/texturerender/math/Quaternion;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 80
    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 86
    .line 87
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 88
    .line 89
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListeners:Ljava/util/ArrayList;

    .line 96
    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_2

    .line 108
    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lcom/ss/texturerender/VideoSurface$OnErrorListener;

    .line 114
    .line 115
    invoke-interface {v3, v0}, Lcom/ss/texturerender/VideoSurface$OnErrorListener;->onError(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListenerExts:Ljava/util/ArrayList;

    .line 120
    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_6

    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Lcom/ss/texturerender/VideoSurface$OnErrorListenerExt;

    .line 138
    .line 139
    invoke-virtual {v3, v0, v1, p1}, Lcom/ss/texturerender/VideoSurface$OnErrorListenerExt;->onError(IILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mDrawFrameListener:Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;

    .line 144
    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 148
    .line 149
    if-nez v0, :cond_3

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getSerial()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eq v5, v0, :cond_4

    .line 159
    .line 160
    iget p1, p0, Lcom/ss/texturerender/VideoSurface;->mTexType:I

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v2, "serial change :"

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v2, ", "

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v1, "VideoSurface"

    .line 188
    .line 189
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    const-string/jumbo v0, "timeStamp"

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 201
    .line 202
    .line 203
    move-result-wide v5

    .line 204
    const-string/jumbo v0, "surface"

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    if-nez v7, :cond_5

    .line 212
    .line 213
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mQuatX:F

    .line 218
    .line 219
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mQuatY:F

    .line 224
    .line 225
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    iput v0, p0, Lcom/ss/texturerender/VideoSurface;->mQuatZ:F

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    iput p1, p0, Lcom/ss/texturerender/VideoSurface;->mQuatW:F

    .line 236
    .line 237
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mDrawFrameListener:Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;

    .line 238
    .line 239
    if-eqz p1, :cond_6

    .line 240
    .line 241
    invoke-interface {p1, v5, v6}, Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;->onDraw(J)V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Landroid/view/Surface;

    .line 250
    .line 251
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mExtraSurfaceDrawFrameListener:Lcom/ss/texturerender/VideoSurface$OnExtraSurfaceDrawListener;

    .line 252
    .line 253
    if-eqz v0, :cond_6

    .line 254
    .line 255
    invoke-interface {v0, p1, v5, v6}, Lcom/ss/texturerender/VideoSurface$OnExtraSurfaceDrawListener;->onExtraSurfaceDraw(Landroid/view/Surface;J)V

    .line 256
    .line 257
    .line 258
    :cond_6
    :goto_2
    const/4 p1, 0x1

    .line 259
    return p1

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ignoreSRResolutionCheck(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->ignoreSRResolutionCheck(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public isUpdateFrame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->isUpdateFrame()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public onHeadposeChanged(IFFFF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mHeadposeChangedListener:Lcom/ss/texturerender/VideoSurface$OnHeadposeChangedListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mHandlerObject:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurface;->mNotifyHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/16 v2, 0x1002

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    .line 18
    .line 19
    const-string v3, "quaternion_x"

    .line 20
    .line 21
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    .line 25
    .line 26
    const-string v2, "quaternion_y"

    .line 27
    .line 28
    invoke-virtual {p2, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string p3, "quaternion_z"

    .line 34
    .line 35
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    .line 39
    .line 40
    const-string p3, "quaternion_w"

    .line 41
    .line 42
    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 43
    .line 44
    .line 45
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 46
    .line 47
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method

.method public onTextureRenderError(IILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListenerExts:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mHandlerObject:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurface;->mNotifyHandler:Landroid/os/Handler;

    .line 26
    .line 27
    const/16 v2, 0x1001

    .line 28
    .line 29
    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1

    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public onTextureUpdate(IFFFF)V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mDrawFrameListener:Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mHandlerObject:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurface;->mNotifyHandler:Landroid/os/Handler;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    const-string v3, "quaternion_x"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 13
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    const-string v2, "quaternion_y"

    invoke-virtual {p2, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 14
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    const-string p3, "quaternion_z"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 15
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    const-string p3, "quaternion_w"

    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 16
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 17
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTextureUpdate(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mDrawFrameListener:Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mHandlerObject:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurface;->mNotifyHandler:Landroid/os/Handler;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "timeStamp"

    invoke-virtual {v2, v3, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 6
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mMsgObjectBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTextureUpdate(ILandroid/view/Surface;J)V
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mDrawFrameListener:Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mHandlerObject:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurface;->mNotifyHandler:Landroid/os/Handler;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 23
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-string/jumbo v3, "timeStamp"

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 25
    const-string/jumbo p3, "surface"

    invoke-virtual {v2, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 27
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public pause(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->pause(ZZ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public preRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->preRender()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurface;->mTexType:I

    .line 2
    .line 3
    const-string v1, "VideoSurface"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v3, "release"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mRenderChecker:Lcom/ss/texturerender/FrameRenderChecker;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/ss/texturerender/FrameRenderChecker;->stop()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/ss/texturerender/VideoSurface;->releaseTexture()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mHandlerObject:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    const/4 v1, 0x0

    .line 40
    :try_start_0
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurface;->mDrawFrameListener:Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurface;->mNotifyHandler:Landroid/os/Handler;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListeners:Ljava/util/ArrayList;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListenerExts:Ljava/util/ArrayList;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 59
    .line 60
    .line 61
    :cond_1
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw v1
.end method

.method public saveFrame()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/ss/texturerender/VideoSurface;->saveFrame(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public saveFrame(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;)Landroid/graphics/Bitmap;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->saveFrame(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultSize(II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setEffect(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->setEffect(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setExtraRenderSurface(Landroid/view/Surface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setExtraSurface(Landroid/view/Surface;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFloatOption(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(IF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFrameRenderChecker(Lcom/ss/texturerender/RenderCheckDispatcher;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/ss/texturerender/VideoSurface;->mEnableNoRenderCheck:Z

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/ss/texturerender/RenderCheckDispatcher;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mRenderChecker:Lcom/ss/texturerender/FrameRenderChecker;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/FrameRenderChecker;->setCheckDispatcher(Lcom/ss/texturerender/RenderCheckDispatcher;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setIntOption(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_5

    .line 3
    .line 4
    const/16 v1, 0x85

    .line 5
    .line 6
    if-eq p1, v1, :cond_4

    .line 7
    .line 8
    const/16 v1, 0x21

    .line 9
    .line 10
    if-eq p1, v1, :cond_2

    .line 11
    .line 12
    const/16 v1, 0x22

    .line 13
    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 17
    .line 18
    if-eqz v0, :cond_6

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    if-ne p2, v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurface;->mEnableNoRenderCheck:Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 31
    .line 32
    if-eqz p1, :cond_6

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/ss/texturerender/RenderCheckDispatcher;->setEnabled(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    if-ne p2, v0, :cond_3

    .line 39
    .line 40
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mRenderChecker:Lcom/ss/texturerender/FrameRenderChecker;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/ss/texturerender/FrameRenderChecker;->start()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mRenderChecker:Lcom/ss/texturerender/FrameRenderChecker;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/ss/texturerender/FrameRenderChecker;->stop()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    iget p1, p0, Lcom/ss/texturerender/VideoSurface;->mRenderDevice:I

    .line 53
    .line 54
    if-eq p1, v0, :cond_6

    .line 55
    .line 56
    iput p2, p0, Lcom/ss/texturerender/VideoSurface;->mRenderDevice:I

    .line 57
    .line 58
    iget p1, p0, Lcom/ss/texturerender/VideoSurface;->mTexType:I

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v0, "render device:"

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v0, p0, Lcom/ss/texturerender/VideoSurface;->mRenderDevice:I

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const-string v0, "VideoSurface"

    .line 80
    .line 81
    invoke-static {p1, v0, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->updateVideoState(I)V

    .line 90
    .line 91
    .line 92
    :cond_6
    :goto_1
    return-void
.end method

.method public setIsPicoVRScene(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexturePicoListener:Lcom/ss/texturerender/VideoSurfaceTexturePicoInterface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/texturerender/VideoSurfaceTexturePicoInterface;->setIsPicoVRScene(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setLooper(Landroid/os/Looper;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mNotifyHandler:Landroid/os/Handler;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setNoRenderListener(Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mRenderChecker:Lcom/ss/texturerender/FrameRenderChecker;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/FrameRenderChecker;->setListener(Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setObjectOption(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnDrawFrameListener(Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mDrawFrameListener:Lcom/ss/texturerender/VideoSurface$OnDrawFrameListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnErrorListener(Lcom/ss/texturerender/VideoSurface$OnErrorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListeners:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public setOnErrorListenerExt(Lcom/ss/texturerender/VideoSurface$OnErrorListenerExt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListenerExts:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListenerExts:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListenerExts:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mErrorListenerExts:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public setOnExtraSurfaceDrawListener(Lcom/ss/texturerender/VideoSurface$OnExtraSurfaceDrawListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mExtraSurfaceDrawFrameListener:Lcom/ss/texturerender/VideoSurface$OnExtraSurfaceDrawListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnHeadposeChangedListener(Lcom/ss/texturerender/VideoSurface$OnHeadposeChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mHeadposeChangedListener:Lcom/ss/texturerender/VideoSurface$OnHeadposeChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSetSurfaceListener(Lcom/ss/texturerender/VideoSurface$OnSetSurfaceListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurface;->mOnSetSurfaceListener:Lcom/ss/texturerender/VideoSurface$OnSetSurfaceListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSuperResolutionInitConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/ss/texturerender/VideoSurfaceTexture;->setSuperResolutionConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSuperResolutionInitConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcom/ss/texturerender/VideoSurfaceTexture;->setSuperResolutionConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSuperResolutionInitConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 6
    invoke-virtual/range {v0 .. v7}, Lcom/ss/texturerender/VideoSurfaceTexture;->setSuperResolutionConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSuperResolutionMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->setSuperResolutionMode(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setSurfaceDimensions(II)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceWidth:I

    .line 2
    .line 3
    iput p2, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceHeight:I

    .line 4
    .line 5
    iget v0, p0, Lcom/ss/texturerender/VideoSurface;->mTexType:I

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "setSurfaceDimensions,W:"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ",H:"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "VideoSurface"

    .line 34
    .line 35
    invoke-static {v0, p2, p1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public supportProcessResolution(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->supportProcessResolution(II)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public updatePicoTextureObjMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ss/texturerender/effect/PicoTextureObj;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexturePicoListener:Lcom/ss/texturerender/VideoSurfaceTexturePicoInterface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/texturerender/VideoSurfaceTexturePicoInterface;->updatePicoTextureObj(Ljava/util/HashMap;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public updateRenderSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mOnSetSurfaceListener:Lcom/ss/texturerender/VideoSurface$OnSetSurfaceListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Lcom/ss/texturerender/VideoSurface$OnSetSurfaceListener;->onSetSurface(Lcom/ss/texturerender/VideoSurface;Landroid/view/Surface;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->updateSurface(Landroid/view/Surface;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public updateTexDimension(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurface;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->updateTexDimension(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public updateVRQuaternion(FFFF)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->updateVRCameraForaward(FFFF)V

    return-void
.end method

.method public updateVRQuaternion(FFFFI)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->updateVRQuaternion(FFFFI)V

    return-void
.end method

.method public updateVRQuaternion(FFFFI[II)V
    .locals 0

    .line 3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->updateVRQuaternion(FFFFI)V

    .line 4
    invoke-static {p6, p7}, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->updateVRSubIndex([II)V

    return-void
.end method
