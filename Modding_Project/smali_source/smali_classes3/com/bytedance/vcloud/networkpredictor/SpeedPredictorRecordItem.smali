.class public Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;
.super Ljava/lang/Object;
.source "SpeedPredictorRecordItem.java"


# instance fields
.field private mBytes:J

.field private mLastDataRecv:J

.field private mMDLBufferCurrentSize:J

.field private mMDLBufferMaxSize:J

.field private mMDLRangeEndOffset:J

.field private mMDLRangeStartOffset:J

.field private mProtocol:Ljava/lang/String;

.field private mTcpInfoRtt:J

.field private mTime:J

.field private mTimestamp:J

.field private mTrackType:I

.field private mhost:Ljava/lang/String;

.field private mloadType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTrackType:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public extractFields(Lorg/json/JSONObject;)V
    .locals 2
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
    const-string v0, "trackType"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTrackType:I

    .line 11
    .line 12
    const-string v0, "size"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mBytes:J

    .line 19
    .line 20
    const-string v0, "costTime"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTime:J

    .line 27
    .line 28
    const-string v0, "timestamp"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTimestamp:J

    .line 35
    .line 36
    const-string v0, "loadType"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mloadType:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "host"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mhost:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "rtt"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTcpInfoRtt:J

    .line 59
    .line 60
    const-string v0, "last_data_recv"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mLastDataRecv:J

    .line 67
    .line 68
    const-string v0, "protocol"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mProtocol:Ljava/lang/String;

    .line 75
    .line 76
    const-string v0, "cbs"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLBufferCurrentSize:J

    .line 83
    .line 84
    const-string v0, "fbs"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLBufferMaxSize:J

    .line 91
    .line 92
    const-string v0, "s_off"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLRangeStartOffset:J

    .line 99
    .line 100
    const-string v0, "e_off"

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLRangeEndOffset:J

    .line 107
    .line 108
    return-void
.end method

.method public getBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mhost:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastDataRecv()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mLastDataRecv:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLoadType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mloadType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMDLBufferCurrentSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLBufferCurrentSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMDLBufferMaxSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLBufferMaxSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMDLRangeEndOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLRangeEndOffset:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMDLRangeStartOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLRangeStartOffset:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mProtocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTcpInfoRtt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTcpInfoRtt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTrackType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTrackType:I

    .line 2
    .line 3
    return v0
.end method

.method public setBytes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mBytes:J

    .line 2
    .line 3
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mhost:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLastDataRecv(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mLastDataRecv:J

    .line 2
    .line 3
    return-void
.end method

.method public setLoadType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mloadType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMDLBufferCurrentSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLBufferCurrentSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setMDLBufferMaxSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLBufferMaxSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setMDLRangeEndOffset(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLRangeEndOffset:J

    .line 2
    .line 3
    return-void
.end method

.method public setMDLRangeStartOffset(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mMDLRangeStartOffset:J

    .line 2
    .line 3
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mProtocol:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTcpInfoRtt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTcpInfoRtt:J

    .line 2
    .line 3
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setTrackType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordItem;->mTrackType:I

    .line 2
    .line 3
    return-void
.end method
