.class Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$b;
.super Ljava/lang/Object;
.source "OMMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->onClicked()V
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
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$b;->a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

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
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$b;->a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 2
    .line 3
    iget-object v0, v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->f:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/iab/omid/library/appodeal/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/appodeal/adsession/media/InteractionType;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/appodeal/adsession/media/InteractionType;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$b;->a:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 13
    .line 14
    const-string v1, "onAdClicked"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method
