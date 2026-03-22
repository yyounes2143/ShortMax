.class public abstract Lol/e;
.super Ljava/lang/Object;
.source "SignalsCollectorBase.java"

# interfaces
.implements Lol/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lol/e$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lol/b;)V
    .locals 8

    .line 1
    new-instance v6, Lcom/unity3d/scar/adapter/common/a;

    .line 2
    .line 3
    invoke-direct {v6}, Lcom/unity3d/scar/adapter/common/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v7, Lol/f;

    .line 7
    .line 8
    invoke-direct {v7}, Lol/f;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v6}, Lcom/unity3d/scar/adapter/common/a;->a()V

    .line 12
    .line 13
    .line 14
    move-object v0, p0

    .line 15
    move-object v1, p1

    .line 16
    move-object v2, p2

    .line 17
    move-object v3, p3

    .line 18
    move-object v4, v6

    .line 19
    move-object v5, v7

    .line 20
    invoke-interface/range {v0 .. v5}, Lol/c;->e(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lol/f;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lol/e$b;

    .line 24
    .line 25
    invoke-direct {p1, p0, p4, v7}, Lol/e$b;-><init>(Lol/e;Lol/b;Lol/f;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, p1}, Lcom/unity3d/scar/adapter/common/a;->c(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public b(Landroid/content/Context;ZLol/b;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/unity3d/scar/adapter/common/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/scar/adapter/common/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lol/f;

    .line 7
    .line 8
    invoke-direct {v1}, Lol/f;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/a;->a()V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->INTERSTITIAL:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 15
    .line 16
    invoke-interface {p0, p1, v2, v0, v1}, Lol/c;->d(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lol/f;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/a;->a()V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->REWARDED:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 23
    .line 24
    invoke-interface {p0, p1, v2, v0, v1}, Lol/c;->d(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lol/f;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/a;->a()V

    .line 30
    .line 31
    .line 32
    sget-object p2, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->BANNER:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 33
    .line 34
    invoke-interface {p0, p1, p2, v0, v1}, Lol/c;->d(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lol/f;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance p1, Lol/e$b;

    .line 38
    .line 39
    invoke-direct {p1, p0, p3, v1}, Lol/e$b;-><init>(Lol/e;Lol/b;Lol/f;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/common/a;->c(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/util/List;Lol/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;",
            ">;",
            "Lol/b;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/scar/adapter/common/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/scar/adapter/common/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lol/f;

    .line 7
    .line 8
    invoke-direct {v1}, Lol/f;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/a;->a()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, p1, v2, v0, v1}, Lol/c;->d(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lol/f;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lol/e$b;

    .line 35
    .line 36
    invoke-direct {p1, p0, p3, v1}, Lol/e$b;-><init>(Lol/e;Lol/b;Lol/f;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/common/a;->c(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public f(Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lol/e$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    const-string p1, "gmaScarBiddingRewardedSignal"

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    const-string p1, "gmaScarBiddingInterstitialSignal"

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_2
    const-string p1, "gmaScarBiddingBannerSignal"

    .line 28
    .line 29
    return-object p1
.end method
