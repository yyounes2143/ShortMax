.class Lio/bidmachine/measurer/OMSDKAdMeasurer$c;
.super Ljava/lang/Object;
.source "OMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/OMSDKAdMeasurer;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/measurer/OMSDKAdMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$c;->a:Lio/bidmachine/measurer/OMSDKAdMeasurer;

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
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$c;->a:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->h(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$c;->a:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->h(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->skipped()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$c;->a:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 19
    .line 20
    const-string v1, "onMediaSkipped"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->r(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method
