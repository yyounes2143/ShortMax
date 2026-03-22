.class public final Lcom/moloco/sdk/internal/publisher/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;
.implements Lcom/moloco/sdk/publisher/AdShowListener;


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/publisher/AdShowListener;

.field public final b:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/moloco/sdk/internal/ortb/model/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/h0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/h0;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/moloco/sdk/internal/ortb/model/r;",
            ">;",
            "Lcom/moloco/sdk/internal/h0;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "provideSdkEvents"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sdkEventUrlTracker"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/d0;->a(Lcom/moloco/sdk/publisher/AdShowListener;)Lcom/moloco/sdk/publisher/AdShowListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/moloco/sdk/internal/publisher/t;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/t;->b:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/t;->c:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/t;->d:Lcom/moloco/sdk/internal/h0;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/t;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/t;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdShowFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAdError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAdError"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/t;->b:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdShowFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/t;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRewardedVideoCompleted(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 8
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/t;->c:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/moloco/sdk/internal/ortb/model/r;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/r;->i()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/t;->d:Lcom/moloco/sdk/internal/h0;

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    const/4 v6, 0x4

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/h0$a;->a(Lcom/moloco/sdk/internal/h0;Ljava/lang/String;JLcom/moloco/sdk/internal/c0;ILjava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/t;->b:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;->onRewardedVideoCompleted(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public onRewardedVideoStarted(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 8
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/t;->c:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/moloco/sdk/internal/ortb/model/r;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/r;->j()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/t;->d:Lcom/moloco/sdk/internal/h0;

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    const/4 v6, 0x4

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/h0$a;->a(Lcom/moloco/sdk/internal/h0;Ljava/lang/String;JLcom/moloco/sdk/internal/c0;ILjava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/t;->b:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;->onRewardedVideoStarted(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public onUserRewarded(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 8
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/t;->c:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/moloco/sdk/internal/ortb/model/r;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/r;->k()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/t;->d:Lcom/moloco/sdk/internal/h0;

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    const/4 v6, 0x4

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/h0$a;->a(Lcom/moloco/sdk/internal/h0;Ljava/lang/String;JLcom/moloco/sdk/internal/c0;ILjava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/t;->b:Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;->onUserRewarded(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
