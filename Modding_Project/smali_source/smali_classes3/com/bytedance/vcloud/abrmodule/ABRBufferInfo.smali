.class public Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;
.super Ljava/lang/Object;
.source "ABRBufferInfo.java"

# interfaces
.implements Lcom/bytedance/vcloud/abrmodule/IBufferInfo;


# instance fields
.field private mFileAvailSize:J

.field private mHeadSize:J

.field private mPlayerAvailDuration:F

.field private mStreamId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mStreamId:Ljava/lang/String;

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    iput v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mPlayerAvailDuration:F

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mFileAvailSize:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mHeadSize:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getFileAvailSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mFileAvailSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getHeadSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mHeadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPlayerAvailDuration()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mPlayerAvailDuration:F

    .line 2
    .line 3
    return v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mStreamId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setFileAvailSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mFileAvailSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setHeadSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mHeadSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setPlayerAvailDuration(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mPlayerAvailDuration:F

    .line 2
    .line 3
    return-void
.end method

.method public setStreamId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->mStreamId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
