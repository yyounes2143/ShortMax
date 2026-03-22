.class public Lvl/f;
.super Lvl/b;
.source "ScarInterstitialAdListener.java"


# instance fields
.field private final b:Lvl/e;

.field private final c:Lcom/unity3d/scar/adapter/common/g;

.field private final d:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

.field private final e:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/g;Lvl/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvl/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lvl/f$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lvl/f$a;-><init>(Lvl/f;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvl/f;->d:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    .line 10
    .line 11
    new-instance v0, Lvl/f$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lvl/f$b;-><init>(Lvl/f;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lvl/f;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 17
    .line 18
    iput-object p1, p0, Lvl/f;->c:Lcom/unity3d/scar/adapter/common/g;

    .line 19
    .line 20
    iput-object p2, p0, Lvl/f;->b:Lvl/e;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic b(Lvl/f;)Lcom/unity3d/scar/adapter/common/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lvl/f;->c:Lcom/unity3d/scar/adapter/common/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lvl/f;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lvl/f;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lvl/f;)Lvl/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lvl/f;->b:Lvl/e;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public e()Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lvl/f;->d:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    .line 2
    .line 3
    return-object v0
.end method
