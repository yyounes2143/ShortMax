.class public Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;
.super Ljava/lang/Object;
.source "TTDataLoaderDefaultListener.java"

# interfaces
.implements Lcom/ss/ttvideoengine/DataLoaderListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEngine"


# instance fields
.field private mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

.field private mPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;Lcom/ss/ttvideoengine/DataLoaderListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public apiStringForFetchVideoModel(Ljava/util/Map;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/DataLoaderListener;->apiStringForFetchVideoModel(Ljava/util/Map;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public authStringForFetchVideoModel(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/DataLoaderListener;->authStringForFetchVideoModel(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public dataLoaderError(Ljava/lang/String;ILcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/DataLoaderListener;->dataLoaderError(Ljava/lang/String;ILcom/ss/ttvideoengine/utils/Error;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getCheckSumInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListener;->getCheckSumInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getCustomHttpHeaders(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListener;->getCustomHttpHeaders(Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public loadLibrary(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListener;->loadLibrary(Ljava/lang/String;)Z

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

.method public onLoadProgress(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListener;->onLoadProgress(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onLogInfo(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/DataLoaderListener;->onLogInfo(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onLogInfoToMonitor(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/DataLoaderListener;->onLogInfoToMonitor(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onNotify(IJJLjava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v6

    .line 12
    move-wide v2, p2

    .line 13
    move-wide v4, p4

    .line 14
    invoke-interface/range {v1 .. v7}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->update(JJJ)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    cmp-long v0, p4, v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    long-to-double v1, p2

    .line 26
    long-to-double v3, p4

    .line 27
    div-double/2addr v1, v3

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "[IESSpeedPredictor]: speedRecord:%f"

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "TTVideoEngine"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    move v3, p1

    .line 52
    move-wide v4, p2

    .line 53
    move-wide v6, p4

    .line 54
    move-object v8, p6

    .line 55
    invoke-interface/range {v2 .. v8}, Lcom/ss/ttvideoengine/DataLoaderListener;->onNotify(IJJLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public onNotifyCDNLog(Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListener;->onNotifyCDNLog(Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;)V

    :cond_0
    return-void
.end method

.method public onNotifyCDNLog(Lorg/json/JSONObject;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListener;->onNotifyCDNLog(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public onTaskProgress(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTDataLoaderDefaultListener;->mInjectDataLoaderListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListener;->onTaskProgress(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
