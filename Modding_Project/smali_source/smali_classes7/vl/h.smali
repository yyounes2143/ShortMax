.class public Lvl/h;
.super Lvl/b;
.source "ScarRewardedAdListener.java"


# instance fields
.field private final b:Lvl/g;

.field private final c:Lcom/unity3d/scar/adapter/common/h;

.field private final d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

.field private final e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

.field private final f:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/h;Lvl/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvl/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lvl/h$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lvl/h$a;-><init>(Lvl/h;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvl/h;->d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    .line 10
    .line 11
    new-instance v0, Lvl/h$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lvl/h$b;-><init>(Lvl/h;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lvl/h;->e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    .line 17
    .line 18
    new-instance v0, Lvl/h$c;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lvl/h$c;-><init>(Lvl/h;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lvl/h;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 24
    .line 25
    iput-object p1, p0, Lvl/h;->c:Lcom/unity3d/scar/adapter/common/h;

    .line 26
    .line 27
    iput-object p2, p0, Lvl/h;->b:Lvl/g;

    .line 28
    .line 29
    return-void
.end method

.method static synthetic b(Lvl/h;)Lcom/unity3d/scar/adapter/common/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lvl/h;->c:Lcom/unity3d/scar/adapter/common/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lvl/h;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lvl/h;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lvl/h;)Lvl/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lvl/h;->b:Lvl/g;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public e()Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lvl/h;->d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/google/android/gms/ads/OnUserEarnedRewardListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lvl/h;->e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    .line 2
    .line 3
    return-object v0
.end method
