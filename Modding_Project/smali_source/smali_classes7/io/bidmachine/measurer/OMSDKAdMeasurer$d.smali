.class Lio/bidmachine/measurer/OMSDKAdMeasurer$d;
.super Ljava/lang/Object;
.source "OMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/OMSDKAdMeasurer;->j()V
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
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$d;->a:Lio/bidmachine/measurer/OMSDKAdMeasurer;

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
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$d;->a:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->i(Lio/bidmachine/measurer/OMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$d;->a:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->g(Lio/bidmachine/measurer/OMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/AdEvents;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$d;->a:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 13
    .line 14
    invoke-static {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->b(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$d;->a:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 21
    .line 22
    invoke-static {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->b(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->finish()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$d;->a:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 33
    .line 34
    const-string v1, "destroy"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->r(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_2
    return-void
.end method
