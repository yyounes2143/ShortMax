.class public Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;
.super Ljava/lang/Object;
.source "SpeedPredictorRecord.java"


# instance fields
.field private mFileId:Ljava/lang/String;

.field private mSpeedRecordItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;",
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
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;->mFileId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public extractFields(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "stream_id"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;->mFileId:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "downinfo"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;->mSpeedRecordItems:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge v0, v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;

    .line 45
    .line 46
    invoke-direct {v2}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->extractFields(Lorg/json/JSONObject;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;->mSpeedRecordItems:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;->mFileId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpeedRecordItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;->mSpeedRecordItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;->mFileId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSpeedRecordItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;->mSpeedRecordItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method
