.class public final Lad-manager/d/l;
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
    iput-object p1, p0, Lad-manager/d/l;->d:Le/t;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/d/l;->e:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/d/l;->f:Lca/e;

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

.method public static final b(Le/t;Ljava/lang/String;Lg/a;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 1

    .line 1
    const-string v0, "ad"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/ads/nativead/NativeAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, p1, p3, p2, v0}, Le/t;->Z(Ljava/lang/String;Ljava/lang/Object;Lg/a;Lcom/google/android/gms/ads/ResponseInfo;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    sget-object v0, Lca/k;->a:Lca/k;

    .line 2
    .line 3
    sget-object v1, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

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
    return-void

    .line 12
    :cond_0
    new-instance v4, Lg/a;

    .line 13
    .line 14
    invoke-direct {v4}, Lg/a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, v4, Lg/a;->a:J

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    iput-wide v0, v4, Lg/a;->b:J

    .line 26
    .line 27
    iget-object v0, p0, Lad-manager/d/l;->d:Le/t;

    .line 28
    .line 29
    iget-object v1, p0, Lad-manager/d/l;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lda/f;->p(Ljava/lang/String;)Lca/d;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-object v0, p0, Lad-manager/d/l;->d:Le/t;

    .line 36
    .line 37
    invoke-static {v0, v6}, Le/t;->U(Le/t;Lca/d;)Lcom/google/android/gms/ads/AdRequest;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lad-manager/d/l;->d:Le/t;

    .line 42
    .line 43
    invoke-virtual {v1}, Lda/f;->t()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    instance-of v1, v1, Landroid/app/Activity;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Lad-manager/d/l;->d:Le/t;

    .line 52
    .line 53
    invoke-virtual {v1}, Lda/f;->t()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lad-manager/d/l;->d:Le/t;

    .line 59
    .line 60
    iget-object v1, v1, Le/t;->m:Landroid/content/Context;

    .line 61
    .line 62
    :goto_0
    new-instance v2, Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 63
    .line 64
    iget-object v3, p0, Lad-manager/d/l;->f:Lca/e;

    .line 65
    .line 66
    invoke-virtual {v3}, Lca/e;->e()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lad-manager/d/l;->d:Le/t;

    .line 74
    .line 75
    iget-object v3, p0, Lad-manager/d/l;->e:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v5, Le/o;

    .line 78
    .line 79
    invoke-direct {v5, v1, v3, v4}, Le/o;-><init>(Le/t;Ljava/lang/String;Lg/a;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v5}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    new-instance v8, Le/n;

    .line 87
    .line 88
    iget-object v2, p0, Lad-manager/d/l;->d:Le/t;

    .line 89
    .line 90
    iget-object v3, p0, Lad-manager/d/l;->f:Lca/e;

    .line 91
    .line 92
    iget-object v5, p0, Lad-manager/d/l;->e:Ljava/lang/String;

    .line 93
    .line 94
    move-object v1, v8

    .line 95
    invoke-direct/range {v1 .. v6}, Le/n;-><init>(Le/t;Lca/e;Lg/a;Ljava/lang/String;Lca/d;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    new-instance v2, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 103
    .line 104
    invoke-direct {v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lad-manager/d/l;->f:Lca/e;

    .line 108
    .line 109
    invoke-virtual {v3}, Lca/e;->d()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const/4 v3, 0x0

    .line 118
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lad-manager/d/l;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
