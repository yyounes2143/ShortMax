.class public final Lcom/inmobi/ads/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/ads/PreloadManager;


# instance fields
.field public final a:Lcom/inmobi/media/n6;

.field public final synthetic b:Lcom/inmobi/ads/InMobiInterstitial;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiInterstitial;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/inmobi/media/n6;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/inmobi/media/n6;-><init>(Lcom/inmobi/ads/InMobiInterstitial;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/media/n6;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final load()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiInterstitial;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/media/o6;->D()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-static {}, Lcom/inmobi/ads/InMobiInterstitial;->access$getTAG$cp()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "access$getTAG$cp(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-static {v2, v1, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiInterstitial;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->getMPubListener$media_release()Lcom/inmobi/media/h6;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiInterstitial;

    .line 36
    .line 37
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 38
    .line 39
    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 40
    .line 41
    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/z;->a(Ljava/lang/Object;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final preload()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiInterstitial;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$setMDidPubCalledLoad$p(Lcom/inmobi/ads/InMobiInterstitial;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiInterstitial;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$getMPubSettings$p(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/media/Wa;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Preload"

    .line 14
    .line 15
    iput-object v1, v0, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiInterstitial;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiInterstitial;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$getMPubSettings$p(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/media/Wa;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiInterstitial;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$getMContext$p(Lcom/inmobi/ads/InMobiInterstitial;)Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const-string v0, "mContext"

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    :cond_0
    move-object v3, v0

    .line 44
    const/16 v6, 0xc

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-static/range {v1 .. v7}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;Lcom/inmobi/media/Wa;Landroid/content/Context;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiInterstitial;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/media/n6;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/inmobi/media/o6;->c(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
