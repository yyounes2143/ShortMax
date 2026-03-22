.class Lcom/ss/ttvideoengine/log/HeadsetStateHistory;
.super Ljava/lang/Object;
.source "HeadsetStateHistory.java"

# interfaces
.implements Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetStateHistory"


# instance fields
.field private final mConnectionHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadsetStateMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

.field private volatile mLastSwitchTime:J


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->mLastSwitchTime:J

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->mHeadsetStateMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->mConnectionHistoryList:Ljava/util/ArrayList;

    .line 16
    .line 17
    return-void
.end method

.method private addToHistory(ZZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string/jumbo v2, "t"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v1, "bt"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "con"

    .line 34
    .line 35
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->mConnectionHistoryList:Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance p2, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public get()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->mConnectionHistoryList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getLastSwitchTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->mLastSwitchTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public onHeadsetStateChanged(ZZ)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->mLastSwitchTime:J

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->addToHistory(ZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->mLastSwitchTime:J

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->mConnectionHistoryList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->mHeadsetStateMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->addStateChangedListener(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "HeadsetStateHistory"

    .line 7
    .line 8
    const-string/jumbo v1, "start"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->mHeadsetStateMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->removeStateChangedListener(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "HeadsetStateHistory"

    .line 7
    .line 8
    const-string/jumbo v1, "stop"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
