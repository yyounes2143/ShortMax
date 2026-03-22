.class public Lcom/ss/texturerender/VideoSurfaceTexture;
.super Landroid/graphics/SurfaceTexture;
.source "VideoSurfaceTexture.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/ss/texturerender/TextureRenderer$OnTextureFocusLossListener;
.implements Lcom/ss/texturerender/vsync/IVsyncCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/VideoSurfaceTexture$TextureErrorCallback;,
        Lcom/ss/texturerender/VideoSurfaceTexture$TextureDrawCallback;,
        Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;,
        Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;
    }
.end annotation


# static fields
.field public static final ERROR_SR_EXE_FAIL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_SR_INIT_FAIL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FORCE_EXIPRE_TIME_MS:J = 0x1d4c0L

.field public static final KEY_QUATERNION_W:Ljava/lang/String; = "quaternion_w"

.field public static final KEY_QUATERNION_X:Ljava/lang/String; = "quaternion_x"

.field public static final KEY_QUATERNION_Y:Ljava/lang/String; = "quaternion_y"

.field public static final KEY_QUATERNION_Z:Ljava/lang/String; = "quaternion_z"

.field public static final KEY_SURFACE:Ljava/lang/String; = "surface"

.field public static final KEY_TEXTURE:Ljava/lang/String; = "texture"

.field public static final KEY_TIME:Ljava/lang/String; = "timeStamp"

.field private static final MAX_DROP_COUNT:I = 0x5

.field protected static final SUPER_RES_CLOSE:I = 0x0

.field protected static final SUPER_RES_OPEN:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "VideoSurfaceTexture"

.field protected static final TIME_UNSET:J = -0x7fffffffffffffffL

.field private static resHeightTab:[I

.field private static resWdithTab:[I


# instance fields
.field protected mAccumulatedPlayingTime:D

.field private mBitDepth:I

.field protected mConfig:Lcom/ss/texturerender/effect/EffectConfig;

.field private mCreateLooper:Landroid/os/Looper;

.field private mCurrentEffectProcessDepth:I

.field private mCurrentEffectStartTime:D

.field private mDataSpace:I

.field private mDoMirrorFirst:I

.field protected mDropCount:I

.field private mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

.field private mEffectChainAccumulatedTime:D

.field private mEffectChainAverageTime:F

.field private mEffectChainFrameCount:I

.field private mEffectChainStartTime:D

.field protected mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mEnableExtraSurfaceRenderCallback:I

.field private mEnableNativeWindow:I

.field private mEnableResetCropParamsInRender:I

.field private mEnableUseEglDummySurface:I

.field private mExtraRenderCropParamsBundle:Landroid/os/Bundle;

.field private mExtraSurfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/Surface;",
            "Landroid/opengl/EGLSurface;",
            ">;"
        }
    .end annotation
.end field

.field protected mFPS:F

.field private mForbidReuseVideoSurfaceTexture:I

.field private mFrameCallback:Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;

.field private mFrameCallbackBundle:Landroid/os/Bundle;

.field private mFrameCallbackInRenderThread:I

.field private mFrameCount:I

.field private mFrameMetaData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

.field public mFrameReady:Z

.field private mFreezeDirector:I

.field private mHDRType:I

.field mHeadPose:Lcom/ss/texturerender/math/Quaternion;

.field public mHeadposeCallbackIntegral:I

.field protected mIdleTimeStamp:J

.field private mIgnoreSRResCheck:Z

.field private mIsMakeCurrent:Z

.field public volatile mIsMirrorHorizontal:I

.field public volatile mIsMirrorVertical:I

.field private mIsPaused:Z

.field private mIsPreRender:Z

.field protected volatile mIsRelease:Z

.field private volatile mLastComeFrameType:I

.field protected mLastFrameTime:D

.field public volatile mLayoutMode:I

.field public volatile mLayoutRatio:F

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMainRenderCropParamsBundle:Landroid/os/Bundle;

.field private mNativeWindow:Lcom/ss/texturerender/NativeWindow;

.field private mNotKeepLastParams:I

.field private mObjectId:J

.field protected mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

.field private mOnFrameAvailableListener:Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;

.field private mOpenVQScore:I

.field private mParamList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPerEffectAccumulatedTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mPerEffectAverageTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPerEffectFrameCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRGBBitsFromEGLConfig:I

.field private mRenderHandler:Landroid/os/Handler;

.field private mRenderMsgBundle:Landroid/os/Bundle;

.field private mRenderSurface:Landroid/view/Surface;

.field private mRoiSRParamsBundle:Landroid/os/Bundle;

.field public volatile mRotationType:I

.field private mSRProcessAverageCostTime:F

.field private mSRProcessParamter:Landroid/os/Bundle;

.field private mSRProcessScaleType:I

.field private volatile mSRProcessSuccessRate:F

.field private mSaveFrameBundle:Landroid/os/Bundle;

.field private mSerial:I

.field private mStartPlayTimeNanos:J

.field private mState:I

.field private mStaticMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSuperOpen:I

.field private mSyncMsg:Landroid/os/Message;

.field private mSyncSetVsync:I

.field private mSyncUpdateSurface:I

.field private mTexHeight:I

.field protected mTexType:I

.field private mTexWidth:I

.field private mTextureId:Lcom/ss/texturerender/ITexture;

.field private mTextureQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ss/texturerender/effect/EffectTexture;",
            ">;"
        }
    .end annotation
.end field

.field protected mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

.field private mTid:J

.field private mTouchHelper:Lcom/ss/texturerender/touch/TouchHelper;

.field private mTrackingErrorCode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackingErrorMsg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateSurface:Landroid/view/Surface;

.field private mUpdateSurfaceTime:J

.field private mUsingEffect:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVQScoreBundle:Landroid/os/Bundle;

.field private mVQScoreProcessAverageCostTime:F

.field private mVQScoreProcessSuccessRate:F

.field private mViewportHeight:I

.field private mViewportWidth:I

.field protected mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/ss/texturerender/VideoSurfaceTexture;->resWdithTab:[I

    .line 8
    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/ss/texturerender/VideoSurfaceTexture;->resHeightTab:[I

    .line 15
    .line 16
    return-void

    .line 17
    :array_0
    .array-data 4
        0x1e0
        0x21c
        0x220
        0x240
        0x240
        0x240
    .end array-data

    :array_1
    .array-data 4
        0x360
        0x3c0
        0x3c0
        0x400
        0x288
        0x3f8
    .end array-data
.end method

.method public constructor <init>(Lcom/ss/texturerender/ITexture;Landroid/os/Handler;Lcom/ss/texturerender/TextureRenderer;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lcom/ss/texturerender/ITexture;->lock()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsRelease:Z

    .line 3
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPaused:Z

    .line 4
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMakeCurrent:Z

    .line 5
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 6
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportWidth:I

    .line 7
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportHeight:I

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderSurface:Landroid/view/Surface;

    .line 9
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurface:Landroid/view/Surface;

    .line 10
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 11
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSerial:I

    .line 12
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPreRender:Z

    .line 13
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIgnoreSRResCheck:Z

    const-wide/16 v2, -0x1

    .line 14
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStartPlayTimeNanos:J

    .line 15
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDropCount:I

    .line 16
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncMsg:Landroid/os/Message;

    const/4 v2, -0x1

    .line 17
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 18
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncUpdateSurface:I

    .line 19
    new-instance v3, Lcom/ss/texturerender/effect/EffectConfig;

    invoke-direct {v3, v2}, Lcom/ss/texturerender/effect/EffectConfig;-><init>(I)V

    iput-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 20
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureQueue:Ljava/util/LinkedList;

    .line 21
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUsingEffect:Ljava/util/HashMap;

    .line 22
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSaveFrameBundle:Landroid/os/Bundle;

    const/4 v3, 0x3

    .line 23
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mState:I

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameMetaData:Ljava/util/List;

    .line 25
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameReady:Z

    .line 26
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCount:I

    const-wide/16 v3, 0x0

    .line 27
    iput-wide v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mAccumulatedPlayingTime:D

    .line 28
    iput-wide v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastFrameTime:D

    const/4 v5, 0x0

    .line 29
    iput v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFPS:F

    .line 30
    iput-wide v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectStartTime:D

    .line 31
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectProcessDepth:I

    .line 32
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectFrameCount:Ljava/util/HashMap;

    .line 33
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAccumulatedTime:Ljava/util/HashMap;

    .line 34
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAverageTime:Ljava/util/HashMap;

    .line 35
    iput-wide v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainStartTime:D

    .line 36
    iput-wide v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainAccumulatedTime:D

    .line 37
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainFrameCount:I

    .line 38
    iput v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainAverageTime:F

    .line 39
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorCode:Ljava/util/HashMap;

    .line 40
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorMsg:Ljava/util/HashMap;

    const/4 v3, 0x1

    .line 41
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessSuccessRate:F

    .line 42
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessAverageCostTime:F

    .line 43
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    .line 44
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFreezeDirector:I

    .line 45
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableExtraSurfaceRenderCallback:I

    .line 46
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallback:Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;

    .line 47
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallbackBundle:Landroid/os/Bundle;

    .line 48
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableUseEglDummySurface:I

    .line 49
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNotKeepLastParams:I

    .line 50
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDoMirrorFirst:I

    .line 51
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNativeWindow:Lcom/ss/texturerender/NativeWindow;

    .line 52
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableNativeWindow:I

    .line 53
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessScaleType:I

    const/4 v3, 0x1

    .line 54
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLayoutMode:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 55
    iput v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLayoutRatio:F

    .line 56
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRotationType:I

    .line 57
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorHorizontal:I

    .line 58
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorVertical:I

    .line 59
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraRenderCropParamsBundle:Landroid/os/Bundle;

    .line 60
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mMainRenderCropParamsBundle:Landroid/os/Bundle;

    .line 61
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncSetVsync:I

    .line 62
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mForbidReuseVideoSurfaceTexture:I

    .line 63
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHDRType:I

    const/16 v4, 0x8

    .line 64
    iput v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mBitDepth:I

    .line 65
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRoiSRParamsBundle:Landroid/os/Bundle;

    .line 66
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHeadposeCallbackIntegral:I

    .line 67
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallbackInRenderThread:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 68
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreProcessSuccessRate:F

    .line 69
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreProcessAverageCostTime:F

    .line 70
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOpenVQScore:I

    .line 71
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreBundle:Landroid/os/Bundle;

    .line 72
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 73
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 74
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 75
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDataSpace:I

    .line 76
    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessParamter:Landroid/os/Bundle;

    .line 77
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableResetCropParamsInRender:I

    .line 78
    invoke-interface {p1}, Lcom/ss/texturerender/IRef;->addRef()I

    .line 79
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureId:Lcom/ss/texturerender/ITexture;

    .line 80
    invoke-interface {p1}, Lcom/ss/texturerender/ITexture;->unlock()V

    .line 81
    invoke-direct {p0, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->internalConstruct(Landroid/os/Handler;)V

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 83
    iput-object p3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/ITexture;ZLandroid/os/Handler;Lcom/ss/texturerender/TextureRenderer;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 84
    invoke-interface {p1}, Lcom/ss/texturerender/ITexture;->lock()I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    const/4 p2, 0x0

    .line 85
    iput-boolean p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsRelease:Z

    .line 86
    iput-boolean p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPaused:Z

    .line 87
    iput-boolean p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMakeCurrent:Z

    .line 88
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 89
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportWidth:I

    .line 90
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportHeight:I

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderSurface:Landroid/view/Surface;

    .line 92
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurface:Landroid/view/Surface;

    .line 93
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 94
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSerial:I

    .line 95
    iput-boolean p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPreRender:Z

    .line 96
    iput-boolean p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIgnoreSRResCheck:Z

    const-wide/16 v1, -0x1

    .line 97
    iput-wide v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStartPlayTimeNanos:J

    .line 98
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDropCount:I

    .line 99
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncMsg:Landroid/os/Message;

    const/4 v1, -0x1

    .line 100
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 101
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncUpdateSurface:I

    .line 102
    new-instance v2, Lcom/ss/texturerender/effect/EffectConfig;

    invoke-direct {v2, v1}, Lcom/ss/texturerender/effect/EffectConfig;-><init>(I)V

    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 103
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureQueue:Ljava/util/LinkedList;

    .line 104
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUsingEffect:Ljava/util/HashMap;

    .line 105
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSaveFrameBundle:Landroid/os/Bundle;

    const/4 v2, 0x3

    .line 106
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mState:I

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameMetaData:Ljava/util/List;

    .line 108
    iput-boolean p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameReady:Z

    .line 109
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCount:I

    const-wide/16 v2, 0x0

    .line 110
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mAccumulatedPlayingTime:D

    .line 111
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastFrameTime:D

    const/4 v4, 0x0

    .line 112
    iput v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFPS:F

    .line 113
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectStartTime:D

    .line 114
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectProcessDepth:I

    .line 115
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectFrameCount:Ljava/util/HashMap;

    .line 116
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAccumulatedTime:Ljava/util/HashMap;

    .line 117
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAverageTime:Ljava/util/HashMap;

    .line 118
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainStartTime:D

    .line 119
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainAccumulatedTime:D

    .line 120
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainFrameCount:I

    .line 121
    iput v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainAverageTime:F

    .line 122
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorCode:Ljava/util/HashMap;

    .line 123
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorMsg:Ljava/util/HashMap;

    const/4 v2, 0x1

    .line 124
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessSuccessRate:F

    .line 125
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessAverageCostTime:F

    .line 126
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    .line 127
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFreezeDirector:I

    .line 128
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableExtraSurfaceRenderCallback:I

    .line 129
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallback:Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;

    .line 130
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallbackBundle:Landroid/os/Bundle;

    .line 131
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableUseEglDummySurface:I

    .line 132
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNotKeepLastParams:I

    .line 133
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDoMirrorFirst:I

    .line 134
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNativeWindow:Lcom/ss/texturerender/NativeWindow;

    .line 135
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableNativeWindow:I

    .line 136
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessScaleType:I

    const/4 v2, 0x1

    .line 137
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLayoutMode:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 138
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLayoutRatio:F

    .line 139
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRotationType:I

    .line 140
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorHorizontal:I

    .line 141
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorVertical:I

    .line 142
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraRenderCropParamsBundle:Landroid/os/Bundle;

    .line 143
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mMainRenderCropParamsBundle:Landroid/os/Bundle;

    .line 144
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncSetVsync:I

    .line 145
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mForbidReuseVideoSurfaceTexture:I

    .line 146
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHDRType:I

    const/16 v3, 0x8

    .line 147
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mBitDepth:I

    .line 148
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRoiSRParamsBundle:Landroid/os/Bundle;

    .line 149
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHeadposeCallbackIntegral:I

    .line 150
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallbackInRenderThread:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 151
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreProcessSuccessRate:F

    .line 152
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreProcessAverageCostTime:F

    .line 153
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOpenVQScore:I

    .line 154
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreBundle:Landroid/os/Bundle;

    .line 155
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 156
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 157
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 158
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDataSpace:I

    .line 159
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessParamter:Landroid/os/Bundle;

    .line 160
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableResetCropParamsInRender:I

    .line 161
    invoke-interface {p1}, Lcom/ss/texturerender/IRef;->addRef()I

    .line 162
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureId:Lcom/ss/texturerender/ITexture;

    .line 163
    invoke-interface {p1}, Lcom/ss/texturerender/ITexture;->unlock()V

    .line 164
    invoke-direct {p0, p3}, Lcom/ss/texturerender/VideoSurfaceTexture;->internalConstruct(Landroid/os/Handler;)V

    .line 165
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 166
    iput-object p4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    return-void
.end method

.method private _trySetupHDR2SDRFilter(I)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    :goto_0
    move v0, v1

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/ss/texturerender/base/EGLRuntime;->isSupportBt2020PQ()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gtz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v2

    .line 22
    :goto_1
    new-instance v3, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "effect_type"

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string v4, "action"

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const/16 v2, 0x15

    .line 38
    .line 39
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const-string v2, "hdr_type"

    .line 43
    .line 44
    invoke-virtual {v3, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v2, "use_effect"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v1, 0x13

    .line 55
    .line 56
    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    const-string v1, "int_value"

    .line 60
    .line 61
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    :goto_2
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v4, "tryHDR2SDR,need:"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ",type:"

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v0, "VideoSurfaceTexture"

    .line 93
    .line 94
    invoke-static {v1, v0, p1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->setEffect(Landroid/os/Bundle;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private _tryUpdateEGLSurface(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderMsgBundle:Landroid/os/Bundle;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderMsgBundle:Landroid/os/Bundle;

    .line 15
    .line 16
    const-string/jumbo v2, "texture"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderMsgBundle:Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_0
    return-void
.end method

.method private checkRecreateEGLSurface(I)Z
    .locals 6

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_4

    .line 4
    .line 5
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 6
    .line 7
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 8
    .line 9
    if-eq p1, v0, :cond_4

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    new-array v2, v0, [I

    .line 13
    .line 14
    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 15
    .line 16
    const/16 v4, 0x309d

    .line 17
    .line 18
    invoke-static {v3, p1, v4, v2, v1}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 23
    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v5, "colorspace:"

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    aget v5, v2, v1

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, ",mHDRType:"

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHDRType:I

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v5, ",ret:"

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v5, "VideoSurfaceTexture"

    .line 62
    .line 63
    invoke-static {v3, v5, v4}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    aget p1, v2, v1

    .line 69
    .line 70
    const/16 v2, 0x3340

    .line 71
    .line 72
    if-ne p1, v2, :cond_0

    .line 73
    .line 74
    iget v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHDRType:I

    .line 75
    .line 76
    if-ne v3, v0, :cond_1

    .line 77
    .line 78
    :cond_0
    if-eq p1, v2, :cond_4

    .line 79
    .line 80
    iget v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHDRType:I

    .line 81
    .line 82
    if-ne v3, v0, :cond_4

    .line 83
    .line 84
    :cond_1
    if-eq p1, v2, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/ss/texturerender/base/EGLRuntime;->isSupportBt2020PQ()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-lez p1, :cond_2

    .line 95
    .line 96
    move v1, v0

    .line 97
    :cond_2
    return v1

    .line 98
    :cond_3
    return v0

    .line 99
    :cond_4
    return v1
.end method

.method private getBundleString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "VideoSurfaceTexture"

    .line 29
    .line 30
    invoke-static {v0, p2, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "bundle modified"

    .line 34
    .line 35
    return-object p1
.end method

.method private internalConstruct(Landroid/os/Handler;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mObjectId:J

    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCreateLooper:Landroid/os/Looper;

    .line 26
    .line 27
    new-instance p1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderMsgBundle:Landroid/os/Bundle;

    .line 33
    .line 34
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSuperOpen:I

    .line 40
    .line 41
    new-instance p1, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;-><init>(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOnFrameAvailableListener:Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;

    .line 47
    .line 48
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallbackInRenderThread:I

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    if-ne v0, v1, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 54
    .line 55
    invoke-virtual {p0, p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOnFrameAvailableListener:Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 69
    .line 70
    invoke-interface {p1, v0, v1}, Lcom/ss/texturerender/producer/IFrameProducer;->setOnFrameAvailableListener(Lcom/ss/texturerender/IFrameAvailableListener;Landroid/os/Handler;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "gen a texture :"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-wide v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mObjectId:J

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", thread id "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 103
    .line 104
    .line 105
    move-result-wide v1

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ", looper = "

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCreateLooper:Landroid/os/Looper;

    .line 115
    .line 116
    invoke-direct {p0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->looperToString(Landroid/os/Looper;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v1, "VideoSurfaceTexture"

    .line 128
    .line 129
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method private looperToString(Landroid/os/Looper;)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "}"

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "Looper ("

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ", tid "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ") {"

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "Looper {"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1
.end method

.method private removeParamBundle(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mParamList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/os/Bundle;

    .line 18
    .line 19
    const-string v2, "action"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v2, p1, :cond_0

    .line 26
    .line 27
    const-string v2, "effect_type"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, p2, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mParamList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public bindEGLEnv(Lcom/ss/texturerender/base/EGLRuntime;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/ss/texturerender/base/EGLRuntime;->eglContext:Landroid/opengl/EGLContext;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglContext:Landroid/opengl/EGLContext;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/ss/texturerender/base/EGLRuntime;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/ss/texturerender/base/EGLRuntime;->eglConfig:Landroid/opengl/EGLConfig;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v2, v1, [I

    .line 19
    .line 20
    new-array v3, v1, [I

    .line 21
    .line 22
    new-array v1, v1, [I

    .line 23
    .line 24
    const/16 v4, 0x3024

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-static {v0, p1, v4, v2, v5}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 33
    .line 34
    const/16 v4, 0x3023

    .line 35
    .line 36
    invoke-static {p1, v0, v4, v3, v5}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 42
    .line 43
    const/16 v4, 0x3022

    .line 44
    .line 45
    invoke-static {p1, v0, v4, v1, v5}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 46
    .line 47
    .line 48
    aget p1, v2, v5

    .line 49
    .line 50
    aget v0, v3, v5

    .line 51
    .line 52
    add-int/2addr p1, v0

    .line 53
    aget v0, v1, v5

    .line 54
    .line 55
    add-int/2addr p1, v0

    .line 56
    iput p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRGBBitsFromEGLConfig:I

    .line 57
    .line 58
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "bindEGLEnv rgbbits:"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRGBBitsFromEGLConfig:I

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "VideoSurfaceTexture"

    .line 80
    .line 81
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    const-string v0, "no egl env for texture bind"

    .line 88
    .line 89
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public canReuse(Landroid/os/Looper;)Z
    .locals 8

    .line 1
    const-string v0, ", mForbidReuseVideoSurfaceTexture = "

    .line 2
    .line 3
    const-string v1, ", mlooper = "

    .line 4
    .line 5
    const-string v2, " looper ="

    .line 6
    .line 7
    const-string v3, "ret = "

    .line 8
    .line 9
    const-string v4, "VideoSurfaceTexture"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    :try_start_0
    iget-object v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCreateLooper:Landroid/os/Looper;

    .line 13
    .line 14
    if-ne p1, v6, :cond_0

    .line 15
    .line 16
    iget v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mForbidReuseVideoSurfaceTexture:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-gtz v6, :cond_0

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    :cond_0
    iget v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 22
    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->looperToString(Landroid/os/Looper;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCreateLooper:Landroid/os/Looper;

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->looperToString(Landroid/os/Looper;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mForbidReuseVideoSurfaceTexture:I

    .line 63
    .line 64
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v6, v4, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v5

    .line 75
    :catchall_0
    iget v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 76
    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    iget v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 84
    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    goto :goto_0
.end method

.method public checkGeometry()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNativeWindow:Lcom/ss/texturerender/NativeWindow;

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableNativeWindow:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_8

    .line 7
    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget v4, v1, Lcom/ss/texturerender/VideoSurface;->mSurfaceWidth:I

    .line 16
    .line 17
    iget v1, v1, Lcom/ss/texturerender/VideoSurface;->mSurfaceHeight:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v3

    .line 21
    move v4, v1

    .line 22
    :goto_0
    if-lez v1, :cond_2

    .line 23
    .line 24
    if-lez v4, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-ne v5, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eq v5, v1, :cond_2

    .line 37
    .line 38
    :cond_1
    move v3, v2

    .line 39
    :cond_2
    invoke-virtual {v0}, Lcom/ss/texturerender/NativeWindow;->getSurfaceFormat()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-lez v5, :cond_5

    .line 44
    .line 45
    iget v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRGBBitsFromEGLConfig:I

    .line 46
    .line 47
    const/16 v7, 0x18

    .line 48
    .line 49
    if-gt v6, v7, :cond_3

    .line 50
    .line 51
    if-eq v5, v2, :cond_4

    .line 52
    .line 53
    const/4 v6, 0x2

    .line 54
    if-eq v5, v6, :cond_4

    .line 55
    .line 56
    const/4 v6, 0x3

    .line 57
    if-eq v5, v6, :cond_4

    .line 58
    .line 59
    move v3, v2

    .line 60
    move v6, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/16 v6, 0x16

    .line 63
    .line 64
    if-eq v5, v6, :cond_4

    .line 65
    .line 66
    const/16 v6, 0x2b

    .line 67
    .line 68
    if-eq v5, v6, :cond_4

    .line 69
    .line 70
    move v3, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    move v6, v5

    .line 73
    goto :goto_1

    .line 74
    :cond_5
    move v6, v2

    .line 75
    :goto_1
    if-eqz v3, :cond_8

    .line 76
    .line 77
    if-gtz v4, :cond_6

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    :cond_6
    if-gtz v1, :cond_7

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    :cond_7
    invoke-virtual {v0, v4, v1, v6}, Lcom/ss/texturerender/NativeWindow;->setBuffersGeometry(III)I

    .line 90
    .line 91
    .line 92
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 93
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v7, "setBuffersGeometry,oriW:"

    .line 100
    .line 101
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget v7, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportWidth:I

    .line 105
    .line 106
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v7, ",oriH:"

    .line 110
    .line 111
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget v7, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportHeight:I

    .line 115
    .line 116
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v7, ",oriFmt:"

    .line 120
    .line 121
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v5, ",newW:"

    .line 128
    .line 129
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v4, ",newH:"

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ",newFmt:"

    .line 144
    .line 145
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v3, "VideoSurfaceTexture"

    .line 156
    .line 157
    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->createEGLWindowSurface(Z)Z

    .line 161
    .line 162
    .line 163
    :cond_8
    return-void
.end method

.method public couldForceRelease()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIdleTimeStamp:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/32 v2, 0x1d4c0

    .line 9
    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public createEGLWindowSurface(Landroid/view/Surface;)Landroid/opengl/EGLSurface;
    .locals 13

    .line 27
    const-string v0, ""

    const-string v1, "VideoSurfaceTexture"

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 29
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/16 v3, 0x3055

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v2

    .line 30
    iget v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHDRType:I

    const/16 v4, 0x3038

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v3, v7, :cond_0

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/ss/texturerender/base/EGLRuntime;->isSupportBt2020PQ()I

    move-result v3

    if-lez v3, :cond_0

    .line 31
    new-array v3, v6, [I

    const/16 v9, 0x309d

    aput v9, v3, v8

    const/16 v9, 0x3340

    aput v9, v3, v7

    aput v4, v3, v5

    move v4, v7

    goto :goto_0

    .line 32
    :cond_0
    new-array v3, v7, [I

    aput v4, v3, v8

    move v4, v8

    :goto_0
    const/4 v9, 0x5

    .line 33
    :try_start_0
    iget v10, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",create window surface from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",attr:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v1, v11}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v10, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v11, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v10, v11, p1, v3, v8}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    .line 35
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, v3, :cond_1

    .line 36
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    .line 37
    invoke-virtual {p0, v2, v8, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 38
    iget v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create window surface failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 39
    :cond_1
    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v10, 0xa

    if-lt v3, v10, :cond_2

    if-eqz v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "EGL_EXT_surface_SMPTE2086_metadata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3341

    invoke-static {v2, p1, v4, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    .line 41
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3342

    invoke-static {v2, p1, v4, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    .line 42
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3343

    invoke-static {v2, p1, v4, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    .line 43
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3344

    invoke-static {v2, p1, v4, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    .line 44
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3345

    invoke-static {v2, p1, v4, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    .line 45
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3346

    invoke-static {v2, p1, v4, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    .line 46
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3347

    invoke-static {v2, p1, v4, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    .line 47
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3348

    invoke-static {v2, p1, v4, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    .line 48
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3349

    invoke-static {v2, p1, v4, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    .line 49
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x334a

    invoke-static {v2, p1, v4, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v2, p1

    goto :goto_1

    .line 50
    :catch_0
    invoke-virtual {p0, v9, v8, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 51
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v0, "createEGLWindowSurface exception failed"

    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    :cond_3
    :goto_1
    return-object v2
.end method

.method public createEGLWindowSurface(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/ss/texturerender/base/EGLRuntime;->eglDummySurface:Landroid/opengl/EGLSurface;

    .line 3
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    const-string v4, "VideoSurfaceTexture"

    if-eq v2, v3, :cond_3

    .line 4
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destory previous surface = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 5
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v3, "make current to dummy surface"

    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 7
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/ss/texturerender/base/EGLRuntime;->setDrawingObjectId(J)V

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 9
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 10
    iput-boolean v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMakeCurrent:Z

    .line 11
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNativeWindow:Lcom/ss/texturerender/NativeWindow;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Lcom/ss/texturerender/NativeWindow;->releaseWindow()I

    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNativeWindow:Lcom/ss/texturerender/NativeWindow;

    .line 14
    :cond_2
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destory previous surface done = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_3
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableUseEglDummySurface:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    if-eqz p1, :cond_4

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, p1, :cond_4

    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderSurface:Landroid/view/Surface;

    if-nez p1, :cond_4

    .line 16
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->createEGLWindowSurface(Landroid/view/Surface;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 18
    :goto_0
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEGLWindowSurface eglSurface:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, v0, :cond_5

    return v1

    .line 20
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->makeCurrent()Z

    .line 21
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableNativeWindow:I

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderSurface:Landroid/view/Surface;

    if-eqz p1, :cond_7

    .line 22
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNativeWindow:Lcom/ss/texturerender/NativeWindow;

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p1}, Lcom/ss/texturerender/NativeWindow;->releaseWindow()I

    .line 24
    :cond_6
    new-instance p1, Lcom/ss/texturerender/NativeWindow;

    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderSurface:Landroid/view/Surface;

    invoke-direct {p1, v0, v2}, Lcom/ss/texturerender/NativeWindow;-><init>(ILandroid/view/Surface;)V

    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNativeWindow:Lcom/ss/texturerender/NativeWindow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurfaceTime:J

    return v3

    .line 26
    :catch_0
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v0, "makeCurrent exception failed"

    invoke-static {p1, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public currentEffectProcessBegin(I)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectProcessDepth:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    long-to-double v0, v0

    .line 10
    iput-wide v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectStartTime:D

    .line 11
    .line 12
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectProcessDepth:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iput p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectProcessDepth:I

    .line 17
    .line 18
    return-void
.end method

.method public currentEffectProcessEnd(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectProcessDepth:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectProcessDepth:I

    .line 6
    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectStartTime:D

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmpl-double v0, v2, v4

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    long-to-double v2, v2

    .line 23
    iget-wide v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectStartTime:D

    .line 24
    .line 25
    sub-double/2addr v2, v4

    .line 26
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAccumulatedTime:Ljava/util/HashMap;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectFrameCount:Ljava/util/HashMap;

    .line 31
    .line 32
    if-eqz v4, :cond_4

    .line 33
    .line 34
    iget-object v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAverageTime:Ljava/util/HashMap;

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAccumulatedTime:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectFrameCount:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    double-to-float v0, v2

    .line 77
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAverageTime:Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAccumulatedTime:Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/Double;

    .line 102
    .line 103
    iget-object v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectFrameCount:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Ljava/lang/Integer;

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    if-nez v4, :cond_3

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 121
    .line 122
    .line 123
    move-result-wide v5

    .line 124
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    add-double/2addr v5, v2

    .line 129
    add-int/2addr v0, v1

    .line 130
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAccumulatedTime:Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectFrameCount:Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    if-lez v0, :cond_4

    .line 157
    .line 158
    int-to-double v0, v0

    .line 159
    div-double/2addr v5, v0

    .line 160
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAverageTime:Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    double-to-float v1, v5

    .line 167
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    nop

    .line 175
    :cond_4
    :goto_0
    return-void
.end method

.method public effectChainBegin()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-double v0, v0

    .line 6
    iput-wide v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainStartTime:D

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectProcessDepth:I

    .line 10
    .line 11
    return-void
.end method

.method public effectChainEnd()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-double v0, v0

    .line 6
    iget-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainStartTime:D

    .line 7
    .line 8
    sub-double/2addr v0, v2

    .line 9
    iget-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectStartTime:D

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmpl-double v2, v2, v4

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainAccumulatedTime:D

    .line 19
    .line 20
    add-double/2addr v2, v0

    .line 21
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainAccumulatedTime:D

    .line 22
    .line 23
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainFrameCount:I

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainFrameCount:I

    .line 28
    .line 29
    if-lez v0, :cond_1

    .line 30
    .line 31
    int-to-double v0, v0

    .line 32
    div-double/2addr v2, v0

    .line 33
    double-to-float v0, v2

    .line 34
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainAverageTime:F

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public eglSwapBuffer(Landroid/opengl/EGLSurface;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 v1, 0x300d

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->createEGLWindowSurface(Z)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string p2, ""

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string/jumbo v2, "swap buffer failed:"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v1, "VideoSurfaceTexture"

    .line 57
    .line 58
    invoke-static {p2, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 2
    .line 3
    const-string v1, "VideoSurfaceTexture"

    .line 4
    .line 5
    const-string v2, "finalize"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->releaseInternal()V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->finalize()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public frameMetaCallback(JJLjava/util/Map;)V
    .locals 16
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
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v0, p5

    .line 6
    .line 7
    iget v2, v1, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 8
    .line 9
    const-string v3, "VideoSurfaceTexture"

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v5, "frameMetaCallback this:"

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v5, " pts:"

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v5, " mRenderHandler:"

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v5, v1, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v2, v3, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v1, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 50
    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v12

    .line 58
    const/16 v2, 0x13

    .line 59
    .line 60
    const/16 v3, 0x12

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v3, 0x1

    .line 67
    const/16 v14, 0x4a

    .line 68
    .line 69
    if-ne v2, v3, :cond_1

    .line 70
    .line 71
    iget v2, v1, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 72
    .line 73
    const-string v3, "VideoSurfaceTexture"

    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v5, "frameMetaCallback tile info: "

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v2, v3, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v15, v1, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameMetaData:Ljava/util/List;

    .line 106
    .line 107
    new-instance v9, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;

    .line 108
    .line 109
    move-object v2, v9

    .line 110
    move-wide/from16 v3, p1

    .line 111
    .line 112
    move-wide/from16 v5, p3

    .line 113
    .line 114
    move-wide v7, v12

    .line 115
    move-object v14, v9

    .line 116
    move-object/from16 v9, p5

    .line 117
    .line 118
    invoke-direct/range {v2 .. v9}, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;-><init>(JJJLjava/util/Map;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :cond_1
    iget v2, v1, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 125
    .line 126
    and-int/lit8 v3, v2, 0x4

    .line 127
    .line 128
    if-nez v3, :cond_2

    .line 129
    .line 130
    return-void

    .line 131
    :cond_2
    iget-object v3, v1, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 132
    .line 133
    if-nez v3, :cond_3

    .line 134
    .line 135
    const-string v0, "VideoSurfaceTexture"

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v4, "mOffScreenSurface null,return this:"

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-static {v2, v0, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_3
    :try_start_0
    iget-object v2, v1, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 159
    .line 160
    const/16 v3, 0x20

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    new-instance v3, Landroid/os/Bundle;

    .line 167
    .line 168
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string/jumbo v4, "update_frame_time"

    .line 172
    .line 173
    .line 174
    new-instance v5, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 175
    .line 176
    move-wide/from16 v6, p3

    .line 177
    .line 178
    invoke-direct {v5, v10, v11, v6, v7}, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;-><init>(JJ)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 182
    .line 183
    .line 184
    const-string v4, "master_clock"

    .line 185
    .line 186
    const/4 v5, 0x0

    .line 187
    if-eqz v0, :cond_4

    .line 188
    .line 189
    const/16 v6, 0x2e

    .line 190
    .line 191
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    check-cast v6, Ljava/lang/String;

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    goto :goto_3

    .line 204
    :cond_4
    move-object v6, v5

    .line 205
    :goto_0
    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string/jumbo v4, "tile_info"

    .line 209
    .line 210
    .line 211
    if-eqz v0, :cond_5

    .line 212
    .line 213
    const/16 v6, 0x4a

    .line 214
    .line 215
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    move-object v5, v0

    .line 224
    check-cast v5, Ljava/lang/String;

    .line 225
    .line 226
    :cond_5
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v0, "master_clock_diff"

    .line 230
    .line 231
    invoke-virtual {v3, v0, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 232
    .line 233
    .line 234
    const-string/jumbo v0, "texture"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 241
    .line 242
    .line 243
    iget-object v3, v1, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncMsg:Landroid/os/Message;

    .line 244
    .line 245
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    .line 247
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    .line 250
    .line 251
    :try_start_2
    iget-object v0, v1, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncMsg:Landroid/os/Message;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 254
    .line 255
    .line 256
    iget-object v0, v1, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncMsg:Landroid/os/Message;

    .line 257
    .line 258
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 259
    .line 260
    const/high16 v4, -0x80000000

    .line 261
    .line 262
    if-eq v2, v4, :cond_6

    .line 263
    .line 264
    int-to-long v4, v2

    .line 265
    cmp-long v2, v4, v10

    .line 266
    .line 267
    if-eqz v2, :cond_6

    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :catchall_0
    move-exception v0

    .line 274
    goto :goto_2

    .line 275
    :catch_1
    move-exception v0

    .line 276
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    .line 278
    .line 279
    :cond_6
    :goto_1
    monitor-exit v3

    .line 280
    goto :goto_4

    .line 281
    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 283
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 284
    .line 285
    .line 286
    :goto_4
    return-void
.end method

.method public getBundleOption(I)Landroid/os/Bundle;
    .locals 1

    .line 1
    const/16 v0, 0xaa

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessParamter:Landroid/os/Bundle;

    .line 8
    .line 9
    return-object p1
.end method

.method public getConsumerHeight(Landroid/opengl/EGLSurface;)I
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
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 11
    .line 12
    const/16 v2, 0x3056

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v1, p1, v2, v0, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 16
    .line 17
    .line 18
    aget p1, v0, v3

    .line 19
    .line 20
    return p1
.end method

.method public getConsumerWidth(Landroid/opengl/EGLSurface;)I
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
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 11
    .line 12
    const/16 v2, 0x3057

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v1, p1, v2, v0, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 16
    .line 17
    .line 18
    aget p1, v0, v3

    .line 19
    .line 20
    return p1
.end method

.method public getCropParamsBundle(Z)Landroid/os/Bundle;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraRenderCropParamsBundle:Landroid/os/Bundle;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mMainRenderCropParamsBundle:Landroid/os/Bundle;

    .line 7
    .line 8
    :goto_0
    return-object p1
.end method

.method public getEffectConfig()Lcom/ss/texturerender/effect/EffectConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEffectTexture()Lcom/ss/texturerender/effect/EffectTexture;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsRelease:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexHeight:I

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v1, v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexWidth:I

    .line 25
    .line 26
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    :cond_1
    new-instance v0, Lcom/ss/texturerender/effect/EffectTexture;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureId:Lcom/ss/texturerender/ITexture;

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/ss/texturerender/ITexture;->lock()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexWidth:I

    .line 43
    .line 44
    iget v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexHeight:I

    .line 45
    .line 46
    const v7, 0x8d65

    .line 47
    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    move-object v2, v0

    .line 51
    invoke-direct/range {v2 .. v7}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureId:Lcom/ss/texturerender/ITexture;

    .line 57
    .line 58
    invoke-interface {v0}, Lcom/ss/texturerender/ITexture;->unlock()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    if-ne v0, v2, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/ss/texturerender/producer/IFrameProducer;->getEffectTexture()Lcom/ss/texturerender/effect/EffectTexture;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_4
    return-object v1
.end method

.method public getEnableUseEglDummySurface()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableUseEglDummySurface:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtraRealSurfaces()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/view/Surface;",
            "Landroid/opengl/EGLSurface;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraVideoSurfaceTexture()Lcom/ss/texturerender/VideoSurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/TextureRenderer;->getExtraVideoSurfaceTexture()Lcom/ss/texturerender/VideoSurfaceTexture;

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

.method public getFloatOption(I)F
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getFloatOption(II)F

    move-result p1

    return p1
.end method

.method public getFloatOption(II)F
    .locals 1

    const/16 v0, 0x78

    if-eq p1, v0, :cond_5

    const/16 v0, 0x83

    if-eq p1, v0, :cond_4

    const/16 v0, 0x84

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9b

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 2
    :pswitch_0
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainAverageTime:F

    return p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAverageTime:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    return v0

    .line 6
    :pswitch_2
    iget-wide p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastFrameTime:D

    :goto_0
    double-to-float p1, p1

    return p1

    .line 7
    :pswitch_3
    iget-wide p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mAccumulatedPlayingTime:D

    goto :goto_0

    .line 8
    :cond_1
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreProcessAverageCostTime:F

    return p1

    .line 9
    :cond_2
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreProcessSuccessRate:F

    return p1

    .line 10
    :cond_3
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessAverageCostTime:F

    return p1

    .line 11
    :cond_4
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessSuccessRate:F

    return p1

    .line 12
    :cond_5
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFPS:F

    return p1

    :pswitch_data_0
    .packed-switch 0x7a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFrameCallbackBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallbackBundle:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrameMetaData(JJ)Ljava/util/LinkedList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/LinkedList<",
            "Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameMetaData:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameMetaData:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameMetaData:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;->getReleaseNanoTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    sub-long/2addr v3, p1

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    cmp-long v3, v3, p3

    .line 38
    .line 39
    if-gtz v3, :cond_0

    .line 40
    .line 41
    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameMetaData:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameMetaData:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/16 v3, 0xa

    .line 60
    .line 61
    const-string v4, "VideoSurfaceTexture"

    .line 62
    .line 63
    if-le v2, v3, :cond_3

    .line 64
    .line 65
    :goto_1
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameMetaData:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-ge v1, v2, :cond_3

    .line 72
    .line 73
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameMetaData:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;->getReleaseNanoTime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    sub-long/2addr v2, p1

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    cmp-long v2, v2, p3

    .line 91
    .line 92
    if-lez v2, :cond_2

    .line 93
    .line 94
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v5, "FrameMetaData size large than 10, remove: "

    .line 102
    .line 103
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameMetaData:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-eqz p3, :cond_4

    .line 130
    .line 131
    iget p3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 132
    .line 133
    new-instance p4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "getFrameMetaData failed for cached metadate out of sync releaseNanoTime "

    .line 139
    .line 140
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p3, v4, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    return-object v0

    .line 154
    :cond_5
    const/4 p1, 0x0

    .line 155
    return-object p1
.end method

.method public getFrameProducer()Lcom/ss/texturerender/producer/IFrameProducer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1c

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/ss/texturerender/producer/ImageReaderProducer;

    .line 12
    .line 13
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/ss/texturerender/producer/ImageReaderProducer;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOnFrameAvailableListener:Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Lcom/ss/texturerender/producer/IFrameProducer;->setOnFrameAvailableListener(Lcom/ss/texturerender/IFrameAvailableListener;Landroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 28
    .line 29
    return-object v0
.end method

.method public getIntOption(I)I
    .locals 1

    const/16 v0, 0x79

    if-eq p1, v0, :cond_8

    const/16 v0, 0x82

    if-eq p1, v0, :cond_7

    const/16 v0, 0x89

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8d

    if-eq p1, v0, :cond_5

    const/16 v0, 0x90

    if-eq p1, v0, :cond_4

    const/16 v0, 0x98

    if-eq p1, v0, :cond_3

    const/16 v0, 0xab

    if-eq p1, v0, :cond_2

    const/16 v0, 0x92

    if-eq p1, v0, :cond_1

    const/16 v0, 0x93

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(II)I

    move-result p1

    return p1

    .line 2
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessScaleType:I

    return p1

    .line 3
    :cond_1
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDoMirrorFirst:I

    return p1

    .line 4
    :cond_2
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableResetCropParamsInRender:I

    return p1

    .line 5
    :cond_3
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOpenVQScore:I

    return p1

    .line 6
    :cond_4
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNotKeepLastParams:I

    return p1

    .line 7
    :cond_5
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableExtraSurfaceRenderCallback:I

    return p1

    .line 8
    :cond_6
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFreezeDirector:I

    return p1

    .line 9
    :cond_7
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mBitDepth:I

    return p1

    .line 10
    :cond_8
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCount:I

    return p1
.end method

.method public getIntOption(II)I
    .locals 6

    const/16 v0, 0xf

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_d

    const/16 v4, 0x8

    if-eq p1, v4, :cond_c

    const/16 v4, 0xa

    if-eq p1, v4, :cond_a

    const/16 v4, 0x17

    if-eq p1, v4, :cond_8

    const/16 v4, 0x7e

    const/4 v5, -0x1

    if-eq p1, v4, :cond_6

    const/16 v4, 0x87

    if-eq p1, v4, :cond_5

    const/16 v4, 0x89

    if-eq p1, v4, :cond_4

    const/16 v4, 0xa3

    if-eq p1, v4, :cond_3

    if-eq p1, v0, :cond_d

    const/16 v4, 0x10

    if-eq p1, v4, :cond_2

    const/16 v4, 0x12

    if-eq p1, v4, :cond_0

    const/16 v4, 0x13

    if-eq p1, v4, :cond_d

    return v5

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ss/texturerender/TextureRenderer;->getEffectConfig()Lcom/ss/texturerender/effect/EffectConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectConfig;->isOpenSharpen()Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mConfig:Lcom/ss/texturerender/effect/EffectConfig;

    invoke-virtual {p1, v3}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    move-result p1

    return p1

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mConfig:Lcom/ss/texturerender/effect/EffectConfig;

    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    move-result p1

    return p1

    .line 14
    :cond_4
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFreezeDirector:I

    return p1

    .line 15
    :cond_5
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHeadposeCallbackIntegral:I

    return p1

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorCode:Ljava/util/HashMap;

    if-eqz p1, :cond_7

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_7
    return v5

    .line 19
    :cond_8
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/ss/texturerender/TextureRenderer;->getEffectConfig()Lcom/ss/texturerender/effect/EffectConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    move-result p1

    if-eqz p1, :cond_9

    move v2, v3

    :cond_9
    return v2

    .line 20
    :cond_a
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/ss/texturerender/TextureRenderer;->getEffectConfig()Lcom/ss/texturerender/effect/EffectConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectConfig;->isOpenSR()Z

    move-result p1

    if-eqz p1, :cond_b

    move v2, v3

    :cond_b
    return v2

    .line 21
    :cond_c
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHDRType:I

    return p1

    :cond_d
    if-ne p1, v1, :cond_e

    const/4 p2, 0x5

    goto :goto_0

    :cond_e
    if-ne p1, v0, :cond_f

    move p2, v3

    .line 22
    :cond_f
    :goto_0
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUsingEffect:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_10

    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_10
    return v2
.end method

.method public getLongOption(II)J
    .locals 0

    .line 1
    const/16 p2, 0xa2

    .line 2
    .line 3
    if-eq p1, p2, :cond_0

    .line 4
    .line 5
    const-wide/16 p1, -0x1

    .line 6
    .line 7
    return-wide p1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTimestamp()J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    return-wide p1
.end method

.method public declared-synchronized getOffScreenSurface()Lcom/ss/texturerender/VideoSurface;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsRelease:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/ss/texturerender/VideoSurface;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/ss/texturerender/VideoSurface;-><init>(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iput-wide v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIdleTimeStamp:J

    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-object v0

    .line 34
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    throw v0
.end method

.method public getOjbectId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mObjectId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOption(I)Landroid/os/Bundle;
    .locals 1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_1

    const/16 v0, 0x99

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreBundle:Landroid/os/Bundle;

    return-object p1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRoiSRParamsBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method public getOption(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/TextureRenderer;->getOption(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getParamList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mParamList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRenderHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRenderSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerial()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSerial:I

    .line 2
    .line 3
    return v0
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getStringOption(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringOption(II)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x7f

    .line 2
    const-string v1, ""

    if-eq p1, v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorMsg:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getSurfaceUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurfaceTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTexHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getTexId()Lcom/ss/texturerender/ITexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureId:Lcom/ss/texturerender/ITexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTexWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimestamp()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/ss/texturerender/producer/IFrameProducer;->getTimestamp()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    :cond_0
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public getTransformMatrix([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/ss/texturerender/producer/IFrameProducer;->getTransformMatrix([F)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public getUpdateSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUseSr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSuperOpen:I

    .line 2
    .line 3
    return v0
.end method

.method public getViewportHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getConsumerHeight(Landroid/opengl/EGLSurface;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportHeight:I

    .line 8
    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportHeight:I

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportHeight:I

    .line 14
    .line 15
    return v0
.end method

.method public getViewportWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getConsumerWidth(Landroid/opengl/EGLSurface;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportWidth:I

    .line 8
    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportWidth:I

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mViewportWidth:I

    .line 14
    .line 15
    return v0
.end method

.method public getYUV2RGBMatrix(Lcom/ss/texturerender/effect/EffectTexture;)Lcom/ss/texturerender/math/ColorConversion;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->isRelease()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    if-eqz p1, :cond_7

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const v2, 0x8d65

    .line 15
    .line 16
    .line 17
    if-eq v0, v2, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getFormat()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x0

    .line 25
    const v2, 0x32315659

    .line 26
    .line 27
    .line 28
    const/16 v3, 0x11

    .line 29
    .line 30
    const/16 v4, 0x28

    .line 31
    .line 32
    const/16 v5, 0x27

    .line 33
    .line 34
    const/16 v6, 0x23

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    if-lez p1, :cond_2

    .line 38
    .line 39
    if-eq p1, v6, :cond_1

    .line 40
    .line 41
    if-eq p1, v5, :cond_1

    .line 42
    .line 43
    if-eq p1, v4, :cond_1

    .line 44
    .line 45
    if-eq p1, v3, :cond_1

    .line 46
    .line 47
    if-ne p1, v2, :cond_6

    .line 48
    .line 49
    :cond_1
    :goto_0
    move v0, v7

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 52
    .line 53
    const/4 v8, -0x1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    const/16 v9, 0x85

    .line 57
    .line 58
    invoke-virtual {p1, v9}, Lcom/ss/texturerender/VideoSurface;->getIntOption(I)I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v9, v8

    .line 64
    :goto_1
    const/4 v10, 0x4

    .line 65
    if-ne v9, v10, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    if-eqz p1, :cond_5

    .line 69
    .line 70
    invoke-static {p1}, Lcom/ss/texturerender/NativeWindow;->getFormat(Landroid/view/Surface;)I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    :cond_5
    if-eq v8, v6, :cond_1

    .line 75
    .line 76
    if-eq v8, v5, :cond_1

    .line 77
    .line 78
    if-eq v8, v4, :cond_1

    .line 79
    .line 80
    const/16 p1, 0x10

    .line 81
    .line 82
    if-eq v8, p1, :cond_1

    .line 83
    .line 84
    if-eq v8, v3, :cond_1

    .line 85
    .line 86
    const/16 p1, 0x14

    .line 87
    .line 88
    if-eq v8, p1, :cond_1

    .line 89
    .line 90
    if-ne v8, v2, :cond_6

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 94
    .line 95
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDataSpace:I

    .line 96
    .line 97
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mBitDepth:I

    .line 98
    .line 99
    invoke-static {p1, v0}, Lcom/ss/texturerender/math/ColorConversion;->getFromDataspace(II)Lcom/ss/texturerender/math/ColorConversion;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_7
    :goto_3
    return-object v1
.end method

.method public handleSurfaceChange(Landroid/os/Message;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x7

    .line 15
    const-string v2, "VideoSurfaceTexture"

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->checkRecreateEGLSurface(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_4

    .line 24
    .line 25
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 26
    .line 27
    const-string v0, "don\'t recreateEGLSurface for HDR"

    .line 28
    .line 29
    invoke-static {p1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return v1

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderSurface:Landroid/view/Surface;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurface:Landroid/view/Surface;

    .line 43
    .line 44
    if-ne p1, v0, :cond_4

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/Surface;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "SurfaceTexture"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 61
    .line 62
    const-string/jumbo v0, "surface change the same surface hashcode"

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    .line 74
    .line 75
    :cond_3
    return v1

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurface:Landroid/view/Surface;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderSurface:Landroid/view/Surface;

    .line 79
    .line 80
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOnFrameAvailableListener:Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;->disable()V

    .line 83
    .line 84
    .line 85
    new-instance p1, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;-><init>(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOnFrameAvailableListener:Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;

    .line 91
    .line 92
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallbackInRenderThread:I

    .line 93
    .line 94
    const/4 v3, 0x1

    .line 95
    if-ne v0, v3, :cond_5

    .line 96
    .line 97
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 98
    .line 99
    invoke-virtual {p0, p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 107
    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOnFrameAvailableListener:Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;

    .line 111
    .line 112
    iget-object v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 113
    .line 114
    invoke-interface {p1, v0, v4}, Lcom/ss/texturerender/producer/IFrameProducer;->setOnFrameAvailableListener(Lcom/ss/texturerender/IFrameAvailableListener;Landroid/os/Handler;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/ss/texturerender/base/EGLRuntime;->getDrawingObjectId()J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    const-wide/16 v6, 0x0

    .line 129
    .line 130
    cmp-long p1, v4, v6

    .line 131
    .line 132
    if-eqz p1, :cond_7

    .line 133
    .line 134
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 135
    .line 136
    iget-wide v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mObjectId:J

    .line 137
    .line 138
    invoke-virtual {p1, v4, v5}, Lcom/ss/texturerender/base/EGLRuntime;->isCurrentObject(J)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    move p1, v3

    .line 145
    goto :goto_1

    .line 146
    :cond_7
    move p1, v1

    .line 147
    :goto_1
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->createEGLWindowSurface(Z)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_8

    .line 152
    .line 153
    return p1

    .line 154
    :cond_8
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSerial:I

    .line 155
    .line 156
    add-int/2addr p1, v3

    .line 157
    iput p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSerial:I

    .line 158
    .line 159
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string/jumbo v4, "update surface done serial = "

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSerial:I

    .line 176
    .line 177
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string/jumbo v4, "update time = "

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-wide v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurfaceTime:J

    .line 187
    .line 188
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {p1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 199
    .line 200
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 201
    .line 202
    if-eq p1, v0, :cond_9

    .line 203
    .line 204
    move v1, v3

    .line 205
    :cond_9
    return v1
.end method

.method public handleUpdateVideoState(I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mState:I

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mState:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    const-string v4, "VideoSurfaceTexture"

    .line 9
    .line 10
    if-eq p1, v3, :cond_2

    .line 11
    .line 12
    if-eq p1, v2, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->handleUpdateVideoStateForStop()V

    .line 19
    .line 20
    .line 21
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDropCount:I

    .line 22
    .line 23
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 24
    .line 25
    const-string v0, "TEXTURE_STATE_STOP"

    .line 26
    .line 27
    invoke-static {p1, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "TEXTURE_STATE_STOP mStartPlayTimeNanos:"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-wide v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStartPlayTimeNanos:J

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p1, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    long-to-float p1, v5

    .line 61
    float-to-double v5, p1

    .line 62
    iput-wide v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastFrameTime:D

    .line 63
    .line 64
    iget-wide v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStartPlayTimeNanos:J

    .line 65
    .line 66
    const-wide/16 v7, 0x0

    .line 67
    .line 68
    cmp-long p1, v5, v7

    .line 69
    .line 70
    if-gtz p1, :cond_3

    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    iput-wide v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStartPlayTimeNanos:J

    .line 77
    .line 78
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 79
    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v6, "TEXTURE_STATE_PLAYING mStartPlayTimeNanos:"

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-wide v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStartPlayTimeNanos:J

    .line 91
    .line 92
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {p1, v4, v5}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    invoke-interface {p1, p0}, Lcom/ss/texturerender/vsync/IVsyncHelper;->addObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    if-eq v0, v3, :cond_5

    .line 110
    .line 111
    if-eq v0, v2, :cond_5

    .line 112
    .line 113
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 114
    .line 115
    :cond_5
    :goto_0
    return-void
.end method

.method protected handleUpdateVideoStateForStop()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDropCount:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1, p0}, Lcom/ss/texturerender/vsync/IVsyncHelper;->removeObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFreezeDirector:I

    .line 12
    .line 13
    return-void
.end method

.method public ignoreSRResolutionCheck(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIgnoreSRResCheck:Z

    .line 2
    .line 3
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "ignoreSRResolutionCheck:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "VideoSurfaceTexture"

    .line 23
    .line 24
    invoke-static {v0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public initExtraSurface(Landroid/view/Surface;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "initExtraSurface begin sf:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", surface:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", mExtraSurfaceMap size:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "VideoSurfaceTexture"

    .line 43
    .line 44
    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->createEGLWindowSurface(Landroid/view/Surface;)Landroid/opengl/EGLSurface;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v4, "initExtraSurface end sf:"

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v4, ", eglSurface:"

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {p1, v3, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    :goto_0
    return-void
.end method

.method public isAlive()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "is alive = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", eglsur = "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "VideoSurfaceTexture"

    .line 33
    .line 34
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 42
    .line 43
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 44
    .line 45
    if-eq v0, v1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 51
    :goto_1
    return v0
.end method

.method public isCurrentObject()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mObjectId:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/base/EGLRuntime;->isCurrentObject(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public isMakeCurrent()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMakeCurrent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 6
    .line 7
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isPreRender()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPreRender:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRelease()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsRelease:Z

    .line 2
    .line 3
    return v0
.end method

.method public isUpdateFrame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameReady:Z

    .line 2
    .line 3
    return v0
.end method

.method public lock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public makeCurrent()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {p0, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->makeCurrent(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMakeCurrent:Z

    .line 3
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    if-eqz v1, :cond_0

    .line 4
    iget-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mObjectId:J

    invoke-virtual {v1, v2, v3}, Lcom/ss/texturerender/base/EGLRuntime;->setDrawingObjectId(J)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 6

    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    const-string v2, "VideoSurfaceTexture"

    if-ne p1, v0, :cond_0

    .line 6
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v0, "no surface for make current"

    invoke-static {p1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " make current again"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 11
    const-string v3, ""

    invoke-virtual {p0, v0, v1, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 12
    iget v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "make current failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " error:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    .line 13
    :cond_1
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "make current done = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public needDrop()Z
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStartPlayTimeNanos:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    const-string/jumbo v3, "texture"

    .line 8
    .line 9
    .line 10
    const-string v4, "VideoSurfaceTexture"

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTimestamp()J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    cmp-long v0, v0, v6

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDropCount:I

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    if-ge v0, v1, :cond_0

    .line 27
    .line 28
    add-int/2addr v0, v5

    .line 29
    iput v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDropCount:I

    .line 30
    .line 31
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, " previous play period,drop count:"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDropCount:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v4, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v5

    .line 62
    :cond_0
    iget-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPaused:Z

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, " is paused"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v4, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return v5

    .line 92
    :cond_1
    const/4 v0, 0x0

    .line 93
    return v0
.end method

.method public notifyError(IILjava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorCode:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorMsg:Ljava/util/HashMap;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorCode:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorMsg:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/texturerender/VideoSurface;->onTextureRenderError(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    return-void
.end method

.method public notifyExtraSurfaceRender(Landroid/view/Surface;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSerial:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTimestamp()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/ss/texturerender/VideoSurface;->onTextureUpdate(ILandroid/view/Surface;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    :cond_0
    return-void
.end method

.method public notifyRenderFrame(I)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSerial:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTimestamp()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0, p1, v1, v2}, Lcom/ss/texturerender/VideoSurface;->onTextureUpdate(IJ)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHeadPose:Lcom/ss/texturerender/math/Quaternion;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    double-to-float v3, v2

    .line 28
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHeadPose:Lcom/ss/texturerender/math/Quaternion;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    double-to-float v4, v4

    .line 35
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHeadPose:Lcom/ss/texturerender/math/Quaternion;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    double-to-float v5, v5

    .line 42
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHeadPose:Lcom/ss/texturerender/math/Quaternion;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    double-to-float v6, v6

    .line 49
    move v2, p1

    .line 50
    invoke-virtual/range {v1 .. v6}, Lcom/ss/texturerender/VideoSurface;->onTextureUpdate(IFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    :cond_1
    return-void
.end method

.method public notifyVsync()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncSetVsync:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->sendRenderMsg(IZ)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->sendRenderMsg(IZ)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public onFocusLoss()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMakeCurrent:Z

    .line 3
    .line 4
    return-void
.end method

.method public onFrameAvailable(ZI)V
    .locals 2

    .line 1
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameReady:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/ss/texturerender/vsync/IVsyncHelper;->isWorking()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->sendRenderMsg(IZ)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->sendRenderMsg(IZ)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public onHeadposeChanged(Lcom/ss/texturerender/math/Quaternion;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getOffScreenSurface()Lcom/ss/texturerender/VideoSurface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSerial:I

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    double-to-float v2, v2

    .line 14
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    double-to-float v3, v3

    .line 19
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    double-to-float v4, v4

    .line 24
    invoke-virtual {p1}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    double-to-float v5, v5

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/ss/texturerender/VideoSurface;->onHeadposeChanged(IFFFF)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTouchHelper:Lcom/ss/texturerender/touch/TouchHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/touch/TouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public declared-synchronized pause(ZZ)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget-boolean p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPaused:Z

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iget-boolean p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPreRender:Z

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 22
    .line 23
    const-string v0, "VideoSurfaceTexture"

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "need active , post a resume msg"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p2, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 46
    .line 47
    const/16 v0, 0xa

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iput-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPreRender:Z

    .line 57
    .line 58
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 59
    .line 60
    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    iput-boolean p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPaused:Z

    .line 64
    .line 65
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 66
    .line 67
    const-string p2, "VideoSurfaceTexture"

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, "paused = "

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-boolean v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPaused:Z

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p1
.end method

.method public preRender()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsPreRender:Z

    .line 3
    .line 4
    return-void
.end method

.method public registerTouchListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTouchHelper:Lcom/ss/texturerender/touch/TouchHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/texturerender/touch/TouchHelper;

    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/texturerender/touch/TouchHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTouchHelper:Lcom/ss/texturerender/touch/TouchHelper;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTouchHelper:Lcom/ss/texturerender/touch/TouchHelper;

    invoke-virtual {v0, p1}, Lcom/ss/texturerender/touch/TouchHelper;->register(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    return-void
.end method

.method public registerTouchListener(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTouchHelper:Lcom/ss/texturerender/touch/TouchHelper;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/ss/texturerender/touch/TouchHelper;

    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/texturerender/touch/TouchHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTouchHelper:Lcom/ss/texturerender/touch/TouchHelper;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTouchHelper:Lcom/ss/texturerender/touch/TouchHelper;

    invoke-virtual {v0, p1}, Lcom/ss/texturerender/touch/TouchHelper;->register(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 4
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v1, "VideoSurfaceTexture"

    const-string v2, "release"

    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->releaseInternal()V

    .line 6
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method

.method public release(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", glthread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoSurfaceTexture"

    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->releaseOffScreenSurface(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->release()V

    return-void
.end method

.method public releaseAllExtraSurface()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 28
    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/opengl/EGLSurface;

    .line 44
    .line 45
    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 46
    .line 47
    .line 48
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "releaseAllExtraSurface sf:"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, ", eglSurface:"

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v3, "VideoSurfaceTexture"

    .line 80
    .line 81
    invoke-static {v2, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method public declared-synchronized releaseAllExtraSurface_l()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x19

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x3

    .line 13
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    new-instance v1, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "texture"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw v0
.end method

.method public releaseExtraSurface(Landroid/view/Surface;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "releaseExtraSurface begin sf:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", surface:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", mExtraSurfaceMap size:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "VideoSurfaceTexture"

    .line 43
    .line 44
    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/opengl/EGLSurface;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 58
    .line 59
    if-eq v0, v1, :cond_0

    .line 60
    .line 61
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 62
    .line 63
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_1
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "releaseExtraSurface end sf:"

    .line 79
    .line 80
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, ", eglSurface:"

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraSurfaceMap:Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {p1, v3, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public declared-synchronized releaseInternal()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsRelease:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->lock()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 10
    .line 11
    const-string v1, "VideoSurfaceTexture"

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, " release internal"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsRelease:Z

    .line 35
    .line 36
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureId:Lcom/ss/texturerender/ITexture;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/ss/texturerender/IRef;->decRef()I

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {v1}, Lcom/ss/texturerender/producer/IFrameProducer;->release()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_3

    .line 56
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCreateLooper:Landroid/os/Looper;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/ss/texturerender/TextureRenderer;->getEffectTextureManager()Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureQueue:Ljava/util/LinkedList;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-lez v1, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureQueue:Ljava/util/LinkedList;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/ss/texturerender/effect/EffectTexture;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/EffectTextureManager;->onTextureReturn(Lcom/ss/texturerender/effect/EffectTexture;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_1
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-static {v2}, Lcom/ss/texturerender/TexGLUtils;->deleteTexture(I)V

    .line 93
    .line 94
    .line 95
    :goto_2
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 96
    .line 97
    const-string v3, "VideoSurfaceTexture"

    .line 98
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v5, "return fbotex:"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ",st:"

    .line 117
    .line 118
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v2, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 133
    .line 134
    const-string v1, "VideoSurfaceTexture"

    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v3, " release internal done"

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    :try_start_2
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :catchall_1
    move-exception v0

    .line 161
    goto :goto_5

    .line 162
    :goto_3
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    .line 163
    .line 164
    .line 165
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    :cond_3
    :goto_4
    monitor-exit p0

    .line 167
    return-void

    .line 168
    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    throw v0
.end method

.method public releaseOffScreenSurface(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/ss/texturerender/producer/IFrameProducer;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurface:Landroid/view/Surface;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 19
    .line 20
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 21
    .line 22
    if-eq p1, v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 25
    .line 26
    invoke-static {v2, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 27
    .line 28
    .line 29
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMakeCurrent:Z

    .line 34
    .line 35
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNativeWindow:Lcom/ss/texturerender/NativeWindow;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/ss/texturerender/NativeWindow;->releaseWindow()I

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNativeWindow:Lcom/ss/texturerender/NativeWindow;

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->releaseAllExtraSurface()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->updateSurface(Landroid/view/Surface;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->releaseAllExtraSurface_l()V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 55
    .line 56
    and-int/lit8 p1, p1, 0x4

    .line 57
    .line 58
    if-lez p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncMsg:Landroid/os/Message;

    .line 61
    .line 62
    monitor-enter p1

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncMsg:Landroid/os/Message;

    .line 64
    .line 65
    const/high16 v3, -0x80000000

    .line 66
    .line 67
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 70
    .line 71
    .line 72
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 73
    .line 74
    const-string v3, "VideoSurfaceTexture"

    .line 75
    .line 76
    const-string v4, "releaseOffScreenSurface mSyncMsg.notify"

    .line 77
    .line 78
    invoke-static {v2, v3, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    monitor-exit p1

    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw v0

    .line 86
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIdleTimeStamp:J

    .line 91
    .line 92
    const/4 p1, 0x3

    .line 93
    iput p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mState:I

    .line 94
    .line 95
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;

    .line 96
    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    invoke-interface {p1, v1}, Lcom/ss/texturerender/vsync/IVsyncHelper;->setEnable(Z)V

    .line 100
    .line 101
    .line 102
    :cond_4
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mParamList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 103
    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mParamList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 110
    .line 111
    :cond_5
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraRenderCropParamsBundle:Landroid/os/Bundle;

    .line 112
    .line 113
    if-nez p1, :cond_6

    .line 114
    .line 115
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mMainRenderCropParamsBundle:Landroid/os/Bundle;

    .line 116
    .line 117
    if-eqz p1, :cond_8

    .line 118
    .line 119
    :cond_6
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraRenderCropParamsBundle:Landroid/os/Bundle;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mMainRenderCropParamsBundle:Landroid/os/Bundle;

    .line 122
    .line 123
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 124
    .line 125
    const/16 v2, 0x28

    .line 126
    .line 127
    if-eqz p1, :cond_7

    .line 128
    .line 129
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    .line 135
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 136
    .line 137
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    new-instance p1, Landroid/os/Message;

    .line 142
    .line 143
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 144
    .line 145
    .line 146
    iput v2, p1, Landroid/os/Message;->what:I

    .line 147
    .line 148
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    .line 151
    .line 152
    invoke-virtual {v2, p1}, Lcom/ss/texturerender/TextureRenderer;->handleTextureRenderMsg(Landroid/os/Message;)V

    .line 153
    .line 154
    .line 155
    :catch_0
    :cond_8
    :goto_2
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 156
    .line 157
    if-eqz p1, :cond_9

    .line 158
    .line 159
    invoke-virtual {p0, v1, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->sendRenderMsg(IZ)V

    .line 160
    .line 161
    .line 162
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 163
    .line 164
    :cond_9
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCount:I

    .line 165
    .line 166
    const-wide/16 v2, 0x0

    .line 167
    .line 168
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mAccumulatedPlayingTime:D

    .line 169
    .line 170
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastFrameTime:D

    .line 171
    .line 172
    const/4 p1, 0x0

    .line 173
    iput p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFPS:F

    .line 174
    .line 175
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectStartTime:D

    .line 176
    .line 177
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mCurrentEffectProcessDepth:I

    .line 178
    .line 179
    iget-object v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectFrameCount:Ljava/util/HashMap;

    .line 180
    .line 181
    if-eqz v4, :cond_a

    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 184
    .line 185
    .line 186
    :cond_a
    iget-object v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAccumulatedTime:Ljava/util/HashMap;

    .line 187
    .line 188
    if-eqz v4, :cond_b

    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 191
    .line 192
    .line 193
    :cond_b
    iget-object v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mPerEffectAverageTime:Ljava/util/HashMap;

    .line 194
    .line 195
    if-eqz v4, :cond_c

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 198
    .line 199
    .line 200
    :cond_c
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainStartTime:D

    .line 201
    .line 202
    iput-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainAccumulatedTime:D

    .line 203
    .line 204
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainFrameCount:I

    .line 205
    .line 206
    iput p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEffectChainAverageTime:F

    .line 207
    .line 208
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorCode:Ljava/util/HashMap;

    .line 209
    .line 210
    if-eqz p1, :cond_d

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 213
    .line 214
    .line 215
    :cond_d
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorMsg:Ljava/util/HashMap;

    .line 216
    .line 217
    if-eqz p1, :cond_e

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 220
    .line 221
    .line 222
    :cond_e
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->releaseOther()V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectConfig;->reset()V

    .line 228
    .line 229
    .line 230
    iput-boolean v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIgnoreSRResCheck:Z

    .line 231
    .line 232
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRoiSRParamsBundle:Landroid/os/Bundle;

    .line 233
    .line 234
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    .line 235
    .line 236
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFreezeDirector:I

    .line 237
    .line 238
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOpenVQScore:I

    .line 239
    .line 240
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreBundle:Landroid/os/Bundle;

    .line 241
    .line 242
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableResetCropParamsInRender:I

    .line 243
    .line 244
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 245
    .line 246
    const-string v0, "VideoSurfaceTexture"

    .line 247
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v2, "release offscreen surface done = "

    .line 257
    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-wide v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIdleTimeStamp:J

    .line 262
    .line 263
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method

.method protected releaseOther()V
    .locals 0

    .line 1
    return-void
.end method

.method public render()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->eglSwapBuffer(Landroid/opengl/EGLSurface;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSerial:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyRenderFrame(I)V

    .line 15
    .line 16
    .line 17
    return v1
.end method

.method public resetFlag()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUsingEffect:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public saveFrame(Landroid/os/Bundle;Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    if-eqz p2, :cond_3

    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSaveFrameBundle:Landroid/os/Bundle;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSaveFrameBundle:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSaveFrameBundle:Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSaveFrameBundle:Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSaveFrameBundle:Landroid/os/Bundle;

    .line 34
    .line 35
    const-string v0, "callback"

    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 38
    .line 39
    .line 40
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mState:I

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    if-eq p1, p2, :cond_2

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p2, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->sendRenderMsg(IZ)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-object v1

    .line 51
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p1

    .line 53
    :cond_3
    const/16 p1, 0xe

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderMsgBundle:Landroid/os/Bundle;

    .line 60
    .line 61
    const-string/jumbo v2, "texture"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderMsgBundle:Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Landroid/os/Message;

    .line 73
    .line 74
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    .line 79
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    :try_start_3
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 81
    .line 82
    invoke-virtual {v2, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 83
    .line 84
    .line 85
    const-wide/16 v2, 0x1f4

    .line 86
    .line 87
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 88
    .line 89
    .line 90
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    iget-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    .line 93
    if-nez p2, :cond_4

    .line 94
    .line 95
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 104
    .line 105
    const-string p2, "VideoSurfaceTexture"

    .line 106
    .line 107
    const-string v1, "render thread is busy"

    .line 108
    .line 109
    invoke-static {p1, p2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 113
    .line 114
    const-string p2, "VideoSurfaceTexture"

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v2, "save frame done = "

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {p1, p2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Landroid/graphics/Bitmap;

    .line 141
    .line 142
    return-object p1

    .line 143
    :catchall_1
    move-exception p1

    .line 144
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 146
    :catch_0
    return-object v1
.end method

.method protected sendMsg(Landroid/os/Message;ZZJ)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-nez p3, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    :try_start_1
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    :goto_0
    iget p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 34
    .line 35
    const-string p3, "VideoSurfaceTexture"

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "sendMsg, msg:"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p2, p3, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p4, p5}, Ljava/lang/Object;->wait(J)V

    .line 62
    .line 63
    .line 64
    monitor-exit p0

    .line 65
    :goto_1
    const/4 p1, 0x0

    .line 66
    return p1

    .line 67
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    :catch_0
    :cond_3
    const/4 p1, -0x1

    .line 70
    return p1
.end method

.method protected sendRenderMsg(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iput-object p0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 13
    .line 14
    iput p2, v3, Landroid/os/Message;->arg2:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSaveFrameBundle:Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSaveFrameBundle:Landroid/os/Bundle;

    .line 25
    .line 26
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSaveFrameBundle:Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSaveFrameBundle:Landroid/os/Bundle;

    .line 38
    .line 39
    monitor-exit p1

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p2

    .line 42
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    throw p2

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 47
    const-wide/16 v6, 0x64

    .line 48
    .line 49
    move-object v2, p0

    .line 50
    move v5, p2

    .line 51
    invoke-virtual/range {v2 .. v7}, Lcom/ss/texturerender/VideoSurfaceTexture;->sendMsg(Landroid/os/Message;ZZJ)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_1
    iget p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 56
    .line 57
    const-string v0, "VideoSurfaceTexture"

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p2, v0, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_2
    return-void
.end method

.method protected sendSetOptionMsg(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v1, 0x22

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    return-void
.end method

.method public declared-synchronized setEffect(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 7
    .line 8
    const-string v1, "VideoSurfaceTexture"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v3, "setEffect bundle:"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string/jumbo v3, "setEffect"

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getBundleString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "action"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const-string v1, "effect_type"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/16 v2, 0x24

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    if-eqz v0, :cond_b

    .line 54
    .line 55
    const/16 v4, 0x13

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    if-eq v0, v4, :cond_a

    .line 59
    .line 60
    const/16 v4, 0x1b

    .line 61
    .line 62
    if-eq v0, v4, :cond_9

    .line 63
    .line 64
    if-eq v0, v2, :cond_8

    .line 65
    .line 66
    const/16 v4, 0x86

    .line 67
    .line 68
    if-eq v0, v4, :cond_c

    .line 69
    .line 70
    const/16 v4, 0x93

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    if-eq v0, v4, :cond_7

    .line 74
    .line 75
    const/16 v4, 0x98

    .line 76
    .line 77
    if-eq v0, v4, :cond_5

    .line 78
    .line 79
    const/16 v4, 0xaa

    .line 80
    .line 81
    if-eq v0, v4, :cond_4

    .line 82
    .line 83
    const/16 v4, 0x8e

    .line 84
    .line 85
    if-eq v0, v4, :cond_2

    .line 86
    .line 87
    const/16 v4, 0x8f

    .line 88
    .line 89
    if-eq v0, v4, :cond_1

    .line 90
    .line 91
    packed-switch v0, :pswitch_data_0

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_0
    const-string v2, "int_value"

    .line 97
    .line 98
    invoke-virtual {p1, v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorVertical:I

    .line 103
    .line 104
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNotKeepLastParams:I

    .line 105
    .line 106
    if-ne v2, v3, :cond_e

    .line 107
    .line 108
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorHorizontal:I

    .line 109
    .line 110
    if-ne v2, v3, :cond_e

    .line 111
    .line 112
    iput v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorHorizontal:I

    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :catchall_0
    move-exception p1

    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :pswitch_1
    const-string v2, "int_value"

    .line 120
    .line 121
    invoke-virtual {p1, v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorHorizontal:I

    .line 126
    .line 127
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNotKeepLastParams:I

    .line 128
    .line 129
    if-ne v2, v3, :cond_e

    .line 130
    .line 131
    iget v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorVertical:I

    .line 132
    .line 133
    if-ne v2, v3, :cond_e

    .line 134
    .line 135
    iput v6, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorVertical:I

    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :pswitch_2
    const-string v2, "int_value"

    .line 140
    .line 141
    invoke-virtual {p1, v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRotationType:I

    .line 146
    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :cond_1
    const-string v2, "int_value"

    .line 150
    .line 151
    invoke-virtual {p1, v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableUseEglDummySurface:I

    .line 156
    .line 157
    goto/16 :goto_1

    .line 158
    .line 159
    :cond_2
    const-string v2, "int_value"

    .line 160
    .line 161
    invoke-virtual {p1, v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-ne v2, v3, :cond_3

    .line 166
    .line 167
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallbackBundle:Landroid/os/Bundle;

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_3
    if-nez v2, :cond_e

    .line 172
    .line 173
    iput-object v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallbackBundle:Landroid/os/Bundle;

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_4
    const-string v2, "pro_config_bun"

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessParamter:Landroid/os/Bundle;

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_5
    const-string v2, "int_value"

    .line 186
    .line 187
    invoke-virtual {p1, v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOpenVQScore:I

    .line 192
    .line 193
    if-ne v2, v3, :cond_6

    .line 194
    .line 195
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreBundle:Landroid/os/Bundle;

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_6
    if-nez v2, :cond_e

    .line 199
    .line 200
    iput-object v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreBundle:Landroid/os/Bundle;

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_7
    const-string v2, "scale_type"

    .line 204
    .line 205
    invoke-virtual {p1, v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-virtual {p0, v4, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_8
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRoiSRParamsBundle:Landroid/os/Bundle;

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_9
    const-string v2, "float_value"

    .line 217
    .line 218
    const/high16 v3, 0x3f000000    # 0.5f

    .line 219
    .line 220
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    iput v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLayoutRatio:F

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_a
    const-string v2, "int_value"

    .line 228
    .line 229
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    invoke-virtual {p0, v1, v2, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->setEffectOpen(IILandroid/os/Bundle;)V

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_b
    if-ne v1, v3, :cond_e

    .line 238
    .line 239
    :cond_c
    :goto_0
    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .line 241
    if-eqz v3, :cond_d

    .line 242
    .line 243
    :try_start_1
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    .line 249
    invoke-virtual {v2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 250
    .line 251
    .line 252
    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 253
    .line 254
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_d
    :try_start_2
    new-instance v3, Landroid/os/Message;

    .line 259
    .line 260
    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 261
    .line 262
    .line 263
    iput v2, v3, Landroid/os/Message;->what:I

    .line 264
    .line 265
    iput-object p0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 266
    .line 267
    invoke-virtual {v3, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    .line 269
    .line 270
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    .line 271
    .line 272
    invoke-virtual {v2, v3}, Lcom/ss/texturerender/TextureRenderer;->handleTextureRenderMsg(Landroid/os/Message;)V

    .line 273
    .line 274
    .line 275
    :catch_0
    :cond_e
    :goto_1
    const/16 v2, 0x15

    .line 276
    .line 277
    if-ne v0, v2, :cond_f

    .line 278
    .line 279
    const/4 v3, 0x0

    .line 280
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessSuccessRate:F

    .line 281
    .line 282
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessAverageCostTime:F

    .line 283
    .line 284
    const-string v3, "pro_config_bun"

    .line 285
    .line 286
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-eqz v3, :cond_f

    .line 291
    .line 292
    const-string v3, "pro_config_bun"

    .line 293
    .line 294
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    iput-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessParamter:Landroid/os/Bundle;

    .line 299
    .line 300
    :cond_f
    const/16 v3, 0x23

    .line 301
    .line 302
    if-eq v0, v2, :cond_10

    .line 303
    .line 304
    const/16 v4, 0x1c

    .line 305
    .line 306
    if-eq v0, v4, :cond_10

    .line 307
    .line 308
    if-ne v0, v3, :cond_13

    .line 309
    .line 310
    :cond_10
    const/16 v4, 0xb

    .line 311
    .line 312
    if-ne v1, v4, :cond_13

    .line 313
    .line 314
    iget-object v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mParamList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 315
    .line 316
    if-nez v4, :cond_11

    .line 317
    .line 318
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 319
    .line 320
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 321
    .line 322
    .line 323
    iput-object v4, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mParamList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 324
    .line 325
    :cond_11
    invoke-direct {p0, v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->removeParamBundle(II)V

    .line 326
    .line 327
    .line 328
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mParamList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 329
    .line 330
    new-instance v4, Landroid/os/Bundle;

    .line 331
    .line 332
    invoke-direct {v4, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    if-ne v0, v2, :cond_12

    .line 339
    .line 340
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mMainRenderCropParamsBundle:Landroid/os/Bundle;

    .line 341
    .line 342
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 343
    .line 344
    const-string v2, "VideoSurfaceTexture"

    .line 345
    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    const-string v5, "set main render crop params: "

    .line 352
    .line 353
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    iget-object v5, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mMainRenderCropParamsBundle:Landroid/os/Bundle;

    .line 357
    .line 358
    const-string/jumbo v6, "setEffect"

    .line 359
    .line 360
    .line 361
    invoke-direct {p0, v5, v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->getBundleString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-static {v1, v2, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :cond_12
    if-ne v0, v3, :cond_13

    .line 376
    .line 377
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraRenderCropParamsBundle:Landroid/os/Bundle;

    .line 378
    .line 379
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 380
    .line 381
    const-string v0, "VideoSurfaceTexture"

    .line 382
    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    const-string v2, "set extra render crop params: "

    .line 389
    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    iget-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mExtraRenderCropParamsBundle:Landroid/os/Bundle;

    .line 394
    .line 395
    const-string/jumbo v3, "setEffect"

    .line 396
    .line 397
    .line 398
    invoke-direct {p0, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getBundleString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    .line 411
    .line 412
    :cond_13
    monitor-exit p0

    .line 413
    return-void

    .line 414
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 415
    throw p1

    .line 416
    nop

    .line 417
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEffectOpen(IILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/effect/EffectConfig;->setEffectOpen(II)Lcom/ss/texturerender/effect/EffectConfig;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    if-ne p1, v0, :cond_3

    .line 13
    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    if-ne p2, p1, :cond_2

    .line 16
    .line 17
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;

    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 30
    .line 31
    invoke-static {p2, v0, p3}, Lcom/ss/texturerender/vsync/VsyncHelperFactory;->createVsyncHelper(Landroid/content/Context;ILandroid/os/Bundle;)Lcom/ss/texturerender/vsync/IVsyncHelper;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;

    .line 36
    .line 37
    :cond_1
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;

    .line 38
    .line 39
    invoke-interface {p2, p1}, Lcom/ss/texturerender/vsync/IVsyncHelper;->setEnable(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;

    .line 43
    .line 44
    invoke-interface {p1, p0}, Lcom/ss/texturerender/vsync/IVsyncHelper;->addObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-interface {p1, p0}, Lcom/ss/texturerender/vsync/IVsyncHelper;->removeObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized setExtraSurface(Landroid/view/Surface;I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 3
    .line 4
    const-string v1, "VideoSurfaceTexture"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v3, "setExtraSurface = "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ", "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, ", opera:"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    const/16 v1, 0x19

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    new-instance p2, Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v1, "texture"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 64
    .line 65
    .line 66
    const-string/jumbo v1, "surface"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 84
    .line 85
    const-string p2, "VideoSurfaceTexture"

    .line 86
    .line 87
    const-string/jumbo v0, "setExtraSurface end"

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p1
.end method

.method public setFrameRenderChecker(Lcom/ss/texturerender/RenderCheckDispatcher;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOffScreenSurface:Lcom/ss/texturerender/VideoSurface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/VideoSurface;->setFrameRenderChecker(Lcom/ss/texturerender/RenderCheckDispatcher;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setHeadPose(Lcom/ss/texturerender/math/Quaternion;)I
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHeadPose:Lcom/ss/texturerender/math/Quaternion;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public declared-synchronized setOption(IF)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x4

    const/16 v1, 0x1b

    if-eq p1, v0, :cond_9

    if-eq p1, v1, :cond_8

    const/16 v0, 0x78

    if-eq p1, v0, :cond_7

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_5

    const/16 v0, 0x83

    if-eq p1, v0, :cond_4

    const/16 v0, 0x84

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9b

    if-eq p1, v0, :cond_1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 83
    monitor-exit p0

    return-void

    :cond_0
    const/16 v1, 0x23

    .line 84
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 85
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 87
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v1, "float_value"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 89
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 91
    :cond_1
    :try_start_2
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreProcessAverageCostTime:F

    goto :goto_0

    .line 92
    :cond_2
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVQScoreProcessSuccessRate:F

    goto :goto_0

    .line 93
    :cond_3
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessAverageCostTime:F

    goto :goto_0

    .line 94
    :cond_4
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessSuccessRate:F

    goto :goto_0

    :cond_5
    float-to-double p1, p2

    .line 95
    iput-wide p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastFrameTime:D

    goto :goto_0

    :cond_6
    float-to-double p1, p2

    .line 96
    iput-wide p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mAccumulatedPlayingTime:D

    goto :goto_0

    .line 97
    :cond_7
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFPS:F

    goto :goto_0

    .line 98
    :cond_8
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLayoutRatio:F

    goto :goto_0

    .line 99
    :cond_9
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v0, "VideoSurfaceTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set TEXTURE_OPTION_SET_OVERLAY_RATIO ratio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :try_start_3
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 101
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    const-string v1, "overlay_ratio"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    :catch_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized setOption(II)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    const/4 v0, 0x5

    if-eq p1, v0, :cond_10

    const/4 v2, 0x6

    if-eq p1, v2, :cond_f

    const/16 v0, 0x8

    if-eq p1, v0, :cond_e

    const/16 v0, 0x9

    if-eq p1, v0, :cond_d

    const/16 v0, 0xf

    if-eq p1, v0, :cond_c

    const/16 v0, 0x10

    const/4 v2, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0x19

    const/4 v3, 0x0

    if-eq p1, v0, :cond_a

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_9

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x74

    if-eq p1, v0, :cond_3

    const/16 v0, 0x75

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 1
    :pswitch_0
    :try_start_0
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mOpenVQScore:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 3
    :pswitch_1
    :try_start_1
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 4
    :try_start_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    const-string p2, "action"

    const/16 v0, 0x97

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    const/16 v0, 0x24

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 7
    iput-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 9
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :catch_0
    :cond_0
    monitor-exit p0

    return-void

    .line 11
    :pswitch_2
    :try_start_3
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableNativeWindow:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :pswitch_3
    :try_start_4
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallbackInRenderThread:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :sswitch_0
    :try_start_5
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v0, "VideoSurfaceTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TEXTURE_OPTION_INT_RESET_CROP_PARAMS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableResetCropParamsInRender:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :sswitch_1
    :try_start_6
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v0, "VideoSurfaceTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TEXTURE_OPTION_INT_DATASPACE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDataSpace:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :sswitch_2
    :try_start_7
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessScaleType:I

    .line 22
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string p2, "VideoSurfaceTexture"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set process scale type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSRProcessScaleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 23
    :sswitch_3
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mDoMirrorFirst:I

    goto/16 :goto_2

    .line 24
    :sswitch_4
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v0, "VideoSurfaceTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set TEXTURE_OPTION_INT_RESET_ROTATION_MIRROR_PARAMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p1, :cond_15

    if-ne p2, v1, :cond_15

    const/16 p2, 0x2a

    .line 26
    :try_start_8
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 27
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 29
    :catch_1
    :try_start_9
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRotationType:I

    .line 30
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorHorizontal:I

    .line 31
    iput v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorVertical:I

    .line 32
    iput v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLayoutMode:I

    .line 33
    iput-object v2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCallbackBundle:Landroid/os/Bundle;

    goto/16 :goto_2

    .line 34
    :sswitch_5
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mNotKeepLastParams:I

    goto/16 :goto_2

    .line 35
    :sswitch_6
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mEnableExtraSurfaceRenderCallback:I

    goto/16 :goto_2

    .line 36
    :sswitch_7
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFreezeDirector:I

    goto :goto_0

    .line 37
    :sswitch_8
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHeadposeCallbackIntegral:I

    goto/16 :goto_2

    .line 38
    :sswitch_9
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mBitDepth:I

    goto/16 :goto_2

    .line 39
    :sswitch_a
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameCount:I

    goto/16 :goto_2

    .line 40
    :sswitch_b
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncSetVsync:I

    goto/16 :goto_2

    .line 41
    :pswitch_4
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorVertical:I

    goto/16 :goto_2

    .line 42
    :pswitch_5
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIsMirrorHorizontal:I

    goto/16 :goto_2

    .line 43
    :pswitch_6
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRotationType:I

    goto/16 :goto_2

    .line 44
    :cond_1
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v0, "VideoSurfaceTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set TEXTURE_OPTION_INT_FORBID_REUSE_TEXTURE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->lock()V

    .line 46
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTextureId:Lcom/ss/texturerender/ITexture;

    if-eqz p1, :cond_2

    .line 47
    check-cast p1, Lcom/ss/texturerender/Texture;

    invoke-virtual {p1, p2}, Lcom/ss/texturerender/Texture;->setForbidTextureReuse(I)V

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/ss/texturerender/VideoSurfaceTexture;->unlock()V

    goto/16 :goto_2

    .line 49
    :cond_3
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mForbidReuseVideoSurfaceTexture:I

    goto/16 :goto_2

    .line 50
    :cond_4
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;

    if-eqz p1, :cond_5

    .line 51
    invoke-interface {p1}, Lcom/ss/texturerender/vsync/IVsyncHelper;->update()V

    goto/16 :goto_2

    .line 52
    :cond_5
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string p2, "VideoSurfaceTexture"

    const-string/jumbo v0, "vsyncHelper is null"

    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mVsyncHelper:Lcom/ss/texturerender/vsync/IVsyncHelper;

    if-eqz v0, :cond_8

    if-ne p2, v1, :cond_7

    .line 54
    invoke-interface {v0, p0}, Lcom/ss/texturerender/vsync/IVsyncHelper;->removeObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V

    goto :goto_0

    .line 55
    :cond_7
    invoke-interface {v0, p0}, Lcom/ss/texturerender/vsync/IVsyncHelper;->addObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V

    .line 56
    :cond_8
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->sendSetOptionMsg(II)V

    goto/16 :goto_2

    .line 57
    :cond_9
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLayoutMode:I

    goto/16 :goto_2

    :cond_a
    move p1, v3

    :goto_1
    if-ge p1, p2, :cond_15

    .line 58
    invoke-virtual {p0, v1, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->sendRenderMsg(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 59
    :cond_b
    invoke-virtual {p0, v1, p2, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setEffectOpen(IILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 60
    :cond_c
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUsingEffect:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 61
    :cond_d
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncUpdateSurface:I

    goto :goto_2

    .line 62
    :cond_e
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mHDRType:I

    const/4 p1, 0x7

    .line 63
    invoke-direct {p0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->_tryUpdateEGLSurface(I)V

    .line 64
    invoke-direct {p0, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->_trySetupHDR2SDRFilter(I)V

    goto :goto_2

    .line 65
    :cond_f
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUsingEffect:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 66
    :cond_10
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 67
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mConfig:Lcom/ss/texturerender/effect/EffectConfig;

    invoke-virtual {p1, p2}, Lcom/ss/texturerender/effect/EffectConfig;->setTexType(I)V

    goto :goto_2

    .line 68
    :cond_11
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v0, "VideoSurfaceTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set TEXTURE_OPTION_SET_OVERLAY_SYNC st:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    if-eqz p1, :cond_15

    const/16 v0, 0x1f

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 71
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :cond_12
    if-eq p2, v1, :cond_13

    .line 74
    monitor-exit p0

    return-void

    .line 75
    :cond_13
    :try_start_a
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez p1, :cond_14

    .line 76
    monitor-exit p0

    return-void

    :cond_14
    const/16 p2, 0x21

    .line 77
    :try_start_b
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 78
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 80
    :catch_2
    :cond_15
    :goto_2
    monitor-exit p0

    return-void

    .line 81
    :goto_3
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_b
        0x79 -> :sswitch_a
        0x82 -> :sswitch_9
        0x87 -> :sswitch_8
        0x89 -> :sswitch_7
        0x8d -> :sswitch_6
        0x90 -> :sswitch_5
        0x91 -> :sswitch_4
        0x92 -> :sswitch_3
        0x93 -> :sswitch_2
        0xa9 -> :sswitch_1
        0xab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x95
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOption(III)V
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorCode:Ljava/util/HashMap;

    if-eqz p1, :cond_3

    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    return-void

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUsingEffect:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public setOption(IILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTrackingErrorMsg:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 3

    const/16 v0, 0x76

    if-eq p1, v0, :cond_1

    const/16 v0, 0x88

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mStaticMetadata:Ljava/util/List;

    goto :goto_1

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    if-nez p1, :cond_2

    return-void

    .line 109
    :cond_2
    :try_start_0
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    const/16 v2, 0x29

    invoke-virtual {p2, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 114
    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 116
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, 0x3e8

    .line 118
    :try_start_2
    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 119
    iget p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    const-string v0, "VideoSurfaceTexture"

    const-string/jumbo v1, "update background texture OK"

    invoke-static {p2, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :try_start_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 121
    :catch_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "update background texture timeout"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 122
    :goto_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :goto_1
    return-void
.end method

.method public declared-synchronized setSuperResolutionConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "effect_type"

    .line 20
    .line 21
    const/4 v3, 0x5

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v2, "action"

    .line 26
    .line 27
    const/16 v3, 0x15

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "srAlgType"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo p1, "srMaxSizeWidth"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo p1, "srMaxSizeHeight"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string p1, "kernelBinPath"

    .line 51
    .line 52
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "oclModleName"

    .line 56
    .line 57
    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string p1, "dspModleName"

    .line 61
    .line 62
    invoke-virtual {v1, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p1, "moduleName"

    .line 66
    .line 67
    invoke-virtual {v1, p1, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    :goto_0
    monitor-exit p0

    .line 82
    return-void

    .line 83
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p1
.end method

.method public declared-synchronized setSuperResolutionMode(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 3
    .line 4
    const-string v1, "VideoSurfaceTexture"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v3, " set sr = "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSuperOpen:I

    .line 30
    .line 31
    const/4 v0, 0x5

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v0, p1, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->setEffectOpen(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method

.method public supportProcessResolution(II)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mIgnoreSRResCheck:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    move v2, v0

    .line 9
    :goto_0
    sget-object v3, Lcom/ss/texturerender/VideoSurfaceTexture;->resWdithTab:[I

    .line 10
    .line 11
    array-length v4, v3

    .line 12
    if-ge v2, v4, :cond_2

    .line 13
    .line 14
    aget v3, v3, v2

    .line 15
    .line 16
    if-ne v3, p1, :cond_1

    .line 17
    .line 18
    sget-object v3, Lcom/ss/texturerender/VideoSurfaceTexture;->resHeightTab:[I

    .line 19
    .line 20
    aget v3, v3, v2

    .line 21
    .line 22
    if-ne v3, p2, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v3, "sr not support resolution width:"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ",height\uff1a"

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, "VideoSurfaceTexture"

    .line 57
    .line 58
    invoke-static {v1, p2, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v0
.end method

.method public texType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 2
    .line 3
    return v0
.end method

.method public unRegisterTouchListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTouchHelper:Lcom/ss/texturerender/touch/TouchHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/touch/TouchHelper;->unregister(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    :cond_0
    return-void
.end method

.method public unRegisterTouchListener(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTouchHelper:Lcom/ss/texturerender/touch/TouchHelper;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/touch/TouchHelper;->unregister(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized updateSurface(Landroid/view/Surface;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 3
    .line 4
    const-string v1, "VideoSurfaceTexture"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v3, "update Surface = "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ", "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, ", "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurface:Landroid/view/Surface;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurface:Landroid/view/Surface;

    .line 46
    .line 47
    if-ne p1, v0, :cond_0

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/Surface;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "SurfaceTexture"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 64
    .line 65
    const-string v0, "VideoSurfaceTexture"

    .line 66
    .line 67
    const-string v1, "prevent the same surface???"

    .line 68
    .line 69
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_3

    .line 76
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mUpdateSurface:Landroid/view/Surface;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    const/4 v0, 0x4

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderMsgBundle:Landroid/os/Bundle;

    .line 98
    .line 99
    const-string/jumbo v1, "texture"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderMsgBundle:Landroid/os/Bundle;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mSyncUpdateSurface:I

    .line 111
    .line 112
    const/4 v1, 0x1

    .line 113
    if-eq v0, v1, :cond_1

    .line 114
    .line 115
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/Object;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    .line 128
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    iget-object v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 130
    .line 131
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    .line 133
    .line 134
    :try_start_3
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 135
    .line 136
    const-string v1, "VideoSurfaceTexture"

    .line 137
    .line 138
    const-string/jumbo v2, "update surface wait"

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-wide/16 v1, 0x64

    .line 145
    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catchall_1
    move-exception p1

    .line 151
    goto :goto_1

    .line 152
    :catch_0
    :goto_0
    :try_start_4
    monitor-exit v0

    .line 153
    goto :goto_2

    .line 154
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    :try_start_5
    throw p1

    .line 156
    :cond_2
    :goto_2
    iget p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 157
    .line 158
    const-string v0, "VideoSurfaceTexture"

    .line 159
    .line 160
    const-string/jumbo v1, "update Surface end"

    .line 161
    .line 162
    .line 163
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    .line 165
    .line 166
    monitor-exit p0

    .line 167
    return-void

    .line 168
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    throw p1
.end method

.method public updateTexDimension(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexType:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "update tex dimension : "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ", "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "VideoSurfaceTexture"

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-super {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {v0, p1, p2}, Lcom/ss/texturerender/producer/IFrameProducer;->updateTexDimension(II)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iput p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexWidth:I

    .line 45
    .line 46
    iput p2, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mTexHeight:I

    .line 47
    .line 48
    return-void
.end method

.method public updateTexImage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mFrameProducer:Lcom/ss/texturerender/producer/IFrameProducer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mLastComeFrameType:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/ss/texturerender/producer/IFrameProducer;->updateImage()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public declared-synchronized updateVideoState(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture;->mRenderHandler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method
