.class Lgm/d;
.super Lio/bidmachine/ads/networks/gam/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgm/d$b;
    }
.end annotation


# instance fields
.field private final h:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private i:Lcom/google/android/gms/ads/admanager/AdManagerAdView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/t;Lcom/google/android/gms/ads/AdSize;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/ads/networks/gam/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/ads/AdSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/e0;-><init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/t;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lgm/d;->h:Lcom/google/android/gms/ads/AdSize;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public B(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/n0;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/n0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lgm/d;->i:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 7
    .line 8
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lgm/d;->i:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 18
    .line 19
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->l()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lgm/d;->i:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 27
    .line 28
    new-instance v0, Lgm/d$b;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, p0, p2, v1}, Lgm/d$b;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lio/bidmachine/ads/networks/gam/n0;Lgm/d$a;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lgm/d;->i:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 38
    .line 39
    iget-object p2, p0, Lgm/d;->h:Lcom/google/android/gms/ads/AdSize;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lgm/d;->i:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 45
    .line 46
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->n()Lio/bidmachine/ads/networks/gam/j;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->o()Lio/bidmachine/ads/networks/gam/t;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p2, v0}, Lgm/b;->a(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/ads/networks/gam/t;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method protected H()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lgm/d;->i:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    .line 3
    return-object v0
.end method

.method protected j()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lgm/d;->i:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lgm/d;->i:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
