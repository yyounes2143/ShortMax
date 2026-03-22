.class Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$d;
.super Ljava/lang/Object;
.source "OMMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$d;->a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

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
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$d;->a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$d;->a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->b(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$d;->a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 18
    .line 19
    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->b(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->i(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$d;->a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 27
    .line 28
    const-string v1, "onAdLoaded"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    return-void
.end method
