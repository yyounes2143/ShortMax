.class public final Lcom/ss/ttvideoengine/metrics/MetricsFactory;
.super Ljava/lang/Object;
.source "MetricsFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createMetrics(ILcom/ss/ttvideoengine/log/VideoEventOnePlay;)Lcom/ss/ttvideoengine/metrics/IMediaMetrics;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/metrics/FirstFrameMetrics;-><init>(I)V

    .line 8
    .line 9
    .line 10
    move-object p0, v0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/ss/ttvideoengine/metrics/IMediaMetrics;->logMetric(Lcom/ss/ttvideoengine/log/VideoEventOnePlay;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-object p0
.end method
