.class public final Lad-manager/e/h;
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
    iput-object p1, p0, Lad-manager/e/h;->d:Lfa/c;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/e/h;->e:Lca/e;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/e/h;->f:Ljava/lang/String;

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
    iget-object v0, p0, Lad-manager/e/h;->d:Lfa/c;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/e/h;->e:Lca/e;

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
    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Lca/k;->a:Lca/k;

    .line 13
    .line 14
    sget-object v1, Lcom/hades/aar/admanager/core/AdFormat;->INTERSTITIAL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lca/k;->i(Lcom/hades/aar/admanager/core/AdFormat;)Z

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
    iget-object v1, p0, Lad-manager/e/h;->d:Lfa/c;

    .line 25
    .line 26
    iget-object v2, p0, Lad-manager/e/h;->e:Lca/e;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lfa/c;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "loadInterstitialAd -> Blocked by Policy"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lad-manager/e/h;->d:Lfa/c;

    .line 39
    .line 40
    invoke-virtual {v0}, Lda/f;->t()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    instance-of v0, v0, Landroid/app/Activity;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lad-manager/e/h;->d:Lfa/c;

    .line 49
    .line 50
    invoke-virtual {v0}, Lda/f;->t()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lad-manager/e/h;->d:Lfa/c;

    .line 56
    .line 57
    invoke-static {v0}, Lfa/c;->X(Lfa/c;)Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    new-instance v7, Lcom/applovin/mediation/ads/MaxInterstitialAd;

    .line 62
    .line 63
    iget-object v1, p0, Lad-manager/e/h;->e:Lca/e;

    .line 64
    .line 65
    invoke-virtual {v1}, Lca/e;->e()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v7, v1, v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lad-manager/e/h;->d:Lfa/c;

    .line 73
    .line 74
    iget-object v3, p0, Lad-manager/e/h;->f:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v6, p0, Lad-manager/e/h;->e:Lca/e;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lda/f;->p(Ljava/lang/String;)Lca/d;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    new-instance v0, Lf/e;

    .line 85
    .line 86
    move-object v1, v0

    .line 87
    move-object v5, v7

    .line 88
    invoke-direct/range {v1 .. v6}, Lf/e;-><init>(Lfa/c;Ljava/lang/String;Lca/d;Ljava/lang/Object;Lca/e;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v7}, Lf/e;->f(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v7}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->loadAd()V

    .line 95
    .line 96
    .line 97
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object v0
.end method
