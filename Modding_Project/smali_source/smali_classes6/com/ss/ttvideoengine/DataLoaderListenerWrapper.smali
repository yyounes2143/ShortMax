.class Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;
.super Ljava/lang/Object;
.source "DataLoaderListenerWrapper.java"

# interfaces
.implements Lcom/ss/ttvideoengine/DataLoaderListener;


# instance fields
.field private mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

.field private final mListener2s:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/ttvideoengine/DataLoaderListener2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener2s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method addListener(Lcom/ss/ttvideoengine/DataLoaderListener2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener2s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

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

.method clearListeners()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener2s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public dataLoaderError(Ljava/lang/String;ILcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

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
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener2s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    move-object v3, v2

    .line 19
    check-cast v3, Lcom/ss/ttvideoengine/DataLoaderListener2;

    .line 20
    .line 21
    move v4, p1

    .line 22
    move-wide v5, p2

    .line 23
    move-wide v7, p4

    .line 24
    move-object/from16 v9, p6

    .line 25
    .line 26
    invoke-interface/range {v3 .. v9}, Lcom/ss/ttvideoengine/DataLoaderListener2;->onNotify(IJJLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v4, v0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    move v5, p1

    .line 35
    move-wide v6, p2

    .line 36
    move-wide v8, p4

    .line 37
    move-object/from16 v10, p6

    .line 38
    .line 39
    invoke-interface/range {v4 .. v10}, Lcom/ss/ttvideoengine/DataLoaderListener;->onNotify(IJJLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public onNotifyCDNLog(Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListener;->onNotifyCDNLog(Lcom/ss/ttvideoengine/utils/DataLoaderCDNLog;)V

    :cond_0
    return-void
.end method

.method public onNotifyCDNLog(Lorg/json/JSONObject;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListener;->onNotifyCDNLog(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public onStartComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/ttvideoengine/DataLoaderListener;->onStartComplete()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onTaskProgress(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

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

.method removeListener(Lcom/ss/ttvideoengine/DataLoaderListener2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener2s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setListener(Lcom/ss/ttvideoengine/DataLoaderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->mListener:Lcom/ss/ttvideoengine/DataLoaderListener;

    .line 2
    .line 3
    return-void
.end method
