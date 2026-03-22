.class public final Lcom/ss/ttvideoengine/preRender/PlayBufferManager;
.super Ljava/lang/Object;
.source "PlayBufferManager.java"

# interfaces
.implements Lcom/ss/ttvideoengine/preRender/PlayBufferListener;
.implements Lcom/ss/ttvideoengine/VideoEngineStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/preRender/PlayBufferManager$Holder;
    }
.end annotation


# static fields
.field public static final AUTO_RANGE_K_KEY:Ljava/lang/String; = "auto_range_k"

.field public static final DEFAULT_AUTO_RANGE_K:I = 0x1f4

.field public static final DEFAULT_START_BUFFER_S:I = 0xe

.field public static final DEFAULT_STOP_BUFFER_S:I = 0x3

.field public static final PRERENDER_KEY:Ljava/lang/String; = "prerender"

.field public static final START_BUFFER_S_KEY:Ljava/lang/String; = "start_buffer_s"

.field public static final STOP_BUFFER_S_KEY:Ljava/lang/String; = "stop_buffer_s"

.field private static final TAG:Ljava/lang/String; = "PreRender_PlayBufferManager"


# instance fields
.field private mCustomStartBufferInS:I

.field private mCustomStopBufferInS:I

.field private mEngineHash:Ljava/lang/String;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayBuffer:Lcom/ss/ttvideoengine/preRender/PlayBuffer;

.field private mStartBufferInS:I

.field private mStopBufferInS:I

.field private final mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

.field private volatile mTriggered:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    .line 3
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mStartBufferInS:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mStopBufferInS:I

    .line 5
    invoke-static {}, Lcom/ss/ttvideoengine/preRender/TimerDefault;->instance()Lcom/ss/ttvideoengine/preRender/TimerDefault;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/preRender/PlayBufferManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;-><init>()V

    return-void
.end method

.method public static instance()Lcom/ss/ttvideoengine/preRender/PlayBufferManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager$Holder;->access$100()Lcom/ss/ttvideoengine/preRender/PlayBufferManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private pausePreRender(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mTriggered:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "pause PreRender "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "PreRender_PlayBufferManager"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mTriggered:Z

    .line 30
    .line 31
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;->onPausePreRender()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method private triggerPreRender(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mTriggered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "trigger PreRender "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "PreRender_PlayBufferManager"

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mTriggered:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;->onTriggerPreRender()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method private updateSettingsInfo()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "prerender"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mCustomStartBufferInS:I

    .line 15
    .line 16
    if-gtz v1, :cond_1

    .line 17
    .line 18
    const-string/jumbo v1, "start_buffer_s"

    .line 19
    .line 20
    .line 21
    const/16 v2, 0xe

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mStartBufferInS:I

    .line 28
    .line 29
    :cond_1
    iget v1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mCustomStopBufferInS:I

    .line 30
    .line 31
    if-gtz v1, :cond_2

    .line 32
    .line 33
    const-string/jumbo v1, "stop_buffer_s"

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mStopBufferInS:I

    .line 42
    .line 43
    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "addListener triggered "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mTriggered:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PreRender_PlayBufferManager"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->updateSettingsInfo()V

    .line 26
    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mTriggered:Z

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;->onTriggerPreRender()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {p1}, Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;->onPausePreRender()V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public declared-synchronized enginePlay(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "PreRender_PlayBufferManager"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "enginePlay "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    const-string v0, "new enginePlay"

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->pausePreRender(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getHash()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mEngineHash:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mPlayBuffer:Lcom/ss/ttvideoengine/preRender/PlayBuffer;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/preRender/PlayBuffer;-><init>(Lcom/ss/ttvideoengine/preRender/Timer;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mPlayBuffer:Lcom/ss/ttvideoengine/preRender/PlayBuffer;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->addPlayBufferListener(Lcom/ss/ttvideoengine/preRender/PlayBufferListener;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mPlayBuffer:Lcom/ss/ttvideoengine/preRender/PlayBuffer;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->setEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mPlayBuffer:Lcom/ss/ttvideoengine/preRender/PlayBuffer;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p1
.end method

.method public declared-synchronized engineStop(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "PreRender_PlayBufferManager"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "engineStop "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getHash()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mEngineHash:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mPlayBuffer:Lcom/ss/ttvideoengine/preRender/PlayBuffer;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->removePlayBufferListener(Lcom/ss/ttvideoengine/preRender/PlayBufferListener;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mPlayBuffer:Lcom/ss/ttvideoengine/preRender/PlayBuffer;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->stop()V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mPlayBuffer:Lcom/ss/ttvideoengine/preRender/PlayBuffer;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    const-string p1, "engineStop"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->triggerPreRender(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    :cond_2
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw p1
.end method

.method public onCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    const-string p1, "cache end"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->triggerPreRender(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCacheSize(Lcom/ss/ttvideoengine/TTVideoEngine;J)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mStartBufferInS:I

    .line 2
    .line 3
    int-to-long v0, p1

    .line 4
    const-wide/16 v2, 0x3e8

    .line 5
    .line 6
    mul-long/2addr v0, v2

    .line 7
    cmp-long p1, p2, v0

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "high buffer "

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->triggerPreRender(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mStopBufferInS:I

    .line 32
    .line 33
    int-to-long v0, p1

    .line 34
    mul-long/2addr v0, v2

    .line 35
    cmp-long p1, p2, v0

    .line 36
    .line 37
    if-gtz p1, :cond_1

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v0, "low buffer "

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->pausePreRender(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public onEnginePlay(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->enginePlay(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onEngineStop(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->engineStop(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public removeListener(Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setStartBufferInS(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mCustomStartBufferInS:I

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mStartBufferInS:I

    .line 4
    .line 5
    return-void
.end method

.method public setStopBufferInS(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mCustomStopBufferInS:I

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->mStopBufferInS:I

    .line 4
    .line 5
    return-void
.end method

.method public useDefaultEngineState(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/ttvideoengine/TTVideoEngine;->addEngineStateListener(Lcom/ss/ttvideoengine/VideoEngineStateListener;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/ss/ttvideoengine/TTVideoEngine;->removeEngineStateListener(Lcom/ss/ttvideoengine/VideoEngineStateListener;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method
