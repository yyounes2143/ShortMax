.class public final Lcom/inmobi/media/E1;
.super Lcom/inmobi/media/we;
.source "SourceFile"


# instance fields
.field public o:Lcom/inmobi/media/z1;

.field public p:Lcom/inmobi/media/z1;

.field public q:Lcom/inmobi/media/z1;

.field public r:Lcom/inmobi/media/z1;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiAudio$a;)V
    .locals 1

    .line 1
    const-string v0, "callbacks"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/inmobi/media/we;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/inmobi/media/we;->b(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static final a(Lcom/inmobi/media/E1;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onAdDisplayFailed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdDisplayFailed()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/inmobi/media/A5;

    invoke-virtual {p0}, Lcom/inmobi/media/A5;->a()V

    :cond_2
    return-void
.end method

.method public static final a(Lcom/inmobi/media/E1;Landroid/widget/RelativeLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$audio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/inmobi/media/E1;->a(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/E1;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdFetchSuccessful(Lcom/inmobi/ads/AdMetaInfo;)V

    :cond_0
    return-void
.end method

.method public static final b(Lcom/inmobi/media/E1;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdLoadSucceeded(Lcom/inmobi/ads/AdMetaInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 10

    .line 25
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "showAudioAd"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/M1;->E0()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 27
    sget-object p1, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "An ad is currently being viewed by the user. Please wait for the user to close the ad before showing another ad."

    invoke-static {v3, p1, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "ad is active"

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    if-eqz p1, :cond_3

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/inmobi/media/z1;->d(S)V

    :cond_3
    return-void

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    if-eqz v0, :cond_1d

    .line 31
    iget-object v4, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    const-string v5, "<get-TAG>(...)"

    if-eqz v4, :cond_5

    .line 32
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/inmobi/media/A5;

    const-string v7, "canProceedToShow"

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_5
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->W()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 35
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-string v1, "Ad Show has failed because current ad is expired. Please call load() again."

    invoke-static {v3, p1, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p1, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_6

    .line 39
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v3, "ad is expired"

    invoke-virtual {p1, v1, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_6
    iget-object p1, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_7

    .line 42
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AdUnit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " state - CREATED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, v3}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_7
    invoke-virtual {v0, v2}, Lcom/inmobi/media/S0;->d(B)V

    const/16 p1, 0x869

    .line 45
    invoke-virtual {v0, p1}, Lcom/inmobi/media/z1;->d(S)V

    goto/16 :goto_6

    .line 46
    :cond_8
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    move-result v4

    const-string v6, "callback - onShowFailure"

    const-string v7, "InMobi"

    if-ne v4, v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v8, 0x2

    if-ne v4, v8, :cond_c

    .line 47
    :goto_1
    const-string p1, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show."

    invoke-static {v3, v7, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p1, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_a

    .line 49
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v2, "ad is not ready"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_a
    iget-object p1, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_b

    .line 52
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/16 p1, 0x868

    .line 54
    invoke-virtual {v0, p1}, Lcom/inmobi/media/z1;->d(S)V

    goto/16 :goto_6

    :cond_c
    const/4 v8, 0x3

    const-string v9, "Ad Load has Failed. Please call load() again."

    if-ne v4, v8, :cond_e

    .line 55
    invoke-static {v3, v7, v9}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v2}, Lcom/inmobi/media/z1;->d(S)V

    .line 57
    iget-object p1, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_d

    .line 58
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_d
    iget-object p1, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1d

    .line 61
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "ad is failed"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    const/16 v8, 0x8

    if-ne v4, v8, :cond_10

    .line 63
    invoke-static {v3, v7, v9}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v2}, Lcom/inmobi/media/z1;->d(S)V

    .line 65
    iget-object p1, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_f

    .line 66
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_f
    iget-object p1, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1d

    .line 69
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "ad is unloaded"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    if-nez v4, :cond_12

    .line 71
    const-string p1, "Ad Show has Failed. Please call load() before calling show()."

    invoke-static {v3, v7, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v2}, Lcom/inmobi/media/z1;->d(S)V

    .line 73
    iget-object p1, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_11

    .line 74
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_11
    iget-object p1, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1d

    .line 77
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "show called before load"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 79
    :cond_12
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "swapAdUnits "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_13
    iget-object v0, p0, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    .line 81
    iget-object v2, p0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 82
    iget-object v0, p0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    iput-object v0, p0, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    .line 83
    iget-object v0, p0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    iput-object v0, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    goto :goto_3

    .line 84
    :cond_14
    iget-object v2, p0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_2

    :cond_15
    if-nez v0, :cond_16

    .line 85
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    iput-object v0, p0, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    .line 86
    iget-object v0, p0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    iput-object v0, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    .line 87
    :cond_16
    :goto_3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "displayAd "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_17
    iget-object v0, p0, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_6

    :cond_18
    check-cast v0, Lcom/inmobi/media/ec;

    .line 89
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getViewableAd()Lcom/inmobi/media/Xe;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/inmobi/media/Z;->p()Z

    move-result v2

    if-ne v2, v3, :cond_19

    .line 91
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->e()V

    .line 92
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_4

    :cond_1a
    move-object v0, v3

    .line 93
    :goto_4
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->d()Landroid/view/View;

    move-result-object v4

    .line 95
    invoke-virtual {v1, v3}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    .line 96
    iget-object v1, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/inmobi/media/M1;->F0()V

    :cond_1b
    if-nez v0, :cond_1c

    .line 97
    invoke-virtual {p1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 98
    :cond_1c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 99
    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    :goto_5
    iget-object p1, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/inmobi/media/M1;->g()V

    :cond_1d
    :goto_6
    return-void
.end method

.method public final a(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "onAdDisplayed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->a(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 10
    invoke-virtual {p0}, Lcom/inmobi/media/E1;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/media/S0;->x0()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/inmobi/ads/InMobiAudio;)V
    .locals 4

    const-string v0, "audio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "show called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 13
    invoke-virtual {p0, p1}, Lcom/inmobi/media/E1;->a(Landroid/widget/RelativeLayout;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lub/y;

    invoke-direct {v2, p0, p1}, Lub/y;-><init>(Lcom/inmobi/media/E1;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    if-eqz v0, :cond_2

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Lcom/inmobi/media/z1;->d(S)V

    .line 16
    :cond_2
    sget-object v0, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 17
    const-string v3, "Unable to show ad; SDK encountered an unexpected error"

    invoke-static {v2, v0, v3}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    const-string v3, "Show failed with unexpected error: "

    invoke-static {v0, v1, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 20
    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_3
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 22
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 23
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :goto_1
    return-void
.end method

.method public final a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 1

    const-string p1, "status"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    const-string v0, "access$getTAG$p(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "onAdLoadFailed"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1}, Lcom/inmobi/media/A5;->a()V

    :cond_1
    return-void
.end method

.method public final a(S)V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "submitAdLoadDroppedAtSDK "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/media/S0;->a(S)V

    :cond_1
    return-void
.end method

.method public final a([BLcom/inmobi/ads/controllers/PublisherCallbacks;)V
    .locals 0

    .line 1
    const-string p1, "callbacks"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 10
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onAdDismissed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(B)V

    .line 12
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "AdManager state - CREATED"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0}, Lcom/inmobi/media/A5;->a()V

    .line 14
    :cond_2
    invoke-super {p0}, Lcom/inmobi/media/we;->b()V

    return-void
.end method

.method public final b(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 5

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onAdFetchSuccess "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "adObject is null, fetch failed"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_2
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 5
    invoke-virtual {p0, v2, p1}, Lcom/inmobi/media/E1;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Ad fetch successful, calling loadIntoView()"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_4
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->b(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lub/z;

    invoke-direct {v1, p0, p1}, Lub/z;-><init>(Lcom/inmobi/media/E1;Lcom/inmobi/ads/AdMetaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    const-string v0, "adSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load 1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/media/Z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object v3

    const-string v4, "InMobi"

    invoke-virtual {p0, v4, v2, v3}, Lcom/inmobi/media/we;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/controllers/PublisherCallbacks;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v2}, Lcom/inmobi/media/S0;->e(B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {p0, v2}, Lcom/inmobi/media/we;->a(B)V

    .line 20
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v1, "AdManager state - LOADING"

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v1}, Lcom/inmobi/media/we;->d(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/inmobi/media/M1;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 23
    invoke-virtual {v0, p1}, Lcom/inmobi/media/M1;->e(Z)V

    :cond_2
    return-void
.end method

.method public final c(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 5

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "access$getTAG$p(...)"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v4, "onAdLoadSucceeded "

    .line 22
    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v0, Lcom/inmobi/media/A5;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->c(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(B)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    check-cast v0, Lcom/inmobi/media/A5;

    .line 57
    .line 58
    const-string v3, "AdManager state - CREATED"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    check-cast v0, Lcom/inmobi/media/A5;

    .line 75
    .line 76
    const-string v1, "Ad load successful, providing callback"

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Lub/w;

    .line 86
    .line 87
    invoke-direct {v1, p0, p1}, Lub/w;-><init>(Lcom/inmobi/media/E1;Lcom/inmobi/ads/AdMetaInfo;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "access$getTAG$p(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "onAdShowFailed "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v0, Lcom/inmobi/media/A5;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lub/x;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lub/x;-><init>(Lcom/inmobi/media/E1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final j()Lcom/inmobi/media/S0;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "access$getTAG$p(...)"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "shouldUseForegroundUnit "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v0, Lcom/inmobi/media/A5;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    sget-object v3, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v4, "State - "

    .line 61
    .line 62
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v2, Lcom/inmobi/media/A5;

    .line 73
    .line 74
    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v2, 0x4

    .line 84
    if-ne v1, v2, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v2, 0x7

    .line 94
    if-ne v1, v2, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const/4 v1, 0x6

    .line 104
    if-ne v0, v1, :cond_5

    .line 105
    .line 106
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    .line 110
    .line 111
    :goto_2
    return-object v0
.end method

.method public final w()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "access$getTAG$p(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "submitAdLoadCalled "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v0, Lcom/inmobi/media/A5;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->t0()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "access$getTAG$p(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "registerLifeCycleCallbacks "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v0, Lcom/inmobi/media/A5;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->H0()V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->H0()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final y()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "access$getTAG$p(...)"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "loadIntoView "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v0, Lcom/inmobi/media/A5;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/inmobi/media/Z;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "InMobi"

    .line 46
    .line 47
    invoke-virtual {p0, v3, v2}, Lcom/inmobi/media/we;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    const/16 v2, 0x8

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lcom/inmobi/media/we;->a(B)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    sget-object v3, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    check-cast v2, Lcom/inmobi/media/A5;

    .line 70
    .line 71
    const-string v1, "AdManager state - LOADING_INTO_VIEW"

    .line 72
    .line 73
    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->j0()V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void

    .line 80
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v1, "Please make an ad request first in order to start loading the ad."

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0
.end method
