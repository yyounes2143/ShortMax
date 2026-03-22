.class public Lsl/b;
.super Lol/e;
.source "SignalsCollector.java"

# interfaces
.implements Lol/c;


# instance fields
.field private a:Lql/a;


# direct methods
.method public constructor <init>(Lql/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lol/e;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsl/b;->a:Lql/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lol/f;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Lol/e;->f(Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Lsl/b;->e(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lol/f;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/a;Lol/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsl/b;->a:Lql/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lql/a;->a()Lcom/google/android/gms/ads/AdRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lsl/a;

    .line 8
    .line 9
    new-instance v2, Lol/d;

    .line 10
    .line 11
    invoke-direct {v2, p4, p5}, Lol/d;-><init>(Lcom/unity3d/scar/adapter/common/a;Lol/f;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p2, v2}, Lsl/a;-><init>(Ljava/lang/String;Lol/a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p3}, Lsl/b;->g(Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;)Lcom/google/android/gms/ads/AdFormat;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/ads/query/QueryInfo;->generate(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public g(Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;)Lcom/google/android/gms/ads/AdFormat;
    .locals 1

    .line 1
    sget-object v0, Lsl/b$a;->a:[I

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
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->UNKNOWN:Lcom/google/android/gms/ads/AdFormat;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_2
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 28
    .line 29
    return-object p1
.end method
