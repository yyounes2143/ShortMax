.class public final enum Lcom/ss/ttvideoengine/log/VideoEventManager;
.super Ljava/lang/Enum;
.source "VideoEventManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/ttvideoengine/log/VideoEventManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/ttvideoengine/log/VideoEventManager;

.field public static final LOGGER_VERSION_NEW:I = 0x2

.field public static final LOGGER_VERSION_OLD:I = 0x1

.field private static final MAX_LOG_LINE_LENGTH:I = 0xf3c

.field private static final TAG:Ljava/lang/String; = "VideoEventManager"

.field public static final enum instance:Lcom/ss/ttvideoengine/log/VideoEventManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

.field private mJsonArray:Lorg/json/JSONArray;

.field private mJsonArrayV2:Lorg/json/JSONArray;

.field private mListener:Lcom/ss/ttvideoengine/log/VideoEventListener;

.field private mLoggerVersion:I

.field private mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 2
    .line 3
    const-string v1, "instance"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/ss/ttvideoengine/log/VideoEventManager;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 10
    .line 11
    filled-new-array {v0}, [Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/ss/ttvideoengine/log/VideoEventManager;->$VALUES:[Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mListener:Lcom/ss/ttvideoengine/log/VideoEventListener;

    .line 6
    .line 7
    new-instance p1, Lorg/json/JSONArray;

    .line 8
    .line 9
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mJsonArray:Lorg/json/JSONArray;

    .line 13
    .line 14
    new-instance p1, Lorg/json/JSONArray;

    .line 15
    .line 16
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mJsonArrayV2:Lorg/json/JSONArray;

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mLoggerVersion:I

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic b(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/VideoEventManager;->lambda$addEventV2$3(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/VideoEventManager;->lambda$addEventV2$2(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/VideoEventManager;->lambda$addEvent$1(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/VideoEventManager;->lambda$addEvent$0(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$addEvent$0(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/VideoEventManager;->showEvent(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$addEvent$1(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/VideoEventManager;->showEvent(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$addEventV2$2(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/VideoEventManager;->showEvent(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$addEventV2$3(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/VideoEventManager;->showEvent(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static showEvent(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->getLogNotifyLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    shr-int/2addr v0, v1

    .line 7
    and-int/2addr v0, v1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->getLogTurnOn()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    shr-int/2addr v0, v1

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/VideoEventManager;->showLongLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string v0, "VideoEventManager"

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v0, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method private static showLongLog(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "VideoEventManager"

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xf3c

    .line 10
    .line 11
    if-gt v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v0, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    add-int/lit16 v3, v3, 0xf3c

    .line 29
    .line 30
    add-int/lit16 v2, v2, 0xf3c

    .line 31
    .line 32
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    :goto_1
    invoke-static {v0, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/ttvideoengine/log/VideoEventManager;
    .locals 1

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/ss/ttvideoengine/log/VideoEventManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventManager;->$VALUES:[Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/ss/ttvideoengine/log/VideoEventManager;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method protected addEvent(ZLorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const-string v1, "VideoEventManager"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "addEvent  uploadLog = "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const-string/jumbo p1, "video_playq"

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const-string/jumbo p1, "video_playq"

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/log/IVideoEventUploader;->onUplaod(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lcom/ss/ttvideoengine/log/g;

    .line 56
    .line 57
    invoke-direct {p1, p2}, Lcom/ss/ttvideoengine/log/g;-><init>(Lorg/json/JSONObject;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mListener:Lcom/ss/ttvideoengine/log/VideoEventListener;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mJsonArray:Lorg/json/JSONArray;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mListener:Lcom/ss/ttvideoengine/log/VideoEventListener;

    .line 74
    .line 75
    invoke-interface {p1}, Lcom/ss/ttvideoengine/log/VideoEventListener;->onEvent()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const-string p1, "VideoEventManager"

    .line 80
    .line 81
    const-string v1, "no listener set"

    .line 82
    .line 83
    invoke-static {p1, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    new-instance p1, Lcom/ss/ttvideoengine/log/h;

    .line 87
    .line 88
    invoke-direct {p1, p2}, Lcom/ss/ttvideoengine/log/h;-><init>(Lorg/json/JSONObject;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 92
    .line 93
    .line 94
    :goto_1
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p1
.end method

.method public addEventV2(ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const-string v1, "VideoEventManager"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "addEventV2  uploadLog = "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", listener:"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mListener:Lcom/ss/ttvideoengine/log/VideoEventListener;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, ", uploader:"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-interface {v1, p3, p2}, Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;->onEventV2(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-interface {v1, p3, p2}, Lcom/ss/ttvideoengine/log/IVideoEventUploader;->onUplaod(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/ss/ttvideoengine/log/e;

    .line 70
    .line 71
    invoke-direct {p1, p2}, Lcom/ss/ttvideoengine/log/e;-><init>(Lorg/json/JSONObject;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mListener:Lcom/ss/ttvideoengine/log/VideoEventListener;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mJsonArrayV2:Lorg/json/JSONArray;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mListener:Lcom/ss/ttvideoengine/log/VideoEventListener;

    .line 88
    .line 89
    invoke-interface {p1, p3}, Lcom/ss/ttvideoengine/log/VideoEventListener;->onEventV2(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const-string p1, "VideoEventManager"

    .line 94
    .line 95
    const-string p3, "no listener set"

    .line 96
    .line 97
    invoke-static {p1, p3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    new-instance p1, Lcom/ss/ttvideoengine/log/f;

    .line 101
    .line 102
    invoke-direct {p1, p2}, Lcom/ss/ttvideoengine/log/f;-><init>(Lorg/json/JSONObject;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 106
    .line 107
    .line 108
    :goto_1
    monitor-exit v0

    .line 109
    return-void

    .line 110
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw p1
.end method

.method public getLoggerVersion()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getLoggerVersion: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mLoggerVersion:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "VideoEventManager"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mLoggerVersion:I

    .line 26
    .line 27
    return v0
.end method

.method public declared-synchronized popAllEvents()Lorg/json/JSONArray;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mJsonArray:Lorg/json/JSONArray;

    .line 3
    .line 4
    new-instance v1, Lorg/json/JSONArray;

    .line 5
    .line 6
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mJsonArray:Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public popAllEventsV2()Lorg/json/JSONArray;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mJsonArrayV2:Lorg/json/JSONArray;

    .line 2
    .line 3
    const-class v1, Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mJsonArrayV2:Lorg/json/JSONArray;

    .line 12
    .line 13
    monitor-exit v1

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    return-void
.end method

.method public declared-synchronized setEngineUploader(Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mEngineUploader:Lcom/ss/ttvideoengine/log/VideoEventEngineUploader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public setListener(Lcom/ss/ttvideoengine/log/VideoEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mListener:Lcom/ss/ttvideoengine/log/VideoEventListener;

    .line 2
    .line 3
    return-void
.end method

.method public setLoggerVersion(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "setLoggerVersion: "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "VideoEventManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    if-eq p1, v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    :cond_0
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mLoggerVersion:I

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public setUploader(Lcom/ss/ttvideoengine/log/IVideoEventUploader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventManager;->mUploader:Lcom/ss/ttvideoengine/log/IVideoEventUploader;

    .line 2
    .line 3
    return-void
.end method
