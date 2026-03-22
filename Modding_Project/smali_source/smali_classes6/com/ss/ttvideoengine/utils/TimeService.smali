.class public Lcom/ss/ttvideoengine/utils/TimeService;
.super Ljava/lang/Object;
.source "TimeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;
    }
.end annotation


# static fields
.field private static final ERROR_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TimeService"

.field private static final TIMESERVICE_STATE_NOT_UPDATE:I = 0x0

.field private static final TIMESERVICE_STATE_UPDATED:I = 0x2

.field private static final TIMESERVICE_STATE_UPDATING:I = 0x1

.field private static mErrorCount:I

.field private static mForceUseLocalTime:Z

.field private static mNtpServer:Ljava/lang/String;

.field private static mState:I

.field private static mTimeInfo:Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/utils/TimeService;->mTimeInfo:Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput v0, Lcom/ss/ttvideoengine/utils/TimeService;->mState:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    sput-boolean v1, Lcom/ss/ttvideoengine/utils/TimeService;->mForceUseLocalTime:Z

    .line 13
    .line 14
    sput v0, Lcom/ss/ttvideoengine/utils/TimeService;->mErrorCount:I

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/utils/TimeService;->mNtpServer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$300()Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/utils/TimeService;->mTimeInfo:Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$402(I)I
    .locals 0

    .line 1
    sput p0, Lcom/ss/ttvideoengine/utils/TimeService;->mState:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/TimeService;->mErrorCount:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$508()I
    .locals 2

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/TimeService;->mErrorCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    sput v1, Lcom/ss/ttvideoengine/utils/TimeService;->mErrorCount:I

    .line 6
    .line 7
    return v0
.end method

.method public static currentTimeMillis()J
    .locals 5

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/utils/TimeService;->mForceUseLocalTime:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttvideoengine/utils/TimeService;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/utils/TimeService;->mTimeInfo:Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;->isUpdated()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcom/ss/ttvideoengine/utils/TimeService;->mTimeInfo:Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;->access$000(Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    add-long/2addr v1, v3

    .line 29
    sget-object v3, Lcom/ss/ttvideoengine/utils/TimeService;->mTimeInfo:Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;->access$100(Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    sub-long/2addr v1, v3

    .line 36
    monitor-exit v0

    .line 37
    return-wide v1

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    monitor-exit v0

    .line 41
    goto :goto_1

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v1

    .line 44
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    return-wide v0
.end method

.method public static isUpdated()Z
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/utils/TimeService;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/utils/TimeService;->mTimeInfo:Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;->isUpdated()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public static longToStringWithFormat(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Ljava/util/Date;

    .line 7
    .line 8
    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    const-string p0, ""

    .line 17
    .line 18
    return-object p0
.end method

.method public static setForceUseLocalTime(ZLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "force use localtime:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "TimeService"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-boolean p0, Lcom/ss/ttvideoengine/utils/TimeService;->mForceUseLocalTime:Z

    .line 24
    .line 25
    sput-object p1, Lcom/ss/ttvideoengine/utils/TimeService;->mNtpServer:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public static updateTimeFromNTP(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/utils/TimeService;->mForceUseLocalTime:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    sget-object v0, Lcom/ss/ttvideoengine/utils/TimeService;->mNtpServer:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-class v0, Lcom/ss/ttvideoengine/utils/TimeService;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/utils/TimeService;->mTimeInfo:Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;->isUpdated()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-eqz p0, :cond_2

    .line 32
    .line 33
    invoke-static {p0}, Lcom/ss/ttvideoengine/net/NetUtils;->isNetAvailable(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    const-string p0, "TimeService"

    .line 40
    .line 41
    const-string v1, "network unavailable"

    .line 42
    .line 43
    invoke-static {p0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :cond_2
    sget v1, Lcom/ss/ttvideoengine/utils/TimeService;->mState:I

    .line 49
    .line 50
    if-nez v1, :cond_4

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    sput v1, Lcom/ss/ttvideoengine/utils/TimeService;->mState:I

    .line 54
    .line 55
    sget v1, Lcom/ss/ttvideoengine/utils/TimeService;->mErrorCount:I

    .line 56
    .line 57
    const/4 v2, 0x6

    .line 58
    if-le v1, v2, :cond_3

    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    new-instance v0, Lcom/ss/ttvideoengine/utils/TimeService$1;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/utils/TimeService$1;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    :try_start_1
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0

    .line 76
    :cond_5
    :goto_1
    return-void
.end method
