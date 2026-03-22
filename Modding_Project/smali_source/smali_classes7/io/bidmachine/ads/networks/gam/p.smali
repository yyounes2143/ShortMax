.class Lio/bidmachine/ads/networks/gam/p;
.super Lxq/o;
.source "GAMParams.java"


# instance fields
.field final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lxq/k;)V
    .locals 1
    .param p1    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lxq/o;-><init>(Lxq/k;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "ad_unit_id"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/p;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "score"

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/p;->c:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "price"

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/p;->d:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a(Lxq/c;)Z
    .locals 2
    .param p1    # Lxq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/p;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "ad_unit_id"

    .line 11
    .line 12
    invoke-static {v0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/p;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "score"

    .line 29
    .line 30
    invoke-static {v0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v0}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/p;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const-string v0, "price"

    .line 47
    .line 48
    invoke-static {v0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {p1, v0}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_2
    const/4 p1, 0x1

    .line 57
    return p1
.end method
