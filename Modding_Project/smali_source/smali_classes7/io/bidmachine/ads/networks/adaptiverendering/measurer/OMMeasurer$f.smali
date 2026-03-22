.class Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$f;
.super Ljava/lang/Object;
.source "OMMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->k(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$f;->b:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$f;->a:Landroid/view/View;

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
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$f;->b:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->e(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$f;->b:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->e(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$f;->a:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$f;->b:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 21
    .line 22
    const-string v1, "registerView"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->h(Ljava/lang/String;)V
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
