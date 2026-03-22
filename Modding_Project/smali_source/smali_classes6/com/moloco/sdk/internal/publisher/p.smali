.class public final Lcom/moloco/sdk/internal/publisher/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/RewardedInterstitialAd;
.implements Lcom/moloco/sdk/internal/publisher/m0;
.implements Lcom/moloco/sdk/publisher/FullscreenAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moloco/sdk/publisher/RewardedInterstitialAd;",
        "Lcom/moloco/sdk/internal/publisher/m0;",
        "Lcom/moloco/sdk/publisher/FullscreenAd<",
        "Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/publisher/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moloco/sdk/internal/publisher/u<",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/u;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/publisher/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/u<",
            "-",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "fullscreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adUnitId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/p;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/p;->b:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public static final a(Lcom/moloco/sdk/internal/publisher/p;)Lcom/moloco/sdk/internal/ortb/model/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/p;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/u;->q()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final b(Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;Lcom/moloco/sdk/internal/publisher/p;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/moloco/sdk/internal/publisher/p;->b:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-static {p1, p2, v0, p2}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo$default(Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;->onRewardedVideoCompleted(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final c(Lcom/moloco/sdk/internal/publisher/p;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/p;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/u;->v()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public d(Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;)V
    .locals 2
    .param p1    # Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/moloco/sdk/internal/publisher/i;-><init>(Lcom/moloco/sdk/internal/publisher/p;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/moloco/sdk/internal/publisher/r;->c(Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;Lkotlin/jvm/functions/Function0;)Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/p;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/u;->p()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    new-instance v1, Lcom/moloco/sdk/internal/publisher/j;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/moloco/sdk/internal/publisher/j;-><init>(Lcom/moloco/sdk/internal/publisher/p;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Lcom/moloco/sdk/internal/publisher/r;->d(Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;ZLkotlin/jvm/functions/Function0;)Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/p;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 33
    .line 34
    new-instance v1, Lcom/moloco/sdk/internal/publisher/k;

    .line 35
    .line 36
    invoke-direct {v1, p1, p0}, Lcom/moloco/sdk/internal/publisher/k;-><init>(Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;Lcom/moloco/sdk/internal/publisher/p;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/internal/publisher/u;->l(Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/p;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/moloco/sdk/internal/publisher/u;->show(Lcom/moloco/sdk/publisher/AdShowListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/p;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/u;->destroy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/p;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/u;->isLoaded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/publisher/AdLoad$Listener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "bidResponseJson"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/p;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/moloco/sdk/internal/publisher/u;->load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setCreateAdObjectStartTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/p;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/moloco/sdk/internal/publisher/u;->setCreateAdObjectStartTime(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic show(Lcom/moloco/sdk/publisher/AdShowListener;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/publisher/p;->d(Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
