.class public Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;
.super Ljava/lang/Object;
.source "SpeedPredictorResultItem.java"


# instance fields
.field private mbandwidth:F

.field private mhost:Ljava/lang/String;

.field private mloadType:Ljava/lang/String;

.field private mtrackType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mloadType:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mhost:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mbandwidth:F

    .line 9
    .line 10
    iput p4, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mtrackType:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getBandwidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mbandwidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mhost:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoadType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mloadType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mtrackType:I

    .line 2
    .line 3
    return v0
.end method

.method public setBandwidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mbandwidth:F

    .line 2
    .line 3
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mhost:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLoadType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mloadType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTrackType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mtrackType:I

    .line 2
    .line 3
    return-void
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
    iget-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mloadType:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "loadType"

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
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mhost:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-string v2, "host"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    :cond_1
    const-string v1, "bandwidth"

    .line 28
    .line 29
    iget v2, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mbandwidth:F

    .line 30
    .line 31
    float-to-double v2, v2

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v1, "trackType"

    .line 36
    .line 37
    iget v2, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultItem;->mtrackType:I

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    return-object v0
.end method
