.class public Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;
.super Ljava/lang/Object;
.source "VideoEventOneNoRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$StatisticDataRunnable;,
        Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;,
        Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;
    }
.end annotation


# static fields
.field public static final END_TYPE_EXIT:Ljava/lang/String; = "exit"

.field public static final END_TYPE_WAIT:Ljava/lang/String; = "wait"

.field public static final EVENT_TYPE:Ljava/lang/String; = "av_norender"

.field public static final NO_RENDER_DURATION_UPLOAD_THRESHOLD:I = 0x3e8

.field public static final REASON_PLAYER:I = 0x0

.field public static final REASON_TEXTURE_RENDER_NO_CALLBACK:I = 0x1

.field public static final REASON_TEXTURE_RENDER_NO_DRAW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoEventOneNoRender"

.field public static final TYPE_AUDIO:I = 0x1

.field public static final TYPE_VIDEO:I = 0x0

.field public static final monitorName:Ljava/lang/String; = "videoplayer_oneevent"


# instance fields
.field private index:I

.field private isStarted:Z

.field private mAudioHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

.field private mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

.field public mFirstFrameTime:J

.field public mIsAVBadInterlaced:I

.field private mVideoHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, -0x80000000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mFirstFrameTime:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mIsAVBadInterlaced:I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 13
    .line 14
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$1;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 21
    .line 22
    return-void
.end method

.method private addToHistory()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->generateHistory(Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 15
    .line 16
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->noRenderType:I

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mVideoHistoryList:Ljava/util/ArrayList;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mVideoHistoryList:Ljava/util/ArrayList;

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mVideoHistoryList:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v2, 0x1

    .line 38
    if-ne v1, v2, :cond_4

    .line 39
    .line 40
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mAudioHistoryList:Ljava/util/ArrayList;

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mAudioHistoryList:Ljava/util/ArrayList;

    .line 50
    .line 51
    :cond_3
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mAudioHistoryList:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_0
    return-void
.end method

.method private static generateHistory(Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->startTime:J

    .line 7
    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string/jumbo v2, "st"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->costTime:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "c"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->reason:I

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v1, "reason"

    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object p0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method private maybeSendEvent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->costTime:J

    .line 4
    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "VideoEventOneNoRender"

    .line 12
    .line 13
    const-string v1, "duration less than threshold, abort event"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->index:I

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->index:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 36
    .line 37
    invoke-direct {v0, p0, v1, v2}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method static parseNoRenderError(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, ";|="

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_4

    .line 21
    .line 22
    array-length v2, p0

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    :goto_0
    array-length v3, p0

    .line 28
    add-int/lit8 v3, v3, -0x1

    .line 29
    .line 30
    if-ge v2, v3, :cond_2

    .line 31
    .line 32
    :try_start_0
    aget-object v3, p0, v2

    .line 33
    .line 34
    add-int/lit8 v4, v2, 0x1

    .line 35
    .line 36
    aget-object v4, p0, v4

    .line 37
    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_1
    add-int/lit8 v2, v2, 0x2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    new-instance p0, Lorg/json/JSONObject;

    .line 65
    .line 66
    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_4
    :goto_2
    return-object v1
.end method

.method public static unifyReason(I)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x2

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x1

    .line 6
    :goto_0
    return p0
.end method


# virtual methods
.method public end(ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->isStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->isStarted:Z

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 16
    .line 17
    iget-wide v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->startTime:J

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    cmp-long v5, v3, v5

    .line 22
    .line 23
    if-lez v5, :cond_1

    .line 24
    .line 25
    sub-long v3, v0, v3

    .line 26
    .line 27
    iput-wide v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->costTime:J

    .line 28
    .line 29
    :cond_1
    iput-object p2, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEndType:Ljava/lang/String;

    .line 30
    .line 31
    iput p1, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEndPos:I

    .line 32
    .line 33
    iput-wide v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEndT:J

    .line 34
    .line 35
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    const/16 p2, 0x71

    .line 44
    .line 45
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mSetValidSurfaceTimeout:I

    .line 50
    .line 51
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 52
    .line 53
    iget p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->noRenderType:I

    .line 54
    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 58
    .line 59
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 60
    .line 61
    const/16 v0, 0x98

    .line 62
    .line 63
    invoke-interface {p2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mQueueInputBufferCountInEnd:J

    .line 68
    .line 69
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 72
    .line 73
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 74
    .line 75
    const/16 v0, 0x99

    .line 76
    .line 77
    invoke-interface {p2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mDequeueOutputBufferCountInEnd:J

    .line 82
    .line 83
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 84
    .line 85
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 86
    .line 87
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 88
    .line 89
    const/16 v0, 0x9a

    .line 90
    .line 91
    invoke-interface {p2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mMcMonitorQueueSizeInEnd:I

    .line 96
    .line 97
    :cond_2
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->addToHistory()V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->maybeSendEvent()V

    .line 101
    .line 102
    .line 103
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 104
    .line 105
    const/4 p2, 0x0

    .line 106
    invoke-direct {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$1;)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 110
    .line 111
    return-void
.end method

.method public getAudioHistory()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mAudioHistoryList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRenderStageError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->stageError:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 2
    .line 3
    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->noRenderType:I

    .line 4
    .line 5
    return v0
.end method

.method public getVideoHistory()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mVideoHistoryList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->isStarted:Z

    .line 2
    .line 3
    return v0
.end method

.method public isType(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 2
    .line 3
    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->noRenderType:I

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public onAVBadInterlaced()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mIsAVBadInterlaced:I

    .line 3
    .line 4
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$1;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mVideoHistoryList:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mAudioHistoryList:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->isStarted:Z

    .line 15
    .line 16
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->index:I

    .line 17
    .line 18
    const-wide/32 v1, -0x80000000

    .line 19
    .line 20
    .line 21
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mFirstFrameTime:J

    .line 22
    .line 23
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mIsAVBadInterlaced:I

    .line 24
    .line 25
    return-void
.end method

.method public showedFirstFrame()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mFirstFrameTime:J

    .line 6
    .line 7
    return-void
.end method

.method public start(IIIJJJ)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->isStarted:Z

    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 9
    .line 10
    iput-wide v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->startTime:J

    .line 11
    .line 12
    iput p1, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->noRenderType:I

    .line 13
    .line 14
    iput p2, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->reason:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 17
    .line 18
    if-eqz p1, :cond_6

    .line 19
    .line 20
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 21
    .line 22
    if-eqz p1, :cond_6

    .line 23
    .line 24
    const/16 p2, 0x37

    .line 25
    .line 26
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->parsePlayerBufferString(Ljava/lang/String;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "fvl"

    .line 35
    .line 36
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 43
    .line 44
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    iput-wide v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->videoFormatLengthMs:J

    .line 55
    .line 56
    :cond_0
    const-string p2, "fal"

    .line 57
    .line 58
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 65
    .line 66
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Ljava/lang/Long;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    iput-wide v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->audioFormatLengthMs:J

    .line 77
    .line 78
    :cond_1
    const-string p2, "dvl"

    .line 79
    .line 80
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 87
    .line 88
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    iput-wide v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->videoDecoderLengthMs:J

    .line 99
    .line 100
    :cond_2
    const-string p2, "dal"

    .line 101
    .line 102
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 109
    .line 110
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Ljava/lang/Long;

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    iput-wide v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->audioDecoderLengthMs:J

    .line 121
    .line 122
    :cond_3
    const-string p2, "bvl"

    .line 123
    .line 124
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 131
    .line 132
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    check-cast p2, Ljava/lang/Long;

    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    iput-wide v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->videoBaseLengthMs:J

    .line 143
    .line 144
    :cond_4
    const-string p2, "bal"

    .line 145
    .line 146
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 153
    .line 154
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Ljava/lang/Long;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 161
    .line 162
    .line 163
    move-result-wide p1

    .line 164
    iput-wide p1, v2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->audioBaseLengthMs:J

    .line 165
    .line 166
    :cond_5
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 169
    .line 170
    const/16 p2, 0x6e

    .line 171
    .line 172
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->parseNoRenderError(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-nez p2, :cond_6

    .line 185
    .line 186
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 187
    .line 188
    iput-object p1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->stageError:Ljava/lang/String;

    .line 189
    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string/jumbo p2, "stage error: "

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 202
    .line 203
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->stageError:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const-string p2, "VideoEventOneNoRender"

    .line 213
    .line 214
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 218
    .line 219
    iput p3, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mBeginPos:I

    .line 220
    .line 221
    const-wide/16 p2, 0x0

    .line 222
    .line 223
    cmp-long v2, p4, p2

    .line 224
    .line 225
    if-nez v2, :cond_7

    .line 226
    .line 227
    iget-wide p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->startTime:J

    .line 228
    .line 229
    iput-wide p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastRebufT:J

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_7
    iput-wide p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastRebufT:J

    .line 233
    .line 234
    :goto_0
    cmp-long p4, p6, p2

    .line 235
    .line 236
    if-nez p4, :cond_8

    .line 237
    .line 238
    iget-wide p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->startTime:J

    .line 239
    .line 240
    iput-wide p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastSeekT:J

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_8
    iput-wide p6, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastSeekT:J

    .line 244
    .line 245
    :goto_1
    cmp-long p4, p8, p2

    .line 246
    .line 247
    if-lez p4, :cond_9

    .line 248
    .line 249
    sub-long p4, v0, p8

    .line 250
    .line 251
    iput-wide p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastHeadsetSwitchInterval:J

    .line 252
    .line 253
    :cond_9
    iget-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 254
    .line 255
    if-eqz p4, :cond_13

    .line 256
    .line 257
    iget-object p5, p4, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 258
    .line 259
    iput-object p5, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mResolutionBefore:Ljava/lang/String;

    .line 260
    .line 261
    iget-object p5, p4, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentQualityDesc:Ljava/lang/String;

    .line 262
    .line 263
    iput-object p5, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mQualityDescBefore:Ljava/lang/String;

    .line 264
    .line 265
    iget-object p1, p4, Lcom/ss/ttvideoengine/log/VideoEventBase;->abrInfo:Ljava/util/Map;

    .line 266
    .line 267
    if-eqz p1, :cond_a

    .line 268
    .line 269
    const-string p4, "abr_used"

    .line 270
    .line 271
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    if-eqz p1, :cond_a

    .line 276
    .line 277
    iget-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 278
    .line 279
    check-cast p1, Ljava/lang/Integer;

    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    iput p1, p4, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mIsABR:I

    .line 286
    .line 287
    :cond_a
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 288
    .line 289
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 290
    .line 291
    if-eqz p1, :cond_10

    .line 292
    .line 293
    iget-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 294
    .line 295
    const/16 p5, 0x58

    .line 296
    .line 297
    invoke-interface {p1, p5}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    iput p1, p4, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mIsRadioMode:I

    .line 302
    .line 303
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 304
    .line 305
    iget-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 306
    .line 307
    iget-object p4, p4, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 308
    .line 309
    const/16 p5, 0x59

    .line 310
    .line 311
    invoke-interface {p4, p5}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 312
    .line 313
    .line 314
    move-result p4

    .line 315
    iput p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mHeadset:I

    .line 316
    .line 317
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 318
    .line 319
    iget-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 320
    .line 321
    iget-object p4, p4, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 322
    .line 323
    const/16 p5, 0x5a

    .line 324
    .line 325
    invoke-interface {p4, p5}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 326
    .line 327
    .line 328
    move-result p4

    .line 329
    iput p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mBt:I

    .line 330
    .line 331
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 332
    .line 333
    iget-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 334
    .line 335
    iget-object p4, p4, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 336
    .line 337
    const/16 p5, 0x5e

    .line 338
    .line 339
    invoke-interface {p4, p5}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 340
    .line 341
    .line 342
    move-result p4

    .line 343
    iput p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mIsBackground:I

    .line 344
    .line 345
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 346
    .line 347
    iget p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->noRenderType:I

    .line 348
    .line 349
    if-nez p4, :cond_b

    .line 350
    .line 351
    iget-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 352
    .line 353
    iget-object p4, p4, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 354
    .line 355
    const/16 p5, 0x98

    .line 356
    .line 357
    invoke-interface {p4, p5}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 358
    .line 359
    .line 360
    move-result-wide p4

    .line 361
    iput-wide p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mQueueInputBufferCountInStart:J

    .line 362
    .line 363
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 364
    .line 365
    iget-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 366
    .line 367
    iget-object p4, p4, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 368
    .line 369
    const/16 p5, 0x99

    .line 370
    .line 371
    invoke-interface {p4, p5}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 372
    .line 373
    .line 374
    move-result-wide p4

    .line 375
    iput-wide p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mDequeueOutputBufferCountInStart:J

    .line 376
    .line 377
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 378
    .line 379
    iget-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 380
    .line 381
    iget-object p4, p4, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 382
    .line 383
    const/16 p5, 0x9a

    .line 384
    .line 385
    invoke-interface {p4, p5}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 386
    .line 387
    .line 388
    move-result p4

    .line 389
    iput p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mMcMonitorQueueSizeInStart:I

    .line 390
    .line 391
    :cond_b
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 392
    .line 393
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 394
    .line 395
    const/16 p4, 0x5b

    .line 396
    .line 397
    invoke-interface {p1, p4}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 398
    .line 399
    .line 400
    move-result-wide p4

    .line 401
    cmp-long p1, p4, p2

    .line 402
    .line 403
    if-lez p1, :cond_c

    .line 404
    .line 405
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 406
    .line 407
    sub-long p4, v0, p4

    .line 408
    .line 409
    iput-wide p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastAVSwitchInterval:J

    .line 410
    .line 411
    :cond_c
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 412
    .line 413
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 414
    .line 415
    const/16 p4, 0x5c

    .line 416
    .line 417
    invoke-interface {p1, p4}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 418
    .line 419
    .line 420
    move-result-wide p4

    .line 421
    cmp-long p1, p4, p2

    .line 422
    .line 423
    if-lez p1, :cond_d

    .line 424
    .line 425
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 426
    .line 427
    sub-long p4, v0, p4

    .line 428
    .line 429
    iput-wide p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastResSwitchInterval:J

    .line 430
    .line 431
    :cond_d
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 432
    .line 433
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 434
    .line 435
    const/16 p4, 0x5f

    .line 436
    .line 437
    invoke-interface {p1, p4}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 438
    .line 439
    .line 440
    move-result-wide p4

    .line 441
    cmp-long p1, p4, p2

    .line 442
    .line 443
    if-lez p1, :cond_e

    .line 444
    .line 445
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 446
    .line 447
    sub-long p4, v0, p4

    .line 448
    .line 449
    iput-wide p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastForebackSwitchInterval:J

    .line 450
    .line 451
    :cond_e
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 452
    .line 453
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 454
    .line 455
    const/16 p4, 0x70

    .line 456
    .line 457
    invoke-interface {p1, p4}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 458
    .line 459
    .line 460
    move-result-wide p4

    .line 461
    cmp-long p1, p4, p2

    .line 462
    .line 463
    if-lez p1, :cond_f

    .line 464
    .line 465
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 466
    .line 467
    sub-long/2addr v0, p4

    .line 468
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastSetSurfaceNullInterval:J

    .line 469
    .line 470
    :cond_f
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 471
    .line 472
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 473
    .line 474
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 475
    .line 476
    const/16 p3, 0x79

    .line 477
    .line 478
    invoke-interface {p2, p3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 479
    .line 480
    .line 481
    move-result p2

    .line 482
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEnableGloablMuteFeature:I

    .line 483
    .line 484
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 485
    .line 486
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 487
    .line 488
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 489
    .line 490
    const/16 p3, 0x7a

    .line 491
    .line 492
    invoke-interface {p2, p3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 493
    .line 494
    .line 495
    move-result p2

    .line 496
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mGlobalMute:I

    .line 497
    .line 498
    :cond_10
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 499
    .line 500
    iget-boolean p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 501
    .line 502
    if-eqz p2, :cond_12

    .line 503
    .line 504
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCPURate()D

    .line 505
    .line 506
    .line 507
    move-result-wide p1

    .line 508
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 509
    .line 510
    invoke-virtual {p3}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCPUSpeed()D

    .line 511
    .line 512
    .line 513
    move-result-wide p3

    .line 514
    const-wide/16 p5, 0x0

    .line 515
    .line 516
    cmpl-double p7, p1, p5

    .line 517
    .line 518
    if-lez p7, :cond_11

    .line 519
    .line 520
    cmpl-double p5, p3, p5

    .line 521
    .line 522
    if-lez p5, :cond_11

    .line 523
    .line 524
    iget-object p5, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 525
    .line 526
    iput-wide p1, p5, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mCpuRate:D

    .line 527
    .line 528
    iput-wide p3, p5, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mCpuSpeed:D

    .line 529
    .line 530
    goto :goto_2

    .line 531
    :cond_11
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$StatisticDataRunnable;

    .line 532
    .line 533
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 534
    .line 535
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 536
    .line 537
    invoke-direct {p1, p2, p3}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$StatisticDataRunnable;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 538
    .line 539
    .line 540
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 541
    .line 542
    .line 543
    :goto_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 544
    .line 545
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 546
    .line 547
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getBatteryCurrent()F

    .line 548
    .line 549
    .line 550
    move-result p2

    .line 551
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mCurrent:F

    .line 552
    .line 553
    :cond_12
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEngineOptimizeFlag()J

    .line 558
    .line 559
    .line 560
    move-result-wide p1

    .line 561
    const-wide/16 p3, 0x2

    .line 562
    .line 563
    invoke-static {p1, p2, p3, p4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->isFlagOn(JJ)Z

    .line 564
    .line 565
    .line 566
    move-result p1

    .line 567
    if-nez p1, :cond_13

    .line 568
    .line 569
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 570
    .line 571
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mContext:Landroid/content/Context;

    .line 572
    .line 573
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->isPowerSaveMode(Landroid/content/Context;)I

    .line 574
    .line 575
    .line 576
    move-result p1

    .line 577
    if-ltz p1, :cond_13

    .line 578
    .line 579
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 580
    .line 581
    iput p1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mPowerSaveMode:I

    .line 582
    .line 583
    :cond_13
    return-void
.end method

.method public toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;)Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "av_norender"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string v1, "player_sessionid"

    .line 16
    .line 17
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "sdk_version"

    .line 23
    .line 24
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->sdk_version:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->stageError:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "r_stage_errcs"

    .line 32
    .line 33
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "video_len_before"

    .line 37
    .line 38
    .line 39
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->videoFormatLengthMs:J

    .line 40
    .line 41
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    const-string v1, "audio_len_before"

    .line 45
    .line 46
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->audioFormatLengthMs:J

    .line 47
    .line 48
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v1, "vlen_dec_before"

    .line 52
    .line 53
    .line 54
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->videoDecoderLengthMs:J

    .line 55
    .line 56
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    const-string v1, "alen_dec_before"

    .line 60
    .line 61
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->audioDecoderLengthMs:J

    .line 62
    .line 63
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 64
    .line 65
    .line 66
    const-string/jumbo v1, "vlen_base_before"

    .line 67
    .line 68
    .line 69
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->videoBaseLengthMs:J

    .line 70
    .line 71
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 72
    .line 73
    .line 74
    const-string v1, "alen_base_before"

    .line 75
    .line 76
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->audioBaseLengthMs:J

    .line 77
    .line 78
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 79
    .line 80
    .line 81
    const-string v1, "cost_time"

    .line 82
    .line 83
    iget-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->costTime:J

    .line 84
    .line 85
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 86
    .line 87
    .line 88
    const-string v1, "index"

    .line 89
    .line 90
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->index:I

    .line 91
    .line 92
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    const-string v1, "norender_type"

    .line 96
    .line 97
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->noRenderType:I

    .line 98
    .line 99
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    const-string v1, "reason"

    .line 103
    .line 104
    iget v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->reason:I

    .line 105
    .line 106
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 112
    .line 113
    const-string v2, "cdn_url"

    .line 114
    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurURL:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialURL:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v0, v2, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_1
    const-string/jumbo v1, "source_type"

    .line 136
    .line 137
    .line 138
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string/jumbo v1, "v"

    .line 144
    .line 145
    .line 146
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVid:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string/jumbo v1, "vtype"

    .line 152
    .line 153
    .line 154
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string/jumbo v1, "tag"

    .line 160
    .line 161
    .line 162
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTag:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string/jumbo v1, "subtag"

    .line 168
    .line 169
    .line 170
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSubTag:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v1, "codec"

    .line 176
    .line 177
    iget-object v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string/jumbo v1, "video_codec_nameid"

    .line 183
    .line 184
    .line 185
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->videoCodecNameId:I

    .line 186
    .line 187
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    const-string v1, "audio_codec_nameid"

    .line 191
    .line 192
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->audioCodecNameId:I

    .line 193
    .line 194
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    const-string v1, "format_type"

    .line 198
    .line 199
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->formatType:I

    .line 200
    .line 201
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    const-string v1, "drm_type"

    .line 205
    .line 206
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmType:I

    .line 207
    .line 208
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    const-string v1, "play_speed"

    .line 212
    .line 213
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlaySpeed:F

    .line 214
    .line 215
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 216
    .line 217
    .line 218
    const-string v1, "enable_mdl"

    .line 219
    .line 220
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    .line 221
    .line 222
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    const-string/jumbo v1, "video_hw"

    .line 226
    .line 227
    .line 228
    iget v2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    .line 229
    .line 230
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    const-string/jumbo v1, "user_hw"

    .line 234
    .line 235
    .line 236
    iget p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHWUser:I

    .line 237
    .line 238
    invoke-static {v0, v1, p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 239
    .line 240
    .line 241
    :cond_3
    const-string/jumbo p1, "st"

    .line 242
    .line 243
    .line 244
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->startTime:J

    .line 245
    .line 246
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 247
    .line 248
    .line 249
    const-string p1, "et"

    .line 250
    .line 251
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEndT:J

    .line 252
    .line 253
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 254
    .line 255
    .line 256
    const-string p1, "end_type"

    .line 257
    .line 258
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEndType:Ljava/lang/String;

    .line 259
    .line 260
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-string p1, "resolution_before"

    .line 264
    .line 265
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mResolutionBefore:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string p1, "radio_mode"

    .line 271
    .line 272
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mIsRadioMode:I

    .line 273
    .line 274
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    const-string/jumbo p1, "setvalidsurface_timeout"

    .line 278
    .line 279
    .line 280
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mSetValidSurfaceTimeout:I

    .line 281
    .line 282
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    const-string p1, "last_av_switch_interval"

    .line 286
    .line 287
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastAVSwitchInterval:J

    .line 288
    .line 289
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 290
    .line 291
    .line 292
    const-string p1, "last_res_switch_interval"

    .line 293
    .line 294
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastResSwitchInterval:J

    .line 295
    .line 296
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 297
    .line 298
    .line 299
    const-string p1, "headset"

    .line 300
    .line 301
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mHeadset:I

    .line 302
    .line 303
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    const-string p1, "bt"

    .line 307
    .line 308
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mBt:I

    .line 309
    .line 310
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 311
    .line 312
    .line 313
    const-string p1, "last_headset_switch_interval"

    .line 314
    .line 315
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastHeadsetSwitchInterval:J

    .line 316
    .line 317
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 318
    .line 319
    .line 320
    const-string p1, "is_background"

    .line 321
    .line 322
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mIsBackground:I

    .line 323
    .line 324
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 325
    .line 326
    .line 327
    const-string p1, "last_foreback_switch_interval"

    .line 328
    .line 329
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastForebackSwitchInterval:J

    .line 330
    .line 331
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 332
    .line 333
    .line 334
    const-string p1, "last_setsurfacenull_interval"

    .line 335
    .line 336
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastSetSurfaceNullInterval:J

    .line 337
    .line 338
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 339
    .line 340
    .line 341
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mFirstFrameTime:J

    .line 342
    .line 343
    const-wide/16 v3, 0x0

    .line 344
    .line 345
    cmp-long p1, v1, v3

    .line 346
    .line 347
    if-lez p1, :cond_4

    .line 348
    .line 349
    iget-wide v5, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->startTime:J

    .line 350
    .line 351
    sub-long/2addr v5, v1

    .line 352
    goto :goto_2

    .line 353
    :cond_4
    const-wide/16 v5, -0x1

    .line 354
    .line 355
    :goto_2
    const-string p1, "first_frame_interval"

    .line 356
    .line 357
    invoke-static {v0, p1, v5, v6}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 358
    .line 359
    .line 360
    const-string p1, "begin_pos"

    .line 361
    .line 362
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mBeginPos:I

    .line 363
    .line 364
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 365
    .line 366
    .line 367
    const-string p1, "end_pos"

    .line 368
    .line 369
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEndPos:I

    .line 370
    .line 371
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 372
    .line 373
    .line 374
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastRebufT:J

    .line 375
    .line 376
    cmp-long p1, v1, v3

    .line 377
    .line 378
    if-lez p1, :cond_5

    .line 379
    .line 380
    iget-wide v5, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->startTime:J

    .line 381
    .line 382
    sub-long/2addr v5, v1

    .line 383
    const-string p1, "last_rebuf_interval"

    .line 384
    .line 385
    invoke-static {v0, p1, v5, v6}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 386
    .line 387
    .line 388
    :cond_5
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastSeekT:J

    .line 389
    .line 390
    cmp-long p1, v1, v3

    .line 391
    .line 392
    if-lez p1, :cond_6

    .line 393
    .line 394
    iget-wide v3, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->startTime:J

    .line 395
    .line 396
    sub-long/2addr v3, v1

    .line 397
    const-string p1, "last_seek_interval"

    .line 398
    .line 399
    invoke-static {v0, p1, v3, v4}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 400
    .line 401
    .line 402
    :cond_6
    const-string p1, "is_abr"

    .line 403
    .line 404
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mIsABR:I

    .line 405
    .line 406
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 407
    .line 408
    .line 409
    const-string p1, "quality_desc_before"

    .line 410
    .line 411
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mQualityDescBefore:Ljava/lang/String;

    .line 412
    .line 413
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const-string p1, "bad_interlaced"

    .line 417
    .line 418
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mIsAVBadInterlaced:I

    .line 419
    .line 420
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 421
    .line 422
    .line 423
    const-string p1, "enable_global_mute_feature"

    .line 424
    .line 425
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEnableGloablMuteFeature:I

    .line 426
    .line 427
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 428
    .line 429
    .line 430
    const-string p1, "global_mute"

    .line 431
    .line 432
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mGlobalMute:I

    .line 433
    .line 434
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 435
    .line 436
    .line 437
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mCpuRate:D

    .line 438
    .line 439
    double-to-float p1, v1

    .line 440
    const-string v1, "cpu_rate"

    .line 441
    .line 442
    invoke-static {v0, v1, p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 443
    .line 444
    .line 445
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mCpuSpeed:D

    .line 446
    .line 447
    double-to-float p1, v1

    .line 448
    const-string v1, "cpu_speed"

    .line 449
    .line 450
    invoke-static {v0, v1, p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 451
    .line 452
    .line 453
    const-string p1, "power_save_mode"

    .line 454
    .line 455
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mPowerSaveMode:I

    .line 456
    .line 457
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 458
    .line 459
    .line 460
    const-string p1, "battery_current"

    .line 461
    .line 462
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mCurrent:F

    .line 463
    .line 464
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 465
    .line 466
    .line 467
    const-string p1, "queue_input_buffer_in_start"

    .line 468
    .line 469
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mQueueInputBufferCountInStart:J

    .line 470
    .line 471
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 472
    .line 473
    .line 474
    const-string p1, "queue_input_buffer_in_end"

    .line 475
    .line 476
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mQueueInputBufferCountInEnd:J

    .line 477
    .line 478
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 479
    .line 480
    .line 481
    const-string p1, "dequeue_output_buffer_in_start"

    .line 482
    .line 483
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mDequeueOutputBufferCountInStart:J

    .line 484
    .line 485
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 486
    .line 487
    .line 488
    const-string p1, "dequeue_output_buffer_in_end"

    .line 489
    .line 490
    iget-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mDequeueOutputBufferCountInEnd:J

    .line 491
    .line 492
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 493
    .line 494
    .line 495
    const-string p1, "mc_monitor_queue_in_start"

    .line 496
    .line 497
    iget v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mMcMonitorQueueSizeInStart:I

    .line 498
    .line 499
    invoke-static {v0, p1, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 500
    .line 501
    .line 502
    const-string p1, "mc_monitor_queue_in_end"

    .line 503
    .line 504
    iget p2, p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mMcMonitorQueueSizeInEnd:I

    .line 505
    .line 506
    invoke-static {v0, p1, p2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 507
    .line 508
    .line 509
    new-instance p1, Lorg/json/JSONObject;

    .line 510
    .line 511
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 512
    .line 513
    .line 514
    return-object p1
.end method

.method public updateEventBase(Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    return-void
.end method

.method public updateReason(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->mEventContext:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;

    .line 2
    .line 3
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->reason:I

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->reason:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method
