.class public final Lad-manager/d/j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic d:Le/t;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lca/e;


# direct methods
.method public constructor <init>(Le/t;Ljava/lang/String;Lca/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/d/j;->d:Le/t;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/d/j;->e:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/d/j;->f:Lca/e;

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
    sget-object v0, Lca/k;->a:Lca/k;

    .line 2
    .line 3
    sget-object v1, Lcom/hades/aar/admanager/core/AdFormat;->INTERSTITIAL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lca/k;->i(Lcom/hades/aar/admanager/core/AdFormat;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Lg/a;

    .line 13
    .line 14
    invoke-direct {v0}, Lg/a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iput-wide v1, v0, Lg/a;->a:J

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    iput-wide v1, v0, Lg/a;->b:J

    .line 26
    .line 27
    iget-object v1, p0, Lad-manager/d/j;->d:Le/t;

    .line 28
    .line 29
    iget-object v2, p0, Lad-manager/d/j;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lda/f;->p(Ljava/lang/String;)Lca/d;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Le/t;->U(Le/t;Lca/d;)Lcom/google/android/gms/ads/AdRequest;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lad-manager/d/j;->d:Le/t;

    .line 40
    .line 41
    invoke-virtual {v2}, Lda/f;->t()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    instance-of v2, v2, Landroid/app/Activity;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v2, p0, Lad-manager/d/j;->d:Le/t;

    .line 50
    .line 51
    invoke-virtual {v2}, Lda/f;->t()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v2, p0, Lad-manager/d/j;->d:Le/t;

    .line 57
    .line 58
    iget-object v2, v2, Le/t;->m:Landroid/content/Context;

    .line 59
    .line 60
    :goto_0
    iget-object v3, p0, Lad-manager/d/j;->f:Lca/e;

    .line 61
    .line 62
    invoke-virtual {v3}, Lca/e;->e()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    new-instance v4, Le/l;

    .line 67
    .line 68
    iget-object v5, p0, Lad-manager/d/j;->d:Le/t;

    .line 69
    .line 70
    iget-object v6, p0, Lad-manager/d/j;->e:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v7, p0, Lad-manager/d/j;->f:Lca/e;

    .line 73
    .line 74
    invoke-direct {v4, v5, v6, v0, v7}, Le/l;-><init>(Le/t;Ljava/lang/String;Lg/a;Lca/e;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object v0
.end method
