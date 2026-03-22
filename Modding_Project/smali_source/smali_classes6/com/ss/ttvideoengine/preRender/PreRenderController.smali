.class public Lcom/ss/ttvideoengine/preRender/PreRenderController;
.super Ljava/lang/Object;
.source "PreRenderController.java"

# interfaces
.implements Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;
.implements Lcom/ss/ttvideoengine/VideoEngineCallback;


# static fields
.field private static final STATE_CHECK:I = 0x1

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_FINISH:I = 0x3

.field private static final STATE_PRERENDER:I = 0x2

.field private static final STATE_STOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PreRender_Controller"


# instance fields
.field private final mAlgorithm:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;

.field private final mEngineFactory:Lcom/ss/ttvideoengine/preRender/EngineFactory;

.field private mListener:Lcom/ss/ttvideoengine/preRender/PreRenderListener;

.field private mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

.field private mPreRenderSource:Lcom/ss/ttvideoengine/source/Source;

.field private mState:I

.field private final mTraceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/preRender/EngineFactory;)V
    .locals 1
    .param p1    # Lcom/ss/ttvideoengine/preRender/EngineFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/ss/ttvideoengine/preRender/PreRenderController;-><init>(Lcom/ss/ttvideoengine/preRender/EngineFactory;Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/preRender/EngineFactory;Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;)V
    .locals 2
    .param p1    # Lcom/ss/ttvideoengine/preRender/EngineFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mTraceId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mState:I

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mEngineFactory:Lcom/ss/ttvideoengine/preRender/EngineFactory;

    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mAlgorithm:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;

    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/preRender/PreRenderController;ILcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->lambda$callbackError$2(ILcom/ss/ttvideoengine/utils/Error;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/ss/ttvideoengine/preRender/PreRenderController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->lambda$callbackPreRenderStart$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/ss/ttvideoengine/preRender/PreRenderController;Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->lambda$callbackSuccess$1(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private callbackError(ILcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mTraceId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " prerender error errorType:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "\uff0c error:"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "PreRender_Controller"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mAlgorithm:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;->stop()V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mState:I

    .line 44
    .line 45
    new-instance v0, Lcom/ss/ttvideoengine/preRender/d;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1, p2}, Lcom/ss/ttvideoengine/preRender/d;-><init>(Lcom/ss/ttvideoengine/preRender/PreRenderController;ILcom/ss/ttvideoengine/utils/Error;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private callbackPreRenderStart()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/preRender/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/preRender/b;-><init>(Lcom/ss/ttvideoengine/preRender/PreRenderController;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private callbackSuccess(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mTraceId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " prerender success engine:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "PreRender_Controller"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mAlgorithm:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;->stop()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mState:I

    .line 35
    .line 36
    new-instance v0, Lcom/ss/ttvideoengine/preRender/c;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/preRender/c;-><init>(Lcom/ss/ttvideoengine/preRender/PreRenderController;Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private synthetic lambda$callbackError$2(ILcom/ss/ttvideoengine/utils/Error;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mListener:Lcom/ss/ttvideoengine/preRender/PreRenderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderSource:Lcom/ss/ttvideoengine/source/Source;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/ss/ttvideoengine/preRender/PreRenderListener;->onPreRenderError(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;ILcom/ss/ttvideoengine/utils/Error;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$callbackPreRenderStart$0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mListener:Lcom/ss/ttvideoengine/preRender/PreRenderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderSource:Lcom/ss/ttvideoengine/source/Source;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/ss/ttvideoengine/preRender/PreRenderListener;->onPreRenderStart(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$callbackSuccess$1(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mListener:Lcom/ss/ttvideoengine/preRender/PreRenderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderSource:Lcom/ss/ttvideoengine/source/Source;

    .line 6
    .line 7
    invoke-interface {v0, p1, v1}, Lcom/ss/ttvideoengine/preRender/PreRenderListener;->onPreRenderSuccess(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private startPreRender()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mTraceId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " startPreRender"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PreRender_Controller"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->isPrepared()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->callbackSuccess(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mEngineFactory:Lcom/ss/ttvideoengine/preRender/EngineFactory;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderSource:Lcom/ss/ttvideoengine/source/Source;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/preRender/EngineFactory;->createEngine(Lcom/ss/ttvideoengine/source/Source;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v1, v0}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->callbackError(ILcom/ss/ttvideoengine/utils/Error;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mAlgorithm:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;

    .line 66
    .line 67
    invoke-interface {v2}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;->getAutoRange()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setAutoRangeRead(II)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/TTVideoEngine;->addVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->prepare()V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->callbackPreRenderStart()V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public onError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/TTVideoEngine;->removeVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->callbackError(ILcom/ss/ttvideoengine/utils/Error;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public declared-synchronized onPausePreRender()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->isPrepared()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "PreRender_Controller"

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mTraceId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " pausePreRender"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mListener:Lcom/ss/ttvideoengine/preRender/PreRenderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderSource:Lcom/ss/ttvideoengine/source/Source;

    .line 45
    .line 46
    invoke-interface {v0, v1, v2}, Lcom/ss/ttvideoengine/preRender/PreRenderListener;->onPreRenderPause(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw v0
.end method

.method public onPrepared(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/ss/ttvideoengine/TTVideoEngine;->removeVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->callbackSuccess(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public declared-synchronized onTriggerPreRender()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    :try_start_1
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mState:I

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->startPreRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    throw v0
.end method

.method public setListener(Lcom/ss/ttvideoengine/preRender/PreRenderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mListener:Lcom/ss/ttvideoengine/preRender/PreRenderListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSource(Lcom/ss/ttvideoengine/source/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderSource:Lcom/ss/ttvideoengine/source/Source;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized start()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "PreRender_Controller"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mTraceId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, " start"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mState:I

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v0, v3, :cond_2

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    if-ne v0, v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderSource:Lcom/ss/ttvideoengine/source/Source;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-direct {p0, v3, v1}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->callbackError(ILcom/ss/ttvideoengine/utils/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return v2

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :try_start_1
    iput v3, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mState:I

    .line 49
    .line 50
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mAlgorithm:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;

    .line 51
    .line 52
    invoke-interface {v1, v0, p0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;->shouldStartPreRender(Lcom/ss/ttvideoengine/source/Source;Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return v3

    .line 57
    :cond_2
    :goto_0
    :try_start_2
    invoke-direct {p0, v2, v1}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->callbackError(ILcom/ss/ttvideoengine/utils/Error;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return v2

    .line 62
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "PreRender_Controller"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mTraceId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, " stop"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mState:I

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderSource:Lcom/ss/ttvideoengine/source/Source;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Lcom/ss/ttvideoengine/TTVideoEngine;->removeVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mPreRenderEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderController;->mAlgorithm:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw v0
.end method
