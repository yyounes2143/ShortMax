.class Ljm/b;
.super Lio/bidmachine/ads/networks/gam_dynamic/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljm/b$b;,
        Ljm/b$c;
    }
.end annotation


# instance fields
.field private final k:Lcom/google/android/gms/ads/AdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;Lcom/google/android/gms/ads/AdSize;)V
    .locals 0
    .param p1    # Lhm/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lhm/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/ads/AdSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/v;-><init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)V

    .line 2
    .line 3
    .line 4
    iput-object p6, p0, Ljm/b;->k:Lcom/google/android/gms/ads/AdSize;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic L(Ljm/b;)Lcom/google/android/gms/ads/admanager/AdManagerAdView;
    .locals 0

    .line 1
    iget-object p0, p0, Ljm/b;->l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic M(Ljm/b;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->E(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic N(Ljm/b;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->E(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O(Ljm/b;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->E(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public B(Landroid/content/Context;Lhm/q;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/q;
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
    iput-object v0, p0, Ljm/b;->l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

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
    iget-object p1, p0, Ljm/b;->l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 18
    .line 19
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnitId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Ljm/b;->l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 27
    .line 28
    new-instance v0, Ljm/b$b;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, p0, p2, v1}, Ljm/b$b;-><init>(Ljm/b;Lhm/q;Ljm/b$a;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Ljm/b;->l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 38
    .line 39
    new-instance p2, Ljm/b$c;

    .line 40
    .line 41
    invoke-direct {p2, p0, v1}, Ljm/b$c;-><init>(Ljm/b;Ljm/b$a;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Ljm/b;->l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 48
    .line 49
    iget-object p2, p0, Ljm/b;->k:Lcom/google/android/gms/ads/AdSize;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Ljm/b;->l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 55
    .line 56
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->m()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p2}, Ljm/o;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method protected K()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ljm/b;->l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    .line 3
    return-object v0
.end method

.method protected k()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Ljm/b;->l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ljm/b;->l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->destroy()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Ljm/b;->l:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 15
    .line 16
    :cond_0
    return-void
.end method
