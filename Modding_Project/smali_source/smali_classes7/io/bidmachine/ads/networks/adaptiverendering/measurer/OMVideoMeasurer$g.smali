.class Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$g;
.super Ljava/lang/Object;
.source "OMVideoMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$g;->a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$g;->a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;

    .line 2
    .line 3
    iget-object v0, v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->f:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->pause()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$g;->a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;

    .line 11
    .line 12
    const-string v1, "onMediaPaused"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method
