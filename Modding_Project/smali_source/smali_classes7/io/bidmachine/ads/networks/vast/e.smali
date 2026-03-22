.class Lio/bidmachine/ads/networks/vast/e;
.super Lxq/o;
.source "VastParams.java"


# instance fields
.field final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final c:Lio/bidmachine/iab/CacheControl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:F

.field final e:I

.field final f:I

.field final g:Z

.field final h:Z


# direct methods
.method constructor <init>(Lxq/k;)V
    .locals 2
    .param p1    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lxq/o;-><init>(Lxq/k;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "creativeAdm"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/e;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "cacheControl"

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lgr/c;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lfr/d;->b(Ljava/lang/Object;)Lio/bidmachine/iab/CacheControl;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/e;->c:Lio/bidmachine/iab/CacheControl;

    .line 23
    .line 24
    const-string v0, "placeholderTimeoutSec"

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lgr/c;->o(Ljava/lang/Object;)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lio/bidmachine/ads/networks/vast/e;->d:F

    .line 31
    .line 32
    const-string v0, "skipOffset"

    .line 33
    .line 34
    invoke-interface {p1, v0}, Lgr/c;->e(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lio/bidmachine/ads/networks/vast/e;->e:I

    .line 39
    .line 40
    const-string v0, "companionSkipOffset"

    .line 41
    .line 42
    invoke-interface {p1, v0}, Lgr/c;->e(Ljava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lio/bidmachine/ads/networks/vast/e;->f:I

    .line 47
    .line 48
    const-string v0, "useNativeClose"

    .line 49
    .line 50
    invoke-interface {p1, v0}, Lgr/c;->d(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput-boolean v0, p0, Lio/bidmachine/ads/networks/vast/e;->g:Z

    .line 55
    .line 56
    const-string v0, "omsdk_enabled"

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-interface {p1, v0, v1}, Lgr/c;->l(Ljava/lang/Object;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    invoke-static {}, Lym/a;->g()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 73
    :goto_0
    iput-boolean v1, p0, Lio/bidmachine/ads/networks/vast/e;->h:Z

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public a(Lxq/c;)Z
    .locals 1
    .param p1    # Lxq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/e;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "creativeAdm"

    .line 10
    .line 11
    invoke-static {v0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    return p1
.end method
