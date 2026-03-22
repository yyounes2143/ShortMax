.class public Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;
.super Ljava/lang/Object;
.source "SpeedPredictorResult.java"


# instance fields
.field private fileId:Ljava/lang/String;

.field private resultItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
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
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->resultItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public add(Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->resultItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public get(I)Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->resultItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;

    .line 8
    .line 9
    return-object p1
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->fileId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResultItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->resultItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->fileId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResultItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->resultItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->resultItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->fileId:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "fileid"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    new-instance v1, Lorg/json/JSONArray;

    .line 19
    .line 20
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->resultItems:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->toJsonObject()Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-lez v2, :cond_4

    .line 59
    .line 60
    const-string v2, "predictInfo"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 70
    return-object v0
.end method
