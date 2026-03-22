.class public final Lad-manager/e/i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic d:Lfa/c;

.field public final synthetic e:Lca/e;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfa/c;Lca/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/e/i;->d:Lfa/c;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/e/i;->e:Lca/e;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/e/i;->f:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lad-manager/e/i;->d:Lfa/c;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/e/i;->e:Lca/e;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lfa/c;->W(Lfa/c;Lca/e;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lad-manager/e/i;->d:Lfa/c;

    .line 13
    .line 14
    sget-object v1, Lcom/hades/aar/admanager/core/AdFormat;->REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lda/f;->w(Lcom/hades/aar/admanager/core/AdFormat;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lga/a;->a:Lga/a;

    .line 23
    .line 24
    iget-object v1, p0, Lad-manager/e/i;->d:Lfa/c;

    .line 25
    .line 26
    iget-object v2, p0, Lad-manager/e/i;->e:Lca/e;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lfa/c;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "Block RewardedAd -> Already Showing"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lad-manager/e/i;->e:Lca/e;

    .line 39
    .line 40
    invoke-virtual {v0}, Lca/e;->e()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lad-manager/e/i;->d:Lfa/c;

    .line 45
    .line 46
    invoke-static {v1}, Lfa/c;->X(Lfa/c;)Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/applovin/mediation/ads/MaxRewardedAd;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/applovin/mediation/ads/MaxRewardedAd;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v3, p0, Lad-manager/e/i;->d:Lfa/c;

    .line 55
    .line 56
    iget-object v4, p0, Lad-manager/e/i;->f:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v7, p0, Lad-manager/e/i;->e:Lca/e;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Lda/f;->p(Ljava/lang/String;)Lca/d;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    new-instance v1, Lf/e;

    .line 67
    .line 68
    move-object v2, v1

    .line 69
    move-object v6, v0

    .line 70
    invoke-direct/range {v2 .. v7}, Lf/e;-><init>(Lfa/c;Ljava/lang/String;Lca/d;Ljava/lang/Object;Lca/e;)V

    .line 71
    .line 72
    .line 73
    const-string v2, "this"

    .line 74
    .line 75
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Lf/e;->f(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->loadAd()V

    .line 82
    .line 83
    .line 84
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object v0
.end method
