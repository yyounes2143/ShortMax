.class Lio/bidmachine/measurer/OMSDKAdMeasurer$b;
.super Ljava/lang/Object;
.source "OMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/OMSDKAdMeasurer;->F0(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lio/bidmachine/measurer/OMSDKAdMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$b;->b:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 2
    .line 3
    iput p2, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$b;->a:F

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$b;->b:Lio/bidmachine/measurer/OMSDKAdMeasurer;

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
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$b;->b:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->h(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$b;->a:F

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->volumeChange(F)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$b;->b:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 21
    .line 22
    const-string v1, "onMediaVolumeChanged"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->r(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    return-void
.end method
