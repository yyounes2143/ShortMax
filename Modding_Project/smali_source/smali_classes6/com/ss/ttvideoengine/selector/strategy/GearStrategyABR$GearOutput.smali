.class Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;
.super Ljava/lang/Object;
.source "GearStrategyABR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GearOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;
    }
.end annotation


# instance fields
.field public audioBitrate:J

.field public downgradeType:I

.field public logInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;

.field public videoBitrate:J

.field public videoBitrateOrigin:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->init(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->logInfo()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private init(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "video_bitrarte"

    .line 2
    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    invoke-static {p1, v0, v1, v2}, Lcom/ss/ttvideoengine/utils/TTHelper;->safeGetLong(Ljava/util/Map;Ljava/lang/String;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v3

    .line 10
    iput-wide v3, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->videoBitrate:J

    .line 11
    .line 12
    const-string v0, "audio_bitrarte"

    .line 13
    .line 14
    invoke-static {p1, v0, v1, v2}, Lcom/ss/ttvideoengine/utils/TTHelper;->safeGetLong(Ljava/util/Map;Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    iput-wide v3, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->audioBitrate:J

    .line 19
    .line 20
    const-string/jumbo v0, "video_bitrarte_origin"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1, v2}, Lcom/ss/ttvideoengine/utils/TTHelper;->safeGetLong(Ljava/util/Map;Ljava/lang/String;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->videoBitrateOrigin:J

    .line 28
    .line 29
    const-string v0, "downgrade_type"

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {p1, v0, v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->safeGetInt(Ljava/util/Map;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->downgradeType:I

    .line 37
    .line 38
    return-void
.end method

.method private declared-synchronized logInfo()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->logInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;-><init>(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$1;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->logInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->logInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-object v0

    .line 21
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method
