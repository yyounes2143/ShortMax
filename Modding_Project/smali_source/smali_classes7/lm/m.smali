.class public final synthetic Llm/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llm/k$b;

.field public final synthetic b:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method public synthetic constructor <init>(Llm/k$b;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llm/m;->a:Llm/k$b;

    .line 5
    .line 6
    iput-object p2, p0, Llm/m;->b:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Llm/m;->a:Llm/k$b;

    .line 2
    .line 3
    iget-object v1, p0, Llm/m;->b:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 4
    .line 5
    invoke-static {v0, v1}, Llm/k$b;->b(Llm/k$b;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
