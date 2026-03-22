.class Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;
.super Ljava/lang/Object;
.source "OMMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->R(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;->c:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;->a:Ljava/lang/Runnable;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;->b:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;->c:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->f:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 5
    .line 6
    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->d(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;Lcom/iab/omid/library/appodeal/adsession/AdEvents;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;->c:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->e(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;->c:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 18
    .line 19
    invoke-static {v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->e(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->finish()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;->c:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 30
    .line 31
    const-string v1, "destroy"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->h(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;->a:Ljava/lang/Runnable;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;->b:Landroid/os/Handler;

    .line 41
    .line 42
    iget-object v2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer$c;->c:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;

    .line 43
    .line 44
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->f()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_2
    return-void
.end method
