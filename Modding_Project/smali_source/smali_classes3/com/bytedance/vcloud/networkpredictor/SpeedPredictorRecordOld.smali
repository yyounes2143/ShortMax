.class public Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;
.super Ljava/lang/Object;
.source "SpeedPredictorRecordOld.java"

# interfaces
.implements Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;


# instance fields
.field private mBytes:J

.field private mLastRecvDate:J

.field private mProtocol:Ljava/lang/String;

.field private mStreamId:Ljava/lang/String;

.field private mTcpInfoRtt:J

.field private mTime:J

.field private mTimestamp:J

.field private mTrackType:I


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
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mStreamId:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mTrackType:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastRecvDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mLastRecvDate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mProtocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mStreamId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTcpInfoRtt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mTcpInfoRtt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTrackType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mTrackType:I

    .line 2
    .line 3
    return v0
.end method

.method public setBytes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mBytes:J

    .line 2
    .line 3
    return-void
.end method

.method public setLastRecvDate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mLastRecvDate:J

    .line 2
    .line 3
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mProtocol:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSteamId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mStreamId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTcpInfoRtt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mTcpInfoRtt:J

    .line 2
    .line 3
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mTimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setTrackType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->mTrackType:I

    .line 2
    .line 3
    return-void
.end method
