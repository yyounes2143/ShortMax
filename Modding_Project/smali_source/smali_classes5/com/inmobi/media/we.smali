.class public abstract Lcom/inmobi/media/we;
.super Lcom/inmobi/media/F0;
.source "SourceFile"


# static fields
.field public static final h:Lcom/inmobi/media/ve;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Ljava/lang/String; = "we"

.field public static final j:Ljava/lang/String; = "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Ljava/lang/String; = "Ad show is already called. Please wait for the the ad to be shown."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Ljava/lang/String; = "preload() and load() cannot be called on the same instance, please use a different instance."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/lang/String; = "Please make an ad request first in order to start loading the ad."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final n:Ljava/lang/String; = "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: "
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:B

.field private b:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/inmobi/ads/controllers/PublisherCallbacks;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Lcom/inmobi/ads/AdMetaInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/inmobi/media/z5;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lcom/inmobi/ads/WatermarkData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/ve;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/we;->h:Lcom/inmobi/media/ve;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/F0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Lcom/inmobi/media/S0;Lcom/inmobi/media/we;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->b(B)V

    .line 5
    :cond_0
    iget-object p0, p1, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/A5;

    const-string v1, "callback - onAdLoadFailed"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object p0, p1, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdLoadFailed(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 7
    :cond_2
    iget-object p0, p1, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/inmobi/media/A5;

    invoke-virtual {p0}, Lcom/inmobi/media/A5;->a()V

    :cond_3
    return-void
.end method

.method public static final a(Lcom/inmobi/media/we;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "callback - onAdDismissed"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdDismissed()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p0, :cond_2

    sget-object v0, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/A5;

    const-string v1, "callback is null"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/we;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onAdDisplayed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdDisplayed(Lcom/inmobi/ads/AdMetaInfo;)V

    :cond_1
    return-void
.end method

.method public static final a(Lcom/inmobi/media/we;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onAdFetchFailed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdFetchFailed(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/inmobi/media/A5;

    invoke-virtual {p0}, Lcom/inmobi/media/A5;->a()V

    :cond_2
    return-void
.end method

.method public static final a(Lcom/inmobi/media/we;Lcom/inmobi/media/D1;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$audioStatusInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    .line 107
    const-string v2, "TAG"

    const-string v3, "callback - onAudioStatusChanged - "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    iget v3, p1, Lcom/inmobi/media/D1;->a:I

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAudioStatusChanged(Lcom/inmobi/media/D1;)V

    :cond_1
    return-void
.end method

.method public static final a(Lcom/inmobi/media/we;Lcom/inmobi/media/Yd;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    const-string v1, "TAG"

    if-nez v0, :cond_1

    .line 101
    iget-object p0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/A5;

    const-string v1, "callback is null"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    .line 102
    invoke-virtual {p1}, Lcom/inmobi/media/Yd;->c()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "callback - onAdImpression"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_2
    iget-object p0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdImpression(Lcom/inmobi/media/Yd;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/we;Ljava/lang/String;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$log"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onImraidLog"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onImraidLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final a(Lcom/inmobi/media/we;Ljava/util/Map;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onAdClicked"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdClicked(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static final a(Lcom/inmobi/media/we;[B)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onRequestPayloadCreated"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onRequestPayloadCreated([B)V

    .line 50
    :cond_1
    iget-object p0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/inmobi/media/A5;

    invoke-virtual {p0}, Lcom/inmobi/media/A5;->a()V

    :cond_2
    return-void
.end method

.method public static final b(Lcom/inmobi/media/we;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onAdWillShow"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdWillDisplay()V

    :cond_1
    return-void
.end method

.method public static final b(Lcom/inmobi/media/we;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onRequestPayloadCreationFailed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onRequestPayloadCreationFailed(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 22
    :cond_1
    iget-object p0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/inmobi/media/A5;

    invoke-virtual {p0}, Lcom/inmobi/media/A5;->a()V

    :cond_2
    return-void
.end method

.method public static final b(Lcom/inmobi/media/we;Ljava/util/Map;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$rewards"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onRewardsUnlocked"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onRewardsUnlocked(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static final c(Lcom/inmobi/media/we;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onUserLeftApplication"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onUserLeftApplication()V

    :cond_1
    return-void
.end method

.method public static synthetic r()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/inmobi/media/we;->a:B

    return-void
.end method

.method public a(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 5
    .param p1    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onAdDisplayed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-byte v0, p0, Lcom/inmobi/media/we;->a:B

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    .line 16
    iput-object p1, p0, Lcom/inmobi/media/we;->e:Lcom/inmobi/ads/AdMetaInfo;

    .line 17
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    new-instance v3, Lub/s7;

    invoke-direct {v3, p0, p1}, Lub/s7;-><init>(Lcom/inmobi/media/we;Lcom/inmobi/ads/AdMetaInfo;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    iget-object p1, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "AdManager state - DISPLAYED"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    iput-byte v2, p0, Lcom/inmobi/media/we;->a:B

    :cond_2
    return-void
.end method

.method public a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/InMobiAdRequestStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdFetchFailed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    .line 9
    iput-byte v0, p0, Lcom/inmobi/media/we;->a:B

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    new-instance v1, Lub/z7;

    invoke-direct {v1, p0, p1}, Lub/z7;-><init>(Lcom/inmobi/media/we;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/inmobi/ads/WatermarkData;)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/WatermarkData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "watermarkData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    .line 52
    const-string v2, "TAG"

    const-string v3, "setWatermark - "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcom/inmobi/ads/WatermarkData;->getWatermarkBase64EncodedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/inmobi/media/we;->g:Lcom/inmobi/ads/WatermarkData;

    return-void
.end method

.method public final a(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/controllers/PublisherCallbacks;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSignals "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->y0()V

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    .line 32
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/inmobi/media/S0;->P()Lkotlin/Unit;

    :cond_2
    return-void
.end method

.method public a(Lcom/inmobi/media/D1;)V
    .locals 2
    .param p1    # Lcom/inmobi/media/D1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "audioStatusInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    new-instance v1, Lub/t7;

    invoke-direct {v1, p0, p1}, Lub/t7;-><init>(Lcom/inmobi/media/we;Lcom/inmobi/media/D1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4
    .param p1    # Lcom/inmobi/media/S0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/InMobiAdRequestStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdLoadFailed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    return-void
.end method

.method public a(Lcom/inmobi/media/Yd;)V
    .locals 4
    .param p1    # Lcom/inmobi/media/Yd;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 98
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdImpression "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    new-instance v1, Lub/r7;

    invoke-direct {v1, p0, p1}, Lub/r7;-><init>(Lcom/inmobi/media/we;Lcom/inmobi/media/Yd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/inmobi/media/z5;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/z5;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/we;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "log"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    new-instance v1, Lub/c8;

    invoke-direct {v1, p0, p1}, Lub/c8;-><init>(Lcom/inmobi/media/we;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdInteraction "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    new-instance v1, Lub/b8;

    invoke-direct {v1, p0, p1}, Lub/b8;-><init>(Lcom/inmobi/media/we;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(S)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "submitAdLoadDroppedAtSDK "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/media/S0;->a(S)V

    :cond_1
    return-void
.end method

.method public a([B)V
    .locals 4
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRequestCreated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    new-instance v1, Lub/v7;

    invoke-direct {v1, p0, p1}, Lub/v7;-><init>(Lcom/inmobi/media/we;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a([BLcom/inmobi/ads/controllers/PublisherCallbacks;)V
    .locals 5
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/controllers/PublisherCallbacks;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->b:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 35
    const-string p1, "InMobi"

    const-string p2, "Cannot call load(byte[]) API after load() API is called"

    invoke-static {v2, p1, p2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REPETITIVE_LOAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 38
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 p2, 0x85c

    invoke-virtual {p1, p2}, Lcom/inmobi/media/S0;->a(S)V

    :cond_2
    return-void

    .line 39
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/inmobi/media/we;->b:Ljava/lang/Boolean;

    .line 40
    iput-byte v2, p0, Lcom/inmobi/media/we;->a:B

    .line 41
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/z5;)V

    .line 42
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Lcom/inmobi/media/S0;->e(B)Z

    move-result v0

    if-ne v0, v2, :cond_6

    .line 43
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "load starting. Started INTERNAL_LOAD_TIMER"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_5
    iput-object p2, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    .line 45
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Lcom/inmobi/media/S0;->a([B)V

    :cond_6
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "canRender "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    iget-byte v0, p0, Lcom/inmobi/media/we;->a:B

    const/4 v2, 0x0

    const-string v3, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: "

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p1, p2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "adload in progress"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_9

    const/16 p2, 0x851

    invoke-virtual {p1, p2}, Lcom/inmobi/media/S0;->b(S)V

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x8

    if-ne v0, v5, :cond_4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p1, p2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "ad loading into view is in progress"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_9

    const/16 p2, 0x874

    invoke-virtual {p1, p2}, Lcom/inmobi/media/S0;->b(S)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p1, p2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_5

    sget-object p2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "ad active before renderAd"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_6

    const/16 p2, 0x852

    invoke-virtual {p1, p2}, Lcom/inmobi/media/S0;->b(S)V

    .line 89
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/inmobi/media/S0;->m0()V

    .line 90
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    :cond_8
    const/4 p1, 0x7

    if-ne v0, p1, :cond_a

    move v2, v4

    :cond_9
    :goto_0
    return v2

    .line 91
    :cond_a
    iget-object p1, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_b

    sget-object p2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "ad in illegal state"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_c

    const/16 p2, 0x875

    invoke-virtual {p1, p2}, Lcom/inmobi/media/S0;->b(S)V

    .line 93
    :cond_c
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/inmobi/media/S0;->m0()V

    .line 94
    :cond_d
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 95
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Please make an ad request first in order to start loading the ad."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/controllers/PublisherCallbacks;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/controllers/PublisherCallbacks;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canProceedToLoad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {v0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->getType()B

    move-result v0

    invoke-virtual {p3}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->getType()B

    move-result p3

    if-ne v0, p3, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    sget-object p2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string p3, "TAG"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "preload() and load() cannot be called on the same instance, please use a different instance."

    invoke-static {v2, p2, p3}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_2

    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, p1, p3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 p2, 0x7d5

    invoke-virtual {p1, p2}, Lcom/inmobi/media/S0;->a(S)V

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REPETITIVE_LOAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, p3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    return v1

    .line 61
    :cond_4
    :goto_0
    iget-byte p3, p0, Lcom/inmobi/media/we;->a:B

    const/16 v0, 0x8

    const-string v3, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: "

    if-ne p3, v0, :cond_6

    .line 62
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p1, p3}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p3, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p3, :cond_5

    .line 64
    invoke-static {v3, p2}, Lcom/inmobi/media/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    check-cast p3, Lcom/inmobi/media/A5;

    invoke-virtual {p3, p1, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_b

    const/16 p2, 0x7d2

    invoke-virtual {p1, p2}, Lcom/inmobi/media/S0;->a(S)V

    goto :goto_1

    :cond_6
    if-ne p3, v2, :cond_8

    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p1, p3}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p3, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p3, :cond_7

    .line 69
    invoke-static {v3, p2}, Lcom/inmobi/media/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 70
    check-cast p3, Lcom/inmobi/media/A5;

    invoke-virtual {p3, p1, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_b

    const/16 p2, 0x7d1

    invoke-virtual {p1, p2}, Lcom/inmobi/media/S0;->a(S)V

    goto :goto_1

    :cond_8
    const/4 v0, 0x5

    if-ne p3, v0, :cond_a

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p1, p3}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p3, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p3, :cond_9

    .line 74
    invoke-static {v0, p2}, Lcom/inmobi/media/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 75
    check-cast p3, Lcom/inmobi/media/A5;

    invoke-virtual {p3, p1, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_9
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, p3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 77
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_b

    const/16 p2, 0x7d3

    invoke-virtual {p1, p2}, Lcom/inmobi/media/S0;->b(S)V

    goto :goto_1

    :cond_a
    move v1, v2

    :cond_b
    :goto_1
    return v1
.end method

.method public b()V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdDismissed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    new-instance v1, Lub/x7;

    invoke-direct {v1, p0}, Lub/x7;-><init>(Lcom/inmobi/media/we;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0}, Lcom/inmobi/media/A5;->a()V

    :cond_1
    return-void
.end method

.method public b(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    const-string v0, "TAG"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdFetchSuccess "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "AdManager state - FETCHED"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x7

    .line 9
    iput-byte p1, p0, Lcom/inmobi/media/we;->a:B

    .line 10
    invoke-virtual {p0}, Lcom/inmobi/media/we;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/inmobi/media/S0;->b(B)V

    :cond_2
    return-void
.end method

.method public b(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/InMobiAdRequestStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRequestCreationFailed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    new-instance v1, Lub/d8;

    invoke-direct {v1, p0, p1}, Lub/d8;-><init>(Lcom/inmobi/media/we;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/inmobi/ads/WatermarkData;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/WatermarkData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/we;->g:Lcom/inmobi/ads/WatermarkData;

    return-void
.end method

.method public final b(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/controllers/PublisherCallbacks;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    return-void
.end method

.method public final b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 5
    .param p1    # Lcom/inmobi/media/S0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/InMobiAdRequestStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onLoadFailure "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "AdManager state - LOAD_FAILED"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 5
    iput-byte v0, p0, Lcom/inmobi/media/we;->a:B

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    new-instance v1, Lub/u7;

    invoke-direct {v1, p1, p0, p2}, Lub/u7;-><init>(Lcom/inmobi/media/S0;Lcom/inmobi/media/we;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rewards"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdRewardActionCompleted "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    new-instance v1, Lub/y7;

    invoke-direct {v1, p0, p1}, Lub/y7;-><init>(Lcom/inmobi/media/we;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdLoadSucceeded "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/inmobi/media/we;->e:Lcom/inmobi/ads/AdMetaInfo;

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/inmobi/media/S0;->b(B)V

    :cond_1
    return-void
.end method

.method public final d(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/we;->e:Lcom/inmobi/ads/AdMetaInfo;

    .line 2
    .line 3
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v2, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "onAdWillShow "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v0, Lcom/inmobi/media/A5;

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-byte v0, p0, Lcom/inmobi/media/we;->a:B

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    if-eq v0, v2, :cond_2

    .line 35
    .line 36
    const/4 v3, 0x5

    .line 37
    if-eq v0, v3, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance v3, Lub/a8;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Lub/a8;-><init>(Lcom/inmobi/media/we;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    sget-object v3, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast v0, Lcom/inmobi/media/A5;

    .line 59
    .line 60
    const-string v1, "AdManager state - WILL_DISPLAY"

    .line 61
    .line 62
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iput-byte v2, p0, Lcom/inmobi/media/we;->a:B

    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "onUserLeftApplication "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v0, Lcom/inmobi/media/A5;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance v1, Lub/w7;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lub/w7;-><init>(Lcom/inmobi/media/we;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public abstract j()Lcom/inmobi/media/S0;
.end method

.method public final k()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->e:Lcom/inmobi/ads/AdMetaInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/ads/AdMetaInfo;->getBidInfo()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-object v0
.end method

.method public final l()Lcom/inmobi/ads/controllers/PublisherCallbacks;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->e:Lcom/inmobi/ads/AdMetaInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/ads/AdMetaInfo;->getCreativeID()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public final n()Lcom/inmobi/ads/AdMetaInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->e:Lcom/inmobi/ads/AdMetaInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    :goto_0
    return v0
.end method

.method public final p()Lcom/inmobi/media/z5;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/inmobi/media/we;->a:B

    .line 2
    .line 3
    return v0
.end method

.method public final s()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->d:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Lcom/inmobi/ads/WatermarkData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->g:Lcom/inmobi/ads/WatermarkData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->b:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->c:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->getType()B

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method public w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/we;->f:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/inmobi/media/we;->i:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "submitAdLoadCalled "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v0, Lcom/inmobi/media/A5;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->j()Lcom/inmobi/media/S0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

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
