.class Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;
.super Ljava/lang/Object;
.source "FirstFrameMetrics.java"

# interfaces
.implements Lcom/ss/ttvideoengine/metrics/IMediaMetrics;


# instance fields
.field private mFirstFrameDecodedDuration:J

.field private mFirstFrameRenderDuration:J

.field private mFreeLastDuration:I

.field private mMetrics:Landroid/os/Bundle;

.field private mPlaybackBufferEndDuration:J

.field private mPlayerFirstFrameRenderDuration:J

.field private mReadFirstVideoPktDuration:J

.field private mReadHeaderDuration:J

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    .line 10
    .line 11
    iput p1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mType:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mType:I

    .line 2
    .line 3
    return v0
.end method

.method public logMetric(Lcom/ss/ttvideoengine/log/VideoEventOnePlay;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranFirstPacketT:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v4, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_start_time:J

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mReadHeaderDuration:J

    .line 6
    iget-wide v4, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstVideoFrameT:J

    iget-wide v6, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_start_time:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mReadFirstVideoPktDuration:J

    .line 7
    iget-wide v4, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstVideoFrameT:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mFirstFrameDecodedDuration:J

    .line 8
    iget-wide v4, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mFirstFrameRenderDuration:J

    .line 9
    iget-wide v4, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playerFirstFrameT:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mPlayerFirstFrameRenderDuration:J

    .line 10
    iget-wide v4, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackBufferEndT:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_2

    sub-long v2, v4, v6

    :cond_2
    iput-wide v2, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mPlaybackBufferEndDuration:J

    .line 11
    iget-object p1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    const-string v2, "ffr_read_head_duration"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 12
    iget-object p1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    const-string v0, "ffr_read_first_data_duration"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mReadFirstVideoPktDuration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 13
    iget-object p1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    const-string v0, "ffr_decode_duration"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mFirstFrameDecodedDuration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 14
    iget-object p1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    const-string v0, "ffr_render_duration"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mFirstFrameRenderDuration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-object p1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    const-string v0, "ffr_playback_buffering_duration"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mPlaybackBufferEndDuration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 16
    iget-object p1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    const-string v0, "ffr_prender_duration"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mPlayerFirstFrameRenderDuration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public logMetric(Ljava/lang/String;F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public logMetric(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public logMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logMetric(Ljava/lang/String;Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public popMetricBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public popMetricFloat(Ljava/lang/String;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public popMetricInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public popMetricLong(Ljava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public popMetrics()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public printf()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;->mMetrics:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
