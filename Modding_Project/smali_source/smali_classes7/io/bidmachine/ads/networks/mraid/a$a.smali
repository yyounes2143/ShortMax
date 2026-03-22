.class Lio/bidmachine/ads/networks/mraid/a$a;
.super Ljava/lang/Object;
.source "MraidBannerAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/a;->m(Lio/bidmachine/ContextProvider;Lxq/f;Lxq/g;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/ads/networks/mraid/m;

.field final synthetic b:Lxq/f;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/bidmachine/ads/networks/mraid/a;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/mraid/a;Lio/bidmachine/ads/networks/mraid/m;Lxq/f;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/a$a;->e:Lio/bidmachine/ads/networks/mraid/a;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/a$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/ads/networks/mraid/a$a;->b:Lxq/f;

    .line 6
    .line 7
    iput-object p4, p0, Lio/bidmachine/ads/networks/mraid/a$a;->c:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lio/bidmachine/ads/networks/mraid/a$a;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/a$a;->e:Lio/bidmachine/ads/networks/mraid/a;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/bidmachine/iab/mraid/MraidView$a;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/a$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 9
    .line 10
    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/m;->g:Lio/bidmachine/iab/CacheControl;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/MraidView$a;->v(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/a$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 17
    .line 18
    iget v2, v2, Lio/bidmachine/ads/networks/mraid/m;->h:F

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/MraidView$a;->D(F)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lio/bidmachine/ads/networks/mraid/f;

    .line 25
    .line 26
    iget-object v3, p0, Lio/bidmachine/ads/networks/mraid/a$a;->b:Lxq/f;

    .line 27
    .line 28
    invoke-direct {v2, v3}, Lio/bidmachine/ads/networks/mraid/f;-><init>(Lxq/f;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/MraidView$a;->B(Lio/bidmachine/iab/mraid/p;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/a$a;->e:Lio/bidmachine/ads/networks/mraid/a;

    .line 36
    .line 37
    invoke-static {v2}, Lio/bidmachine/ads/networks/mraid/a;->j(Lio/bidmachine/ads/networks/mraid/a;)Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/MraidView$a;->t(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/a$a;->c:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/MraidView$a;->c(Landroid/content/Context;)Lio/bidmachine/iab/mraid/MraidView;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, v0, Lio/bidmachine/ads/networks/mraid/a;->b:Lio/bidmachine/iab/mraid/MraidView;

    .line 52
    .line 53
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/a$a;->e:Lio/bidmachine/ads/networks/mraid/a;

    .line 54
    .line 55
    iget-object v0, v0, Lio/bidmachine/ads/networks/mraid/a;->b:Lio/bidmachine/iab/mraid/MraidView;

    .line 56
    .line 57
    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/a$a;->d:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidView;->j0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/a$a;->b:Lxq/f;

    .line 68
    .line 69
    const-string v2, "Exception loading MRAID banner object"

    .line 70
    .line 71
    invoke-static {v2, v0}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v1, v0}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method
