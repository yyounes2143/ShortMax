.class public Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;
.super Lcom/ss/texturerender/TextureRenderer;
.source "OverlayVideoTextureRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;
    }
.end annotation


# static fields
.field private static ALL_VIDEO_STREAM_NUM:I = 0x2

.field private static DROP_NUM_THRESHOLD:I = 0x3

.field private static DROP_THRESHOLD_MS:I = 0x1f4

.field private static final LOG_TAG:Ljava/lang/String; = "OverlayVideoTextureRenderer"


# instance fields
.field private mAvailCount:I

.field private mClock:Lcom/ss/texturerender/overlay/NormalClock;

.field private mCurrentSurface:Landroid/view/Surface;

.field private mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mFBO:Lcom/ss/texturerender/effect/FrameBuffer;

.field private mFBOTexH:I

.field private mFBOTexW:I

.field private mIsMakeCurrent:Z

.field private mIsOverlayRatioChanged:Z

.field private mIsVsyncWorking:Z

.field private mMainFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

.field private mMainSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

.field private mMainTex:Lcom/ss/texturerender/ITexture;

.field private mMainTexVerticesData:[F

.field private mMainVideoFastDropNum:I

.field private mNeedSync:Z

.field private mOESDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

.field private mOverlayRatio:F

.field private mReadySurfaceTextureVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSubFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

.field private mSubTex:Lcom/ss/texturerender/ITexture;

.field private mSubTexVerticesData:[F

.field private mSubVideoFastDropNum:I

.field private mTexType:I

.field private mTextureNotifyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ss/texturerender/VideoSurfaceTexture;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mTid:J

.field private mUpdateSurfaceTime:J

.field private mVsyncCallback:Lcom/ss/texturerender/vsync/VsyncHelper$VsyncCallback;

.field private mVsyncHelper:Lcom/ss/texturerender/vsync/VsyncHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/effect/EffectConfig;I)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;-><init>(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)V

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

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ss/texturerender/TextureRenderer;-><init>(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mCurrentSurface:Landroid/view/Surface;

    .line 3
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsMakeCurrent:Z

    .line 5
    iput p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mAvailCount:I

    .line 6
    iput-boolean p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsVsyncWorking:Z

    .line 7
    iput p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBOTexH:I

    .line 8
    iput p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBOTexW:I

    const/high16 p3, 0x3f000000    # 0.5f

    .line 9
    iput p3, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOverlayRatio:F

    .line 10
    iput-boolean p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsOverlayRatioChanged:Z

    .line 11
    iput-boolean p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mNeedSync:Z

    .line 12
    iput p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainVideoFastDropNum:I

    .line 13
    iput p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubVideoFastDropNum:I

    .line 14
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTextureNotifyMap:Ljava/util/HashMap;

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 16
    new-instance p1, Ljava/util/Vector;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mReadySurfaceTextureVector:Ljava/util/Vector;

    .line 17
    new-instance p1, Lcom/ss/texturerender/vsync/VsyncHelper;

    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    move-result-object p3

    iget p4, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    invoke-direct {p1, p3, p4}, Lcom/ss/texturerender/vsync/VsyncHelper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mVsyncHelper:Lcom/ss/texturerender/vsync/VsyncHelper;

    .line 18
    new-instance p1, Lcom/ss/texturerender/overlay/FrameTimeQueue;

    invoke-direct {p1}, Lcom/ss/texturerender/overlay/FrameTimeQueue;-><init>()V

    iput-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 19
    new-instance p1, Lcom/ss/texturerender/overlay/FrameTimeQueue;

    invoke-direct {p1}, Lcom/ss/texturerender/overlay/FrameTimeQueue;-><init>()V

    iput-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 20
    iput p2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 21
    new-instance p1, Lcom/ss/texturerender/overlay/NormalClock;

    invoke-direct {p1, p2}, Lcom/ss/texturerender/overlay/NormalClock;-><init>(I)V

    iput-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mClock:Lcom/ss/texturerender/overlay/NormalClock;

    .line 22
    iget p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    const-string p2, "OverlayVideoTextureRenderer"

    invoke-static {p1, p2, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _avSyncByVsync()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->getMasterTimeStamp()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mReadySurfaceTextureVector:Ljava/util/Vector;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_5

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;

    .line 22
    .line 23
    iget-object v4, v3, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->frameTime:Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 24
    .line 25
    iget-wide v4, v4, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;->pts:J

    .line 26
    .line 27
    sub-long/2addr v4, v0

    .line 28
    sget v6, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->DROP_THRESHOLD_MS:I

    .line 29
    .line 30
    int-to-long v6, v6

    .line 31
    cmp-long v6, v4, v6

    .line 32
    .line 33
    if-lez v6, :cond_2

    .line 34
    .line 35
    iget-object v6, v3, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 36
    .line 37
    invoke-direct {p0, v6}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    iget v6, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainVideoFastDropNum:I

    .line 44
    .line 45
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    iput v6, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainVideoFastDropNum:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget v6, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubVideoFastDropNum:I

    .line 51
    .line 52
    add-int/lit8 v6, v6, 0x1

    .line 53
    .line 54
    iput v6, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubVideoFastDropNum:I

    .line 55
    .line 56
    :goto_1
    sget v7, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->DROP_NUM_THRESHOLD:I

    .line 57
    .line 58
    if-gt v6, v7, :cond_1

    .line 59
    .line 60
    sget v6, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->NEED_DROP:I

    .line 61
    .line 62
    iput v6, v3, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->status:I

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    sget v6, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->NEED_NOT_DRAW:I

    .line 66
    .line 67
    iput v6, v3, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->status:I

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const-wide/32 v6, 0xf4240

    .line 71
    .line 72
    .line 73
    mul-long/2addr v6, v4

    .line 74
    iget-object v8, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mVsyncHelper:Lcom/ss/texturerender/vsync/VsyncHelper;

    .line 75
    .line 76
    invoke-virtual {v8}, Lcom/ss/texturerender/vsync/VsyncHelper;->getVsyncDurationNs()J

    .line 77
    .line 78
    .line 79
    move-result-wide v8

    .line 80
    const-wide/16 v10, -0x2

    .line 81
    .line 82
    mul-long/2addr v8, v10

    .line 83
    cmp-long v8, v6, v8

    .line 84
    .line 85
    if-gez v8, :cond_3

    .line 86
    .line 87
    sget v6, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->NEED_DROP:I

    .line 88
    .line 89
    iput v6, v3, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->status:I

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iget-object v8, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mVsyncHelper:Lcom/ss/texturerender/vsync/VsyncHelper;

    .line 93
    .line 94
    invoke-virtual {v8}, Lcom/ss/texturerender/vsync/VsyncHelper;->getVsyncDurationNs()J

    .line 95
    .line 96
    .line 97
    move-result-wide v8

    .line 98
    cmp-long v6, v6, v8

    .line 99
    .line 100
    if-lez v6, :cond_4

    .line 101
    .line 102
    sget v6, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->NEED_NOT_DRAW:I

    .line 103
    .line 104
    iput v6, v3, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->status:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    sget v6, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->NEED_DRAW:I

    .line 108
    .line 109
    iput v6, v3, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->status:I

    .line 110
    .line 111
    :goto_2
    iget v6, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 112
    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v8, "_avSyncByVsync pts:"

    .line 119
    .line 120
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v8, v3, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->frameTime:Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 124
    .line 125
    iget-wide v8, v8, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;->pts:J

    .line 126
    .line 127
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v8, " master:"

    .line 131
    .line 132
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v8, " diff:"

    .line 139
    .line 140
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v4, " isMainSurface:"

    .line 147
    .line 148
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v4, v3, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 152
    .line 153
    invoke-direct {p0, v4}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v4, " status:"

    .line 161
    .line 162
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget v3, v3, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->status:I

    .line 166
    .line 167
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    const-string v4, "OverlayVideoTextureRenderer"

    .line 175
    .line 176
    invoke-static {v6, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_5
    return-void
.end method

.method private _draw()Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->_initFBOComponents()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mReadySurfaceTextureVector:Ljava/util/Vector;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const-string v5, "OverlayVideoTextureRenderer"

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;

    .line 27
    .line 28
    iget v6, v4, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->status:I

    .line 29
    .line 30
    sget v7, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->NEED_DRAW:I

    .line 31
    .line 32
    if-ne v6, v7, :cond_1

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget v7, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->NEED_DROP:I

    .line 38
    .line 39
    if-ne v6, v7, :cond_0

    .line 40
    .line 41
    iget v6, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 42
    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v8, "_draw drop isMainSurface:"

    .line 49
    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v8, v4, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 54
    .line 55
    invoke-direct {v0, v8}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-static {v6, v5, v7}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v5, v4, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 70
    .line 71
    invoke-direct {v0, v5}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->_updateTexImage(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, v4, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 75
    .line 76
    invoke-direct {v0, v4}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->notify(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-boolean v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mNeedSync:Z

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    sget v6, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->ALL_VIDEO_STREAM_NUM:I

    .line 88
    .line 89
    if-ge v3, v6, :cond_4

    .line 90
    .line 91
    :cond_3
    if-nez v1, :cond_5

    .line 92
    .line 93
    if-lez v3, :cond_5

    .line 94
    .line 95
    :cond_4
    const/4 v1, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_5
    move v1, v2

    .line 98
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->getConsumerWidth()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->getConsumerHeight()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    iget-object v8, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mReadySurfaceTextureVector:Ljava/util/Vector;

    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    const/16 v12, 0x2717

    .line 117
    .line 118
    const/16 v13, 0x2716

    .line 119
    .line 120
    const/16 v14, 0x32c8

    .line 121
    .line 122
    if-eqz v9, :cond_b

    .line 123
    .line 124
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    check-cast v9, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;

    .line 129
    .line 130
    iget v15, v9, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->status:I

    .line 131
    .line 132
    sget v10, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->NEED_DRAW:I

    .line 133
    .line 134
    if-ne v15, v10, :cond_a

    .line 135
    .line 136
    iget-object v10, v9, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 137
    .line 138
    invoke-direct {v0, v10}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    if-eqz v10, :cond_6

    .line 143
    .line 144
    iput v2, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainVideoFastDropNum:I

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    iput v2, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubVideoFastDropNum:I

    .line 148
    .line 149
    :goto_3
    iget-object v10, v9, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 150
    .line 151
    invoke-direct {v0, v10}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->_updateTexImage(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 152
    .line 153
    .line 154
    if-eqz v1, :cond_9

    .line 155
    .line 156
    iget-object v10, v9, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 157
    .line 158
    invoke-virtual {v10}, Lcom/ss/texturerender/VideoSurfaceTexture;->needDrop()Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-eqz v10, :cond_7

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_7
    iput-boolean v2, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mNeedSync:Z

    .line 166
    .line 167
    iget-object v10, v9, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 168
    .line 169
    invoke-virtual {v10}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTexId()Lcom/ss/texturerender/ITexture;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-interface {v10}, Lcom/ss/texturerender/ITexture;->lock()I

    .line 174
    .line 175
    .line 176
    move-result v18

    .line 177
    iget-object v15, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOESDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 178
    .line 179
    iget-object v2, v9, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 180
    .line 181
    invoke-direct {v0, v2}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_8

    .line 186
    .line 187
    iget-object v2, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTex:Lcom/ss/texturerender/ITexture;

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_8
    iget-object v2, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTex:Lcom/ss/texturerender/ITexture;

    .line 191
    .line 192
    :goto_4
    invoke-interface {v2}, Lcom/ss/texturerender/ITexture;->lock()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    iget-object v11, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBO:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 197
    .line 198
    invoke-virtual {v11, v4}, Lcom/ss/texturerender/effect/FrameBuffer;->bindTexture2D(I)I

    .line 199
    .line 200
    .line 201
    iget-object v4, v9, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 202
    .line 203
    invoke-virtual {v15, v4}, Lcom/ss/texturerender/effect/AbsEffect;->setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 204
    .line 205
    .line 206
    sget-object v4, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    .line 207
    .line 208
    invoke-virtual {v15, v14, v4}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(I[F)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v15, v13, v6}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v15, v12, v7}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 215
    .line 216
    .line 217
    const/4 v4, 0x1

    .line 218
    const/16 v11, 0x271a

    .line 219
    .line 220
    invoke-virtual {v15, v11, v4}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 221
    .line 222
    .line 223
    new-instance v4, Lcom/ss/texturerender/effect/EffectTexture;

    .line 224
    .line 225
    const/16 v20, -0x1

    .line 226
    .line 227
    const v21, 0x8d65

    .line 228
    .line 229
    .line 230
    const/16 v17, 0x0

    .line 231
    .line 232
    const/16 v19, -0x1

    .line 233
    .line 234
    move-object/from16 v16, v4

    .line 235
    .line 236
    invoke-direct/range {v16 .. v21}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 237
    .line 238
    .line 239
    const/4 v11, 0x0

    .line 240
    invoke-virtual {v15, v4, v11}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 241
    .line 242
    .line 243
    invoke-interface {v2}, Lcom/ss/texturerender/ITexture;->unlock()V

    .line 244
    .line 245
    .line 246
    invoke-interface {v10}, Lcom/ss/texturerender/ITexture;->unlock()V

    .line 247
    .line 248
    .line 249
    iget-object v2, v9, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 250
    .line 251
    invoke-direct {v0, v2}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->notify(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 252
    .line 253
    .line 254
    iget-object v2, v9, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 255
    .line 256
    invoke-virtual {v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getSerial()I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    invoke-virtual {v2, v4}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyRenderFrame(I)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 264
    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_9
    :goto_5
    iget-object v2, v9, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 268
    .line 269
    invoke-direct {v0, v2}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->notify(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 273
    .line 274
    .line 275
    :cond_a
    :goto_6
    const/4 v2, 0x0

    .line 276
    goto/16 :goto_2

    .line 277
    .line 278
    :cond_b
    if-nez v1, :cond_d

    .line 279
    .line 280
    iget-boolean v2, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsOverlayRatioChanged:Z

    .line 281
    .line 282
    if-eqz v2, :cond_c

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_c
    const/4 v4, 0x0

    .line 286
    goto :goto_8

    .line 287
    :cond_d
    :goto_7
    const/4 v4, 0x1

    .line 288
    :goto_8
    iget v2, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 289
    .line 290
    new-instance v8, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    const-string v9, "_draw needDrawCount:"

    .line 296
    .line 297
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v3, " needDrawToFBO:"

    .line 304
    .line 305
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v1, " needDrawToScreen"

    .line 312
    .line 313
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v1, " mNeedSync:"

    .line 320
    .line 321
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget-boolean v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mNeedSync:Z

    .line 325
    .line 326
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v2, v5, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    if-eqz v4, :cond_e

    .line 337
    .line 338
    const v1, 0x8d40

    .line 339
    .line 340
    .line 341
    const/4 v2, 0x0

    .line 342
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTexVerticesData:[F

    .line 346
    .line 347
    iget v3, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOverlayRatio:F

    .line 348
    .line 349
    const/4 v5, 0x2

    .line 350
    aput v3, v1, v5

    .line 351
    .line 352
    const/4 v5, 0x6

    .line 353
    aput v3, v1, v5

    .line 354
    .line 355
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 356
    .line 357
    const/16 v3, 0x2718

    .line 358
    .line 359
    invoke-virtual {v1, v3, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 360
    .line 361
    .line 362
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 363
    .line 364
    int-to-float v2, v6

    .line 365
    iget v5, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOverlayRatio:F

    .line 366
    .line 367
    mul-float/2addr v5, v2

    .line 368
    float-to-int v5, v5

    .line 369
    invoke-virtual {v1, v13, v5}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 370
    .line 371
    .line 372
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 373
    .line 374
    invoke-virtual {v1, v12, v7}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 378
    .line 379
    iget-object v5, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTexVerticesData:[F

    .line 380
    .line 381
    invoke-virtual {v1, v14, v5}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(I[F)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 385
    .line 386
    const/4 v5, 0x1

    .line 387
    const/16 v6, 0x271a

    .line 388
    .line 389
    invoke-virtual {v1, v6, v5}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 390
    .line 391
    .line 392
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTex:Lcom/ss/texturerender/ITexture;

    .line 393
    .line 394
    invoke-interface {v1}, Lcom/ss/texturerender/ITexture;->lock()I

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    new-instance v1, Lcom/ss/texturerender/effect/EffectTexture;

    .line 399
    .line 400
    const/4 v9, -0x1

    .line 401
    const/16 v10, 0xde1

    .line 402
    .line 403
    const/4 v6, 0x0

    .line 404
    const/4 v8, -0x1

    .line 405
    move-object v5, v1

    .line 406
    invoke-direct/range {v5 .. v10}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 407
    .line 408
    .line 409
    iget-object v5, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 410
    .line 411
    const/4 v6, 0x0

    .line 412
    invoke-virtual {v5, v1, v6}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 413
    .line 414
    .line 415
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTex:Lcom/ss/texturerender/ITexture;

    .line 416
    .line 417
    invoke-interface {v1}, Lcom/ss/texturerender/ITexture;->unlock()V

    .line 418
    .line 419
    .line 420
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTexVerticesData:[F

    .line 421
    .line 422
    iget v5, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOverlayRatio:F

    .line 423
    .line 424
    const/4 v6, 0x0

    .line 425
    aput v5, v1, v6

    .line 426
    .line 427
    const/4 v6, 0x4

    .line 428
    aput v5, v1, v6

    .line 429
    .line 430
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 431
    .line 432
    mul-float/2addr v5, v2

    .line 433
    float-to-int v5, v5

    .line 434
    invoke-virtual {v1, v3, v5}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 435
    .line 436
    .line 437
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 438
    .line 439
    const/high16 v3, 0x3f800000    # 1.0f

    .line 440
    .line 441
    iget v5, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOverlayRatio:F

    .line 442
    .line 443
    sub-float/2addr v3, v5

    .line 444
    mul-float/2addr v2, v3

    .line 445
    float-to-int v2, v2

    .line 446
    invoke-virtual {v1, v13, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 447
    .line 448
    .line 449
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 450
    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->getConsumerHeight()I

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    invoke-virtual {v1, v12, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 456
    .line 457
    .line 458
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 459
    .line 460
    iget-object v2, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTexVerticesData:[F

    .line 461
    .line 462
    invoke-virtual {v1, v14, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(I[F)V

    .line 463
    .line 464
    .line 465
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 466
    .line 467
    const/4 v2, 0x0

    .line 468
    const/16 v3, 0x271a

    .line 469
    .line 470
    invoke-virtual {v1, v3, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    .line 471
    .line 472
    .line 473
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTex:Lcom/ss/texturerender/ITexture;

    .line 474
    .line 475
    invoke-interface {v1}, Lcom/ss/texturerender/ITexture;->lock()I

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    new-instance v1, Lcom/ss/texturerender/effect/EffectTexture;

    .line 480
    .line 481
    const/4 v6, 0x0

    .line 482
    move-object v5, v1

    .line 483
    invoke-direct/range {v5 .. v10}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 484
    .line 485
    .line 486
    iget-object v2, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 487
    .line 488
    const/4 v3, 0x0

    .line 489
    invoke-virtual {v2, v1, v3}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 490
    .line 491
    .line 492
    iget-object v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTex:Lcom/ss/texturerender/ITexture;

    .line 493
    .line 494
    invoke-interface {v1}, Lcom/ss/texturerender/ITexture;->unlock()V

    .line 495
    .line 496
    .line 497
    const/4 v1, 0x0

    .line 498
    iput-boolean v1, v0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsOverlayRatioChanged:Z

    .line 499
    .line 500
    :cond_e
    return v4
.end method

.method private _dropAllFrames()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mReadySurfaceTextureVector:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;

    .line 18
    .line 19
    iget v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "_dropAllFrames isMain:"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v4, v1, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 32
    .line 33
    invoke-direct {p0, v4}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "OverlayVideoTextureRenderer"

    .line 45
    .line 46
    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v1, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 50
    .line 51
    invoke-direct {p0, v2}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->_updateTexImage(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v1, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 55
    .line 56
    invoke-direct {p0, v1}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->notify(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method private _initFBOComponents()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBO:Lcom/ss/texturerender/effect/FrameBuffer;

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
    iput-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBO:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTex:Lcom/ss/texturerender/ITexture;

    .line 13
    .line 14
    const/16 v1, 0xde1

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureFactory:Lcom/ss/texturerender/TextureFactory;

    .line 19
    .line 20
    iget v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/TextureFactory;->createTexture(II)Lcom/ss/texturerender/ITexture;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTex:Lcom/ss/texturerender/ITexture;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTex:Lcom/ss/texturerender/ITexture;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureFactory:Lcom/ss/texturerender/TextureFactory;

    .line 33
    .line 34
    iget v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/TextureFactory;->createTexture(II)Lcom/ss/texturerender/ITexture;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTex:Lcom/ss/texturerender/ITexture;

    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->getConsumerWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->getConsumerHeight()I

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-lez v0, :cond_7

    .line 51
    .line 52
    if-lez v11, :cond_7

    .line 53
    .line 54
    iget v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBOTexW:I

    .line 55
    .line 56
    if-ne v2, v0, :cond_3

    .line 57
    .line 58
    iget v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBOTexH:I

    .line 59
    .line 60
    if-eq v2, v11, :cond_7

    .line 61
    .line 62
    :cond_3
    iget v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v4, "_initFBOComponents surface H:"

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, " W:"

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, " mFBOTexH:"

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v4, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBOTexH:I

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v4, " mFBOTexW:"

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget v4, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBOTexW:I

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string v4, "OverlayVideoTextureRenderer"

    .line 110
    .line 111
    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTex:Lcom/ss/texturerender/ITexture;

    .line 115
    .line 116
    invoke-interface {v2}, Lcom/ss/texturerender/ITexture;->lock()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 121
    .line 122
    .line 123
    const/16 v9, 0x1401

    .line 124
    .line 125
    const/4 v10, 0x0

    .line 126
    const/16 v2, 0xde1

    .line 127
    .line 128
    const/4 v3, 0x0

    .line 129
    const/16 v4, 0x1908

    .line 130
    .line 131
    const/4 v7, 0x0

    .line 132
    const/16 v8, 0x1908

    .line 133
    .line 134
    move v5, v0

    .line 135
    move v6, v11

    .line 136
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTex:Lcom/ss/texturerender/ITexture;

    .line 140
    .line 141
    invoke-interface {v2}, Lcom/ss/texturerender/ITexture;->unlock()V

    .line 142
    .line 143
    .line 144
    iget v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 145
    .line 146
    const-string v3, "createTexture sub"

    .line 147
    .line 148
    invoke-static {v2, v3}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    const/4 v12, 0x0

    .line 153
    if-eqz v2, :cond_4

    .line 154
    .line 155
    iget-object v4, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 156
    .line 157
    if-eqz v4, :cond_4

    .line 158
    .line 159
    invoke-virtual {v4, v2, v12, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_4
    iget-object v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTex:Lcom/ss/texturerender/ITexture;

    .line 163
    .line 164
    if-eqz v2, :cond_5

    .line 165
    .line 166
    invoke-interface {v2}, Lcom/ss/texturerender/ITexture;->lock()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 171
    .line 172
    .line 173
    const/16 v9, 0x1401

    .line 174
    .line 175
    const/4 v10, 0x0

    .line 176
    const/16 v2, 0xde1

    .line 177
    .line 178
    const/4 v3, 0x0

    .line 179
    const/16 v4, 0x1908

    .line 180
    .line 181
    const/4 v7, 0x0

    .line 182
    const/16 v8, 0x1908

    .line 183
    .line 184
    move v5, v0

    .line 185
    move v6, v11

    .line 186
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTex:Lcom/ss/texturerender/ITexture;

    .line 190
    .line 191
    invoke-interface {v1}, Lcom/ss/texturerender/ITexture;->unlock()V

    .line 192
    .line 193
    .line 194
    :cond_5
    iget v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 195
    .line 196
    const-string v2, "createTexture main"

    .line 197
    .line 198
    invoke-static {v1, v2}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_6

    .line 203
    .line 204
    iget-object v3, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 205
    .line 206
    if-eqz v3, :cond_6

    .line 207
    .line 208
    invoke-virtual {v3, v1, v12, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_6
    iput v11, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBOTexH:I

    .line 212
    .line 213
    iput v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBOTexW:I

    .line 214
    .line 215
    :cond_7
    return-void
.end method

.method private _makeCurrent()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "OverlayVideoTextureRenderer"

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 11
    .line 12
    const-string v1, "no surface for make current"

    .line 13
    .line 14
    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, " make current again"

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 44
    .line 45
    iget-object v1, v0, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 50
    .line 51
    invoke-static {v1, v4, v4, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iget v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "make current failed = "

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, "make current done"

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsMakeCurrent:Z

    .line 106
    .line 107
    return v0
.end method

.method private _render()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const-string v3, "OverlayVideoTextureRenderer"

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 11
    .line 12
    const-string v1, "no surface to render"

    .line 13
    .line 14
    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string/jumbo v4, "swap buffer failed"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    return v0
.end method

.method private _updateTexImage(Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->lock()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->isRelease()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->updateTexImage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_2

    .line 23
    :catch_0
    move-exception v0

    .line 24
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    return-void

    .line 29
    :goto_2
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method private handleVsyncDraw()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->_avSyncByVsync()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->_draw()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->_render()I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "handleVsyncDraw end, ReadyVector size:"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mReadySurfaceTextureVector:Ljava/util/Vector;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "OverlayVideoTextureRenderer"

    .line 39
    .line 40
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mReadySurfaceTextureVector:Ljava/util/Vector;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mVsyncHelper:Lcom/ss/texturerender/vsync/VsyncHelper;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mVsyncCallback:Lcom/ss/texturerender/vsync/VsyncHelper$VsyncCallback;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/vsync/VsyncHelper;->removeObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsVsyncWorking:Z

    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method private isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method private needNotify(Lcom/ss/texturerender/VideoSurfaceTexture;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mReadySurfaceTextureVector:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 21
    .line 22
    if-ne v1, p1, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    invoke-direct {p0, p1}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->getSize()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-lez p1, :cond_3

    .line 38
    .line 39
    return v2

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->getSize()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-lez p1, :cond_3

    .line 47
    .line 48
    return v2

    .line 49
    :cond_3
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method private notify(Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTextureNotifyMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Message;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 13
    .line 14
    const-string v2, "OverlayVideoTextureRenderer"

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "notify st:"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, " MainQueue:"

    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " SubQueue:"

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, v2, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/high16 p1, -0x80000000

    .line 65
    .line 66
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 69
    .line 70
    .line 71
    monitor-exit v0

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p1

    .line 76
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected deinitEffectComponents()V
    .locals 0

    .line 1
    return-void
.end method

.method protected deinitGLComponents()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOESDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOESDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBO:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/FrameBuffer;->release()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mFBO:Lcom/ss/texturerender/effect/FrameBuffer;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTex:Lcom/ss/texturerender/ITexture;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/ss/texturerender/IRef;->decRef()I

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTex:Lcom/ss/texturerender/ITexture;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTex:Lcom/ss/texturerender/ITexture;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/ss/texturerender/IRef;->decRef()I

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTex:Lcom/ss/texturerender/ITexture;

    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method public getConsumerHeight()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [I

    .line 11
    .line 12
    iget-object v2, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 15
    .line 16
    const/16 v3, 0x3056

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v2, v0, v3, v1, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 20
    .line 21
    .line 22
    aget v0, v1, v4

    .line 23
    .line 24
    return v0
.end method

.method public getConsumerWidth()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [I

    .line 11
    .line 12
    iget-object v2, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 15
    .line 16
    const/16 v3, 0x3057

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v2, v0, v3, v1, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 20
    .line 21
    .line 22
    aget v0, v1, v4

    .line 23
    .line 24
    return v0
.end method

.method public getMasterTimeStamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mClock:Lcom/ss/texturerender/overlay/NormalClock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/texturerender/overlay/NormalClock;->getClock()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSurfaceUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mUpdateSurfaceTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected handleFrameAvailable(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTimestamp()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->poll(J)Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTimestamp()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->poll(J)Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    const-wide/16 v1, -0x1

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-wide v3, v0, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;->pts:J

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->getMasterTimeStamp()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    sub-long/2addr v3, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-wide v3, v1

    .line 45
    :goto_1
    iget v5, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 46
    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v7, "handleFrameAvailable,st = "

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v7, " isMainSurface:"

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v7, " pts:"

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-wide v1, v0, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;->pts:J

    .line 80
    .line 81
    :cond_2
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " master:"

    .line 85
    .line 86
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->getMasterTimeStamp()J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, " diff:"

    .line 97
    .line 98
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, "OverlayVideoTextureRenderer"

    .line 109
    .line 110
    invoke-static {v5, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-wide/16 v1, 0x0

    .line 114
    .line 115
    cmp-long v1, v3, v1

    .line 116
    .line 117
    if-gez v1, :cond_3

    .line 118
    .line 119
    invoke-direct {p0, p1}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->_updateTexImage(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->notify(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    iget-boolean v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsVsyncWorking:Z

    .line 127
    .line 128
    if-nez v1, :cond_4

    .line 129
    .line 130
    iget-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mVsyncHelper:Lcom/ss/texturerender/vsync/VsyncHelper;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mVsyncCallback:Lcom/ss/texturerender/vsync/VsyncHelper$VsyncCallback;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Lcom/ss/texturerender/vsync/VsyncHelper;->addObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V

    .line 135
    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsVsyncWorking:Z

    .line 139
    .line 140
    :cond_4
    iget-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mReadySurfaceTextureVector:Ljava/util/Vector;

    .line 141
    .line 142
    new-instance v2, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;

    .line 143
    .line 144
    invoke-direct {v2, p1, v0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;-><init>(Lcom/ss/texturerender/VideoSurfaceTexture;Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method protected handleGLThreadMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    :pswitch_0
    goto/16 :goto_3

    .line 8
    .line 9
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 14
    .line 15
    iget p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 16
    .line 17
    const-string v0, "OverlayVideoTextureRenderer"

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "MSG_SET_MAIN_SURFACE st:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string/jumbo v1, "texture"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 55
    .line 56
    const-string/jumbo v2, "update_frame_time"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 64
    .line 65
    invoke-direct {p0, v1}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    const-string v3, "master_clock"

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_0

    .line 82
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    const-string v6, "master_clock_diff"

    .line 88
    .line 89
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    sub-long/2addr v4, v6

    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    add-long/2addr v6, v4

    .line 103
    invoke-virtual {p0, v6, v7}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->updateMaster(J)V

    .line 104
    .line 105
    .line 106
    :cond_0
    invoke-direct {p0, v1}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->needNotify(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v3, Landroid/os/Message;

    .line 115
    .line 116
    monitor-enter v3

    .line 117
    :try_start_0
    iget-wide v4, v2, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;->pts:J

    .line 118
    .line 119
    long-to-int v4, v4

    .line 120
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 121
    .line 122
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 125
    .line 126
    .line 127
    monitor-exit v3

    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw p1

    .line 132
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTextureNotifyMap:Ljava/util/HashMap;

    .line 133
    .line 134
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p1, Landroid/os/Message;

    .line 137
    .line 138
    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v1}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_2

    .line 146
    .line 147
    iget-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 148
    .line 149
    invoke-virtual {p1, v2}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->add(Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->add(Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;)V

    .line 156
    .line 157
    .line 158
    :goto_1
    iget p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 159
    .line 160
    const-string v1, "OverlayVideoTextureRenderer"

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v3, "MSG_UPDATE_FRAME_TIME needNotify:"

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v0, " MainQueue:"

    .line 176
    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->getSize()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v0, " SubQueue:"

    .line 190
    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->getSize()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 212
    .line 213
    if-ne p1, v1, :cond_3

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_3
    const/4 v1, 0x0

    .line 217
    :goto_2
    iput-boolean v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mNeedSync:Z

    .line 218
    .line 219
    iget p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 220
    .line 221
    const-string v0, "OverlayVideoTextureRenderer"

    .line 222
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v2, "MSG_SET_OVERLAY_SYNC mNeedSync:"

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-boolean v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mNeedSync:Z

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->handleVsyncComing(Landroid/os/Message;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->handleSetOverlayRatio(Landroid/os/Message;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v0, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 257
    .line 258
    invoke-direct {p0, v0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->isMainSurface(Lcom/ss/texturerender/VideoSurfaceTexture;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-nez v0, :cond_4

    .line 263
    .line 264
    return-void

    .line 265
    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 266
    .line 267
    if-eq p1, v1, :cond_7

    .line 268
    .line 269
    const/4 v0, 0x3

    .line 270
    if-eq p1, v0, :cond_6

    .line 271
    .line 272
    const/4 v0, 0x4

    .line 273
    if-eq p1, v0, :cond_5

    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_5
    iget-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mClock:Lcom/ss/texturerender/overlay/NormalClock;

    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/ss/texturerender/overlay/NormalClock;->pause()V

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_6
    iget p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 283
    .line 284
    const-string v0, "OverlayVideoTextureRenderer"

    .line 285
    .line 286
    const-string v1, "TEXTURE_STATE_STOP"

    .line 287
    .line 288
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->clear()V

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubFrameTimeQueue:Lcom/ss/texturerender/overlay/FrameTimeQueue;

    .line 297
    .line 298
    invoke-virtual {p1}, Lcom/ss/texturerender/overlay/FrameTimeQueue;->clear()V

    .line 299
    .line 300
    .line 301
    iget-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mClock:Lcom/ss/texturerender/overlay/NormalClock;

    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/ss/texturerender/overlay/NormalClock;->stop()V

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_7
    iget-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mClock:Lcom/ss/texturerender/overlay/NormalClock;

    .line 308
    .line 309
    invoke-virtual {p1}, Lcom/ss/texturerender/overlay/NormalClock;->start()V

    .line 310
    .line 311
    .line 312
    :goto_3
    return-void

    .line 313
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleSetOverlayRatio(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "overlay_ratio"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "SetOverlayRatio ratio:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "OverlayVideoTextureRenderer"

    .line 31
    .line 32
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOverlayRatio:F

    .line 36
    .line 37
    cmpl-float v0, p1, v0

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iput p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOverlayRatio:F

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsOverlayRatioChanged:Z

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsVsyncWorking:Z

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mVsyncHelper:Lcom/ss/texturerender/vsync/VsyncHelper;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mVsyncCallback:Lcom/ss/texturerender/vsync/VsyncHelper$VsyncCallback;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/vsync/VsyncHelper;->addObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V

    .line 55
    .line 56
    .line 57
    iput-boolean p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsVsyncWorking:Z

    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method protected handleSetSurface(Landroid/os/Message;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_8

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
    if-eqz v0, :cond_7

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getUpdateSurface()Landroid/view/Surface;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mCurrentSurface:Landroid/view/Surface;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    if-ne v1, v0, :cond_0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/Surface;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "SurfaceTexture"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 43
    .line 44
    const-string v0, "OverlayVideoTextureRenderer"

    .line 45
    .line 46
    const-string v1, "set same surface, return"

    .line 47
    .line 48
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->_dropAllFrames()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mCurrentSurface:Landroid/view/Surface;

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    iget p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 62
    .line 63
    const-string v0, "OverlayVideoTextureRenderer"

    .line 64
    .line 65
    const-string v1, "reset null surface, return"

    .line 66
    .line 67
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 72
    .line 73
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    if-eq v1, v2, :cond_3

    .line 77
    .line 78
    iget v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 79
    .line 80
    const-string v2, "OverlayVideoTextureRenderer"

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v5, "destory previous surface = "

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v5, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v1, v2, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    if-nez v0, :cond_2

    .line 105
    .line 106
    iget v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 107
    .line 108
    const-string v2, "OverlayVideoTextureRenderer"

    .line 109
    .line 110
    const-string v4, "make current to dummy surface due to non render surface"

    .line 111
    .line 112
    invoke-static {v1, v2, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 116
    .line 117
    iget-object v2, v1, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 118
    .line 119
    iget-object v4, v1, Lcom/ss/texturerender/base/EGLRuntime;->eglDummySurface:Landroid/opengl/EGLSurface;

    .line 120
    .line 121
    iget-object v1, v1, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 122
    .line 123
    invoke-static {v2, v4, v4, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 124
    .line 125
    .line 126
    :cond_2
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 127
    .line 128
    iget-object v1, v1, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 129
    .line 130
    iget-object v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 131
    .line 132
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 137
    .line 138
    iput-object v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 139
    .line 140
    iput-boolean v3, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mIsMakeCurrent:Z

    .line 141
    .line 142
    iget v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 143
    .line 144
    const-string v4, "OverlayVideoTextureRenderer"

    .line 145
    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v6, "destory previous surface done = "

    .line 152
    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v6, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 157
    .line 158
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v6, " ret:"

    .line 162
    .line 163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v2, v4, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_3
    if-eqz v0, :cond_5

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_5

    .line 183
    .line 184
    const/16 v1, 0x3038

    .line 185
    .line 186
    filled-new-array {v1}, [I

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    :try_start_0
    iget v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 191
    .line 192
    const-string v4, "OverlayVideoTextureRenderer"

    .line 193
    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v6, ",create window surface from "

    .line 203
    .line 204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-static {v2, v4, v5}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v2, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 218
    .line 219
    iget-object v4, v2, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 220
    .line 221
    iget-object v2, v2, Lcom/ss/texturerender/base/EGLRuntime;->eglConfig:Landroid/opengl/EGLConfig;

    .line 222
    .line 223
    invoke-static {v4, v2, v0, v1, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    iput-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 228
    .line 229
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 230
    .line 231
    if-ne v1, v2, :cond_4

    .line 232
    .line 233
    iget p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 234
    .line 235
    const-string v0, "OverlayVideoTextureRenderer"

    .line 236
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v2, "create window surface failed"

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_4
    invoke-direct {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->_makeCurrent()Z

    .line 267
    .line 268
    .line 269
    sget-object v1, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    .line 270
    .line 271
    array-length v2, v1

    .line 272
    new-array v4, v2, [F

    .line 273
    .line 274
    iput-object v4, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mMainTexVerticesData:[F

    .line 275
    .line 276
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    .line 278
    .line 279
    new-array v1, v2, [F

    .line 280
    .line 281
    iput-object v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mSubTexVerticesData:[F

    .line 282
    .line 283
    sget-object v4, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    .line 284
    .line 285
    invoke-static {v4, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .line 287
    .line 288
    goto :goto_0

    .line 289
    :catch_0
    iget p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 290
    .line 291
    const-string v0, "OverlayVideoTextureRenderer"

    .line 292
    .line 293
    const-string v1, "create current exception failed"

    .line 294
    .line 295
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_5
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 300
    .line 301
    .line 302
    move-result-wide v1

    .line 303
    iput-wide v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mUpdateSurfaceTime:J

    .line 304
    .line 305
    iput-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mCurrentSurface:Landroid/view/Surface;

    .line 306
    .line 307
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    .line 309
    if-eqz p1, :cond_6

    .line 310
    .line 311
    monitor-enter p1

    .line 312
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 313
    .line 314
    .line 315
    monitor-exit p1

    .line 316
    goto :goto_1

    .line 317
    :catchall_0
    move-exception v0

    .line 318
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    throw v0

    .line 320
    :cond_6
    :goto_1
    iget p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 321
    .line 322
    const-string v0, "OverlayVideoTextureRenderer"

    .line 323
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const-string v2, "set surface done, mEglSurface="

    .line 330
    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    iget-object v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 335
    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v2, " render:"

    .line 340
    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 356
    .line 357
    const-string v0, "OverlayVideoTextureRenderer update surface but missing texture"

    .line 358
    .line 359
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw p1

    .line 363
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 364
    .line 365
    const-string v0, "OverlayVideoTextureRenderer update surface but missing bundle?"

    .line 366
    .line 367
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw p1
.end method

.method public handleVsyncComing(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->handleVsyncDraw()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected initGLComponents()V
    .locals 3

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
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOESDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    new-instance v0, Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 18
    .line 19
    iget v1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/ss/texturerender/effect/GLOesTo2DFilter;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mOESDrawer:Lcom/ss/texturerender/effect/GLOesTo2DFilter;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/GLOesTo2DFilter;->init(Landroid/os/Bundle;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 35
    .line 36
    .line 37
    :cond_2
    new-instance v0, Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 38
    .line 39
    iget v2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 40
    .line 41
    invoke-direct {v0, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mDefaultDrawer:Lcom/ss/texturerender/effect/GLDefaultFilter;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->init(Landroid/os/Bundle;)I

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/ss/texturerender/vsync/VsyncHelper$VsyncCallback;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcom/ss/texturerender/vsync/VsyncHelper$VsyncCallback;-><init>(Landroid/os/Handler;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mVsyncCallback:Lcom/ss/texturerender/vsync/VsyncHelper$VsyncCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :goto_1
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v1, v0}, Lcom/ss/texturerender/TextureRenderer;->notifyEGLError(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_2
    iget v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mTexType:I

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "initGLComponents done render:"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "OverlayVideoTextureRenderer"

    .line 87
    .line 88
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
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
    invoke-direct {p0}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->_dropAllFrames()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mAvailCount:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mClock:Lcom/ss/texturerender/overlay/NormalClock;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/ss/texturerender/overlay/NormalClock;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method protected updateDisplaySize(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public updateMaster(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;->mClock:Lcom/ss/texturerender/overlay/NormalClock;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/overlay/NormalClock;->updateClock(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
