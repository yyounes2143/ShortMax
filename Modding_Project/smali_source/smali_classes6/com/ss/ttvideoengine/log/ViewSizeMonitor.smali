.class Lcom/ss/ttvideoengine/log/ViewSizeMonitor;
.super Ljava/lang/Object;
.source "ViewSizeMonitor.java"


# instance fields
.field private currentHeight:I

.field private currentWidth:I

.field private final historyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastValidHeight:I

.field private lastValidWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->historyList:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method private maybeAddToHistory(II)V
    .locals 2

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    if-gtz p2, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string/jumbo v1, "w"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "h"

    .line 26
    .line 27
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string/jumbo p2, "t"

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :try_start_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->historyList:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance p2, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_0
    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->currentWidth:I

    .line 65
    .line 66
    iput p1, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->currentHeight:I

    .line 67
    .line 68
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getHistory()Ljava/util/ArrayList;
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
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->historyList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->currentWidth:I

    .line 3
    .line 4
    iput v0, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->currentHeight:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->historyList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->currentWidth:I

    .line 4
    .line 5
    iput p1, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->lastValidWidth:I

    .line 6
    .line 7
    :cond_0
    if-lez p2, :cond_1

    .line 8
    .line 9
    iput p2, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->currentHeight:I

    .line 10
    .line 11
    iput p2, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->lastValidHeight:I

    .line 12
    .line 13
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->currentWidth:I

    .line 14
    .line 15
    iget p2, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->currentHeight:I

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->maybeAddToHistory(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public tryAddLastSizeToHistory()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->currentWidth:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->currentHeight:I

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->lastValidWidth:I

    .line 10
    .line 11
    iget v1, p0, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->lastValidHeight:I

    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->maybeAddToHistory(II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
