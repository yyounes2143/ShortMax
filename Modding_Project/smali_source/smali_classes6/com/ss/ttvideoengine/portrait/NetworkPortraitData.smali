.class public Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;
.super Ljava/lang/Object;
.source "NetworkPortraitData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;
    }
.end annotation


# static fields
.field private static final MIN_NETWORK_DATA_MS:I = 0x1d4c0

.field private static final NET_PORTRAIT_DATA:Ljava/lang/String; = "net-portrait-data"

.field private static final TAG:Ljava/lang/String; = "NetworkPortraitData"


# instance fields
.field private mCatowerRttList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCatowerRttMsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMdlSpeedList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNetLevelMaxCount:I

.field private volatile mNetMinDataSize:I

.field private volatile mNetTimerTaskIntervalMs:I

.field private mRTTLevelListener:Lcom/ss/ttvideoengine/info/networkRTTLevelListener;

.field private mSignalStrengthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mCatowerRttList:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mCatowerRttMsList:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mSignalStrengthList:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mMdlSpeedList:Ljava/util/Map;

    .line 27
    .line 28
    const/16 v0, 0x64

    .line 29
    .line 30
    iput v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetLevelMaxCount:I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetTimerTaskIntervalMs:I

    .line 34
    .line 35
    const v0, 0x1d4c0

    .line 36
    .line 37
    .line 38
    iput v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetMinDataSize:I

    .line 39
    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mCatowerRttList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetLevelMaxCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mCatowerRttMsList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mSignalStrengthList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private getSubListToMeetMinSize(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetTimerTaskIntervalMs:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    iget v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetMinDataSize:I

    .line 12
    .line 13
    iget v1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetTimerTaskIntervalMs:I

    .line 14
    .line 15
    div-int/2addr v0, v1

    .line 16
    sub-int/2addr v0, p2

    .line 17
    if-gtz v0, :cond_1

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-le v0, p2, :cond_2

    .line 30
    .line 31
    new-instance p2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    sub-int/2addr p2, v0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-interface {p1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method


# virtual methods
.method public getMdlSeepList()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mMdlSpeedList:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mMdlSpeedList:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method public getNetSpeedHistoryData(I)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mMdlSpeedList:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, p1}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getSubListToMeetMinSize(Ljava/util/List;I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p1

    .line 17
    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public getNetworkRTTLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mRTTLevelListener:Lcom/ss/ttvideoengine/info/networkRTTLevelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/ttvideoengine/info/networkRTTLevelListener;->onNetworkLog()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public getNetworkRTTMS()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mRTTLevelListener:Lcom/ss/ttvideoengine/info/networkRTTLevelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/ttvideoengine/info/networkRTTLevelListener;->getNetworkRTTMs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public getRttHistoryData(I)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mCatowerRttList:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getSubListToMeetMinSize(Ljava/util/List;I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getRttList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mCatowerRttList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRttMsHistoryData(I)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mCatowerRttMsList:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getSubListToMeetMinSize(Ljava/util/List;I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getSignalStrengthList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mSignalStrengthList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;I)V
    .locals 6
    .param p1    # Ljava/util/TimerTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimer:Ljava/util/Timer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/Timer;

    .line 7
    .line 8
    const-string v1, "net-portrait-data"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimer:Ljava/util/Timer;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimer:Ljava/util/Timer;

    .line 19
    .line 20
    if-gtz p2, :cond_1

    .line 21
    .line 22
    iget p2, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetTimerTaskIntervalMs:I

    .line 23
    .line 24
    :cond_1
    int-to-long v1, p2

    .line 25
    move-wide v4, v1

    .line 26
    const-wide/16 v2, 0x3e8

    .line 27
    .line 28
    move-object v1, p1

    .line 29
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimerTask:Ljava/util/TimerTask;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    new-instance v1, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-direct {v1, p0, p1}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;-><init>(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$1;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimerTask:Ljava/util/TimerTask;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimer:Ljava/util/Timer;

    .line 45
    .line 46
    iget p1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetTimerTaskIntervalMs:I

    .line 47
    .line 48
    int-to-long v4, p1

    .line 49
    const-wide/16 v2, 0x3e8

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 52
    .line 53
    .line 54
    :cond_2
    const-string p1, "NetworkPortraitData"

    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "network timer task scheduled, interval "

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetTimerTaskIntervalMs:I

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p1
.end method

.method public setMaxCount(I)V
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/16 v0, 0xa

    .line 5
    .line 6
    if-ge p1, v0, :cond_1

    .line 7
    .line 8
    move p1, v0

    .line 9
    :cond_1
    iput p1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetLevelMaxCount:I

    .line 10
    .line 11
    return-void
.end method

.method public setMinDataSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetMinDataSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setNetSpeed(F)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mMdlSpeedList:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetLevelMaxCount:I

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mMdlSpeedList:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Long;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mMdlSpeedList:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mMdlSpeedList:Ljava/util/Map;

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_1
    const-string v0, "NetworkPortraitData"

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_2
    return-void
.end method

.method public setNetworkRTTLevelListener(Lcom/ss/ttvideoengine/info/networkRTTLevelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mRTTLevelListener:Lcom/ss/ttvideoengine/info/networkRTTLevelListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSampleInterval(I)V
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/16 v0, 0x1f4

    .line 5
    .line 6
    if-ge p1, v0, :cond_1

    .line 7
    .line 8
    move p1, v0

    .line 9
    :cond_1
    iput p1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetTimerTaskIntervalMs:I

    .line 10
    .line 11
    return-void
.end method

.method public declared-synchronized start()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetTimerTaskIntervalMs:I

    .line 3
    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "NetworkPortraitData"

    .line 7
    .line 8
    const-string v1, "invalid parameter"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mCatowerRttList:Ljava/util/List;

    .line 18
    .line 19
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mCatowerRttList:Ljava/util/List;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mCatowerRttMsList:Ljava/util/List;

    .line 31
    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mCatowerRttMsList:Ljava/util/List;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mSignalStrengthList:Ljava/util/List;

    .line 42
    .line 43
    if-ne v0, v1, :cond_3

    .line 44
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mSignalStrengthList:Ljava/util/List;

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mMdlSpeedList:Ljava/util/Map;

    .line 53
    .line 54
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 55
    .line 56
    if-ne v0, v1, :cond_4

    .line 57
    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mMdlSpeedList:Ljava/util/Map;

    .line 64
    .line 65
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimerTask:Ljava/util/TimerTask;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 70
    .line 71
    .line 72
    :cond_5
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimer:Ljava/util/Timer;

    .line 73
    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    new-instance v0, Ljava/util/Timer;

    .line 77
    .line 78
    const-string v1, "net-portrait-data"

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimer:Ljava/util/Timer;

    .line 84
    .line 85
    :cond_6
    new-instance v2, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-direct {v2, p0, v0}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;-><init>(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$1;)V

    .line 89
    .line 90
    .line 91
    iput-object v2, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimerTask:Ljava/util/TimerTask;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimer:Ljava/util/Timer;

    .line 94
    .line 95
    iget v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetTimerTaskIntervalMs:I

    .line 96
    .line 97
    int-to-long v5, v0

    .line 98
    const-wide/16 v3, 0x1f4

    .line 99
    .line 100
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 101
    .line 102
    .line 103
    const-string v0, "NetworkPortraitData"

    .line 104
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v2, "network timer task scheduled, interval "

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v2, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mNetTimerTaskIntervalMs:I

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .line 126
    .line 127
    monitor-exit p0

    .line 128
    return-void

    .line 129
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimer:Ljava/util/Timer;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimer:Ljava/util/Timer;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimerTask:Ljava/util/TimerTask;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->mTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :cond_1
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
    throw v0
.end method
