.class public final Lad-manager/d/h;
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
    iput-object p1, p0, Lad-manager/d/h;->d:Le/t;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/d/h;->e:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/d/h;->f:Lca/e;

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
    .locals 9

    .line 1
    sget-object v0, Lca/k;->a:Lca/k;

    .line 2
    .line 3
    sget-object v1, Lcom/hades/aar/admanager/core/AdFormat;->BANNER:Lcom/hades/aar/admanager/core/AdFormat;

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
    new-instance v5, Lg/a;

    .line 13
    .line 14
    invoke-direct {v5}, Lg/a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, v5, Lg/a;->a:J

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    iput-wide v0, v5, Lg/a;->b:J

    .line 26
    .line 27
    iget-object v0, p0, Lad-manager/d/h;->d:Le/t;

    .line 28
    .line 29
    iget-object v1, p0, Lad-manager/d/h;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lda/f;->p(Ljava/lang/String;)Lca/d;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Le/t;->U(Le/t;Lca/d;)Lcom/google/android/gms/ads/AdRequest;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lad-manager/d/h;->d:Le/t;

    .line 40
    .line 41
    invoke-virtual {v1}, Lda/f;->t()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    instance-of v1, v1, Landroid/app/Activity;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lad-manager/d/h;->d:Le/t;

    .line 50
    .line 51
    invoke-virtual {v1}, Lda/f;->t()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lad-manager/d/h;->d:Le/t;

    .line 57
    .line 58
    iget-object v1, v1, Le/t;->m:Landroid/content/Context;

    .line 59
    .line 60
    :goto_0
    new-instance v7, Lcom/google/android/gms/ads/AdView;

    .line 61
    .line 62
    invoke-direct {v7, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iget-object v6, p0, Lad-manager/d/h;->f:Lca/e;

    .line 66
    .line 67
    iget-object v2, p0, Lad-manager/d/h;->d:Le/t;

    .line 68
    .line 69
    iget-object v3, p0, Lad-manager/d/h;->e:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v6}, Lca/e;->e()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v7, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 79
    .line 80
    invoke-virtual {v7, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 81
    .line 82
    .line 83
    new-instance v8, Le/f;

    .line 84
    .line 85
    move-object v1, v8

    .line 86
    move-object v4, v7

    .line 87
    invoke-direct/range {v1 .. v6}, Le/f;-><init>(Le/t;Ljava/lang/String;Lcom/google/android/gms/ads/AdView;Lg/a;Lca/e;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object v0
.end method
