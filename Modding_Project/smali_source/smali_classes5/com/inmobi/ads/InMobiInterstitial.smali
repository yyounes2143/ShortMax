.class public final Lcom/inmobi/ads/InMobiInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiInterstitial$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/media/x5;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public final c:Ljava/lang/ref/WeakReference;

.field public final d:Lcom/inmobi/media/Wa;

.field public final e:Lcom/inmobi/ads/InMobiInterstitial$a;

.field public final f:Lcom/inmobi/ads/f;

.field public mAdManager:Lcom/inmobi/media/o6;

.field public mPubListener:Lcom/inmobi/media/h6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/x5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/x5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/ads/InMobiInterstitial;->Companion:Lcom/inmobi/media/x5;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/listeners/InterstitialAdEventListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/inmobi/ads/listeners/InterstitialAdEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/inmobi/media/Wa;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/inmobi/media/Wa;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    .line 20
    .line 21
    new-instance v1, Lcom/inmobi/ads/InMobiInterstitial$a;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiInterstitial$a;-><init>(Lcom/inmobi/ads/InMobiInterstitial;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->e:Lcom/inmobi/ads/InMobiInterstitial$a;

    .line 27
    .line 28
    new-instance v1, Lcom/inmobi/ads/f;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/inmobi/ads/f;-><init>(Lcom/inmobi/ads/InMobiInterstitial;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->f:Lcom/inmobi/ads/f;

    .line 34
    .line 35
    invoke-static {}, Lcom/inmobi/media/Uc;->q()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "getApplicationContext(...)"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->a:Landroid/content/Context;

    .line 51
    .line 52
    iput-wide p2, v0, Lcom/inmobi/media/Wa;->a:J

    .line 53
    .line 54
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lcom/inmobi/ads/InMobiInterstitial;->c:Ljava/lang/ref/WeakReference;

    .line 60
    .line 61
    new-instance p1, Lcom/inmobi/media/i6;

    .line 62
    .line 63
    invoke-direct {p1, p4}, Lcom/inmobi/media/i6;-><init>(Lcom/inmobi/ads/listeners/InterstitialAdEventListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/InMobiInterstitial;->setMPubListener$media_release(Lcom/inmobi/media/h6;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/inmobi/media/o6;

    .line 70
    .line 71
    invoke-direct {p1}, Lcom/inmobi/media/o6;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/InMobiInterstitial;->setMAdManager$media_release(Lcom/inmobi/media/o6;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    new-instance p1, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;

    .line 79
    .line 80
    const-string p2, "TAG"

    .line 81
    .line 82
    const-string p3, "InMobiInterstitial"

    .line 83
    .line 84
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, p3}, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method

.method public static final synthetic access$getMContext$p(Lcom/inmobi/ads/InMobiInterstitial;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/inmobi/ads/InMobiInterstitial;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMPubSettings$p(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/media/Wa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "InMobiInterstitial"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setMDidPubCalledLoad$p(Lcom/inmobi/ads/InMobiInterstitial;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/ads/InMobiInterstitial;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic getPreloadManager$annotations()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final disableHardwareAcceleration()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/inmobi/media/Wa;->d:Z

    .line 5
    .line 6
    return-void
.end method

.method public final getMAdManager$media_release()Lcom/inmobi/media/o6;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mAdManager:Lcom/inmobi/media/o6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mAdManager"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMPubListener$media_release()Lcom/inmobi/media/h6;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPubListener:Lcom/inmobi/media/h6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mPubListener"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getPreloadManager()Lcom/inmobi/ads/PreloadManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->f:Lcom/inmobi/ads/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSignals()V
    .locals 5
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    .line 2
    .line 3
    const-string v1, "AB"

    .line 4
    .line 5
    iput-object v1, v0, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/inmobi/ads/InMobiInterstitial;->a:Landroid/content/Context;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v2, "mContext"

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    const-string v4, "getToken"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/Wa;Landroid/content/Context;ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->e:Lcom/inmobi/ads/InMobiInterstitial$a;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/inmobi/media/we;->a(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final isReady()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/o6;->B()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/inmobi/media/o6;->E()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return v0
.end method

.method public final load()V
    .locals 10
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x1

    .line 8
    :try_start_0
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->b:Z

    .line 9
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    const-string v2, "NonAB"

    iput-object v2, v1, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "mContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    move-object v5, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :goto_0
    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 11
    invoke-static/range {v3 .. v9}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;Lcom/inmobi/media/Wa;Landroid/content/Context;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 13
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 14
    invoke-static {v1}, Lcom/inmobi/media/U3;->b(Landroid/content/Context;)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->loadAdUnit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 16
    :goto_1
    const-string v2, "InMobiInterstitial"

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v4, "Unable to load ad; SDK encountered an unexpected error"

    invoke-static {v0, v2, v4}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    move-result-object v0

    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Lcom/inmobi/media/we;->a(S)V

    .line 20
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/media/o6;->j()Lcom/inmobi/media/S0;

    move-result-object v2

    .line 22
    new-instance v3, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 23
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/we;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 24
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 25
    const-string v0, "event"

    invoke-static {v1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :goto_2
    return-void
.end method

.method public final load([B)V
    .locals 9
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->b:Z

    .line 2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    const-string v1, "AB"

    iput-object v1, v0, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v4, v0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;Lcom/inmobi/media/Wa;Landroid/content/Context;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lcom/inmobi/media/U3;->b(Landroid/content/Context;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->e:Lcom/inmobi/ads/InMobiInterstitial$a;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/we;->a([BLcom/inmobi/ads/controllers/PublisherCallbacks;)V

    return-void
.end method

.method public final loadAdUnit()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->e:Lcom/inmobi/ads/InMobiInterstitial$a;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/inmobi/media/o6;->c(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setContentUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "contentUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/inmobi/media/Wa;->f:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "tp"

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/inmobi/media/Vc;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "tp-v"

    .line 15
    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/inmobi/media/Vc;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    .line 26
    .line 27
    iput-object p1, v0, Lcom/inmobi/media/Wa;->c:Ljava/util/Map;

    .line 28
    .line 29
    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->d:Lcom/inmobi/media/Wa;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/inmobi/media/Wa;->b:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public final setListener(Lcom/inmobi/ads/listeners/InterstitialAdEventListener;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/listeners/InterstitialAdEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/inmobi/media/i6;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/inmobi/media/i6;-><init>(Lcom/inmobi/ads/listeners/InterstitialAdEventListener;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiInterstitial;->setMPubListener$media_release(Lcom/inmobi/media/h6;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setMAdManager$media_release(Lcom/inmobi/media/o6;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/o6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mAdManager:Lcom/inmobi/media/o6;

    .line 7
    .line 8
    return-void
.end method

.method public final setMPubListener$media_release(Lcom/inmobi/media/h6;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/h6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPubListener:Lcom/inmobi/media/h6;

    .line 7
    .line 8
    return-void
.end method

.method public final setWatermarkData(Lcom/inmobi/ads/WatermarkData;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/WatermarkData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "watermarkData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/ads/WatermarkData;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final show()V
    .locals 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    const-string v0, "TAG"

    .line 2
    .line 3
    const-string v1, "InMobiInterstitial"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    iget-boolean v3, p0, Lcom/inmobi/ads/InMobiInterstitial;->b:Z

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "load() must be called before trying to show the ad"

    .line 14
    .line 15
    invoke-static {v2, v1, v3}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getMAdManager$media_release()Lcom/inmobi/media/o6;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/inmobi/media/o6;->F()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v4, "Unable to show ad; SDK encountered an unexpected error"

    .line 33
    .line 34
    invoke-static {v2, v1, v4}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 41
    .line 42
    const-string v0, "event"

    .line 43
    .line 44
    invoke-static {v3, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method
