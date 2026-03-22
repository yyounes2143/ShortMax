.class public final Lcom/inmobi/media/V8;
.super Lcom/inmobi/media/we;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNativeUnifiedAdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeUnifiedAdManager.kt\ncom/inmobi/ads/controllers/NativeUnifiedAdManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1#2:213\n*E\n"
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Ljava/lang/String;

.field private q:Lcom/inmobi/media/c8;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/controllers/PublisherCallbacks;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    const-string v0, "InMobi"

    .line 10
    .line 11
    iput-object v0, p0, Lcom/inmobi/media/V8;->o:Ljava/lang/String;

    .line 12
    .line 13
    const-class v0, Lcom/inmobi/media/V8;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/inmobi/media/we;->b(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic A(Lcom/inmobi/media/V8;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/inmobi/media/V8;->a(Lcom/inmobi/media/V8;)V

    return-void
.end method

.method public static synthetic B(Lcom/inmobi/media/V8;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/inmobi/media/V8;->a(Lcom/inmobi/media/V8;Z)V

    return-void
.end method

.method public static synthetic C(Lcom/inmobi/media/V8;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/inmobi/media/V8;->a(Lcom/inmobi/media/V8;Lcom/inmobi/ads/AdMetaInfo;)V

    return-void
.end method

.method private static final a(Lcom/inmobi/media/V8;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onAdImpressed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdImpressed()V

    :cond_1
    return-void
.end method

.method private static final a(Lcom/inmobi/media/V8;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onAdFetchSuccessful"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdFetchSuccessful(Lcom/inmobi/ads/AdMetaInfo;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/inmobi/media/V8;Lcom/inmobi/media/Wa;Landroid/content/Context;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 1
    const-string p4, "native"

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/V8;->a(Lcom/inmobi/media/Wa;Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method private static final a(Lcom/inmobi/media/V8;Z)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callback -onAudioStateChanged - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAudioStateChanged(Z)V

    :cond_1
    return-void
.end method

.method private static final b(Lcom/inmobi/media/V8;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onVideoCompleted"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onVideoCompleted()V

    :cond_1
    return-void
.end method

.method private static final b(Lcom/inmobi/media/V8;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onAdLoadSucceeded"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdLoadSucceeded(Lcom/inmobi/ads/AdMetaInfo;)V

    :cond_1
    return-void
.end method

.method private static final c(Lcom/inmobi/media/V8;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onVideoSkipped"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onVideoSkipped()V

    :cond_1
    return-void
.end method

.method public static synthetic x(Lcom/inmobi/media/V8;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/inmobi/media/V8;->b(Lcom/inmobi/media/V8;Lcom/inmobi/ads/AdMetaInfo;)V

    return-void
.end method

.method public static synthetic y(Lcom/inmobi/media/V8;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/inmobi/media/V8;->b(Lcom/inmobi/media/V8;)V

    return-void
.end method

.method public static synthetic z(Lcom/inmobi/media/V8;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/inmobi/media/V8;->c(Lcom/inmobi/media/V8;)V

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/inmobi/media/x;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/inmobi/media/p8;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/inmobi/media/p8;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/inmobi/media/o8;->b:Lcom/inmobi/media/n8;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, v0, Lcom/inmobi/media/n8;->c:Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public final B()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/inmobi/media/x;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/inmobi/media/p8;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/inmobi/media/p8;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/inmobi/media/o8;->b:Lcom/inmobi/media/n8;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, v0, Lcom/inmobi/media/n8;->f:Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public final C()F
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/inmobi/media/x;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/p8;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/inmobi/media/p8;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/inmobi/media/o8;->b:Lcom/inmobi/media/n8;

    if-eqz v0, :cond_1

    .line 7
    iget v0, v0, Lcom/inmobi/media/n8;->e:F

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final D()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/inmobi/media/x;->getDataModel()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v2, v0, Lcom/inmobi/media/p8;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    check-cast v0, Lcom/inmobi/media/p8;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, v0, Lcom/inmobi/media/o8;->b:Lcom/inmobi/media/n8;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v1, v0, Lcom/inmobi/media/n8;->a:Ljava/lang/String;

    .line 35
    .line 36
    :cond_1
    return-object v1
.end method

.method public final E()Lorg/json/JSONObject;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/inmobi/media/x;->getDataModel()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v2, v0, Lcom/inmobi/media/p8;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    check-cast v0, Lcom/inmobi/media/p8;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, v0, Lcom/inmobi/media/o8;->a:Lorg/json/JSONObject;

    .line 31
    .line 32
    :cond_1
    return-object v1
.end method

.method public final F()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final G()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/inmobi/media/x;->getDataModel()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/inmobi/media/p8;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/inmobi/media/p8;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lcom/inmobi/media/o8;->b:Lcom/inmobi/media/n8;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-boolean v0, v0, Lcom/inmobi/media/n8;->g:Z

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_1
    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final I()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/inmobi/media/a9;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final J()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->u()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/inmobi/media/V8;->o:Ljava/lang/String;

    .line 20
    .line 21
    check-cast v0, Lcom/inmobi/media/A5;

    .line 22
    .line 23
    const-string v2, "Cannot call load() API after calling load(byte[])"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(Ljava/lang/Boolean;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lcom/inmobi/media/V8;->o:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p0, v1, v0, v2}, Lcom/inmobi/media/we;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/controllers/PublisherCallbacks;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Lcom/inmobi/media/S0;->e(B)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ne v0, v1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v2, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    .line 76
    .line 77
    const-string v3, "TAG"

    .line 78
    .line 79
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast v0, Lcom/inmobi/media/A5;

    .line 83
    .line 84
    const-string v3, "internal load timer started"

    .line 85
    .line 86
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {p0, v1}, Lcom/inmobi/media/we;->a(B)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/inmobi/media/c8;->c0()V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method

.method public final K()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v3, "pause called"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v2, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const-string v3, "c8"

    .line 30
    .line 31
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v2, Lcom/inmobi/media/A5;

    .line 35
    .line 36
    const-string v1, "onPause"

    .line 37
    .line 38
    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x4

    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    instance-of v1, v1, Landroid/app/Activity;

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    instance-of v1, v0, Lcom/inmobi/media/T7;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    check-cast v0, Lcom/inmobi/media/T7;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 68
    :goto_0
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/inmobi/media/T7;->l()V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method public final L()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "reportAdClickAndOpenLandingPage"

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 22
    .line 23
    if-eqz v0, :cond_7

    .line 24
    .line 25
    iget-object v3, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 26
    .line 27
    const-string v4, "c8"

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v3, Lcom/inmobi/media/A5;

    .line 35
    .line 36
    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_6

    .line 44
    .line 45
    instance-of v3, v1, Lcom/inmobi/media/T7;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    check-cast v1, Lcom/inmobi/media/T7;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object v1, v5

    .line 54
    :goto_0
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-object v3, v1, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move-object v3, v5

    .line 60
    :goto_1
    if-eqz v3, :cond_7

    .line 61
    .line 62
    iget-object v3, v3, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    iget-object v3, v3, Lcom/inmobi/media/o8;->c:Lcom/inmobi/media/d8;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    move-object v3, v5

    .line 70
    :goto_2
    if-eqz v3, :cond_7

    .line 71
    .line 72
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    check-cast v0, Lcom/inmobi/media/A5;

    .line 80
    .line 81
    const-string v2, "reporting ad click and opening landing page"

    .line 82
    .line 83
    invoke-virtual {v0, v4, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {v1, v5, v3}, Lcom/inmobi/media/T7;->a(Landroid/view/View;Lcom/inmobi/media/d8;)V

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    invoke-virtual {v1, v3, v0}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 95
    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    check-cast v0, Lcom/inmobi/media/A5;

    .line 102
    .line 103
    const-string v1, "container is null. ignoring"

    .line 104
    .line 105
    invoke-virtual {v0, v4, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    :goto_3
    return-void
.end method

.method public final M()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v3, "resume called"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 22
    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    iget-object v2, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 26
    .line 27
    const-string v3, "onResume"

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-string v4, "c8"

    .line 32
    .line 33
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v2, Lcom/inmobi/media/A5;

    .line 37
    .line 38
    invoke-virtual {v2, v4, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v4, 0x4

    .line 46
    if-ne v2, v4, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    instance-of v2, v2, Landroid/app/Activity;

    .line 53
    .line 54
    if-nez v2, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    instance-of v2, v0, Lcom/inmobi/media/T7;

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    check-cast v0, Lcom/inmobi/media/T7;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 68
    :goto_0
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-object v2, v0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    iget-object v4, v0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    check-cast v2, Lcom/inmobi/media/A5;

    .line 80
    .line 81
    invoke-virtual {v2, v4, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    const/4 v1, 0x0

    .line 85
    iput-boolean v1, v0, Lcom/inmobi/media/T7;->u:Z

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Lcom/inmobi/media/T7;->a(Landroid/view/View;)Lcom/inmobi/media/T8;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/inmobi/media/T8;->c()V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/media/T7;->p()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/inmobi/media/T7;->d()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    iget-object v0, v0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/Xe;->a(Landroid/content/Context;B)V

    .line 114
    .line 115
    .line 116
    :cond_5
    return-void
.end method

.method public final N()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "takeAction"

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->G()Lcom/inmobi/media/T7;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    iget-object v3, v0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v4, v0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast v3, Lcom/inmobi/media/A5;

    .line 41
    .line 42
    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v1, v0, Lcom/inmobi/media/T7;->E:Lcom/inmobi/media/d8;

    .line 46
    .line 47
    iget-object v2, v0, Lcom/inmobi/media/T7;->F:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, v0, Lcom/inmobi/media/T7;->G:Landroid/content/Intent;

    .line 50
    .line 51
    iget-object v4, v0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroid/content/Context;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    iget-object v3, v1, Lcom/inmobi/media/d8;->g:Ljava/lang/String;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    if-eqz v3, :cond_4

    .line 71
    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    sget-object v0, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    .line 75
    .line 76
    invoke-virtual {v0, v4, v3}, Lcom/inmobi/media/Uc;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    iget-object v1, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    check-cast v0, Lcom/inmobi/media/A5;

    .line 92
    .line 93
    const-string v2, "InMobiNative is not initialized. Ignoring takeAction"

    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/Wa;Landroid/content/Context;)V
    .locals 8
    .param p1    # Lcom/inmobi/media/Wa;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pubSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    if-nez v0, :cond_0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 34
    invoke-static/range {v1 .. v7}, Lcom/inmobi/media/V8;->a(Lcom/inmobi/media/V8;Lcom/inmobi/media/Wa;Landroid/content/Context;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "showOnLockScreen"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p1, Lcom/inmobi/media/c8;->O:Z

    :cond_2
    return-void
.end method

.method public final a(Lcom/inmobi/media/Wa;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p1    # Lcom/inmobi/media/Wa;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pubSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "logType"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    const-string v2, "others"

    const-string v3, "activity"

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/inmobi/media/X;

    const-string v4, "native"

    invoke-direct {v1, v4}, Lcom/inmobi/media/X;-><init>(Ljava/lang/String;)V

    .line 4
    iget-wide v4, p1, Lcom/inmobi/media/Wa;->a:J

    invoke-virtual {v1, v4, v5}, Lcom/inmobi/media/X;->a(J)Lcom/inmobi/media/X;

    move-result-object v1

    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v2, v3

    .line 7
    :cond_0
    invoke-virtual {v1, v2}, Lcom/inmobi/media/X;->d(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 8
    iget-object v1, p1, Lcom/inmobi/media/Wa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/X;->c(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/inmobi/media/Wa;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/X;->a(Ljava/util/Map;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 10
    iget-boolean v1, p1, Lcom/inmobi/media/Wa;->d:Z

    invoke-virtual {v0, v1}, Lcom/inmobi/media/X;->a(Z)Lcom/inmobi/media/X;

    move-result-object v0

    .line 11
    iget-object v1, p1, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/X;->e(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 12
    iget-object v1, p1, Lcom/inmobi/media/Wa;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/X;->b(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/inmobi/media/X;->a()Lcom/inmobi/media/Z;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/inmobi/media/c8;

    invoke-direct {v1, p2, v0, p0}, Lcom/inmobi/media/c8;-><init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/V8;)V

    iput-object v1, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1, p2}, Lcom/inmobi/media/c8;->a(Landroid/content/Context;)V

    .line 16
    iget-object v1, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    if-eqz v1, :cond_3

    .line 17
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_2

    move-object v2, v3

    .line 19
    :cond_2
    invoke-virtual {v1, v2}, Lcom/inmobi/media/S0;->c(Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 20
    invoke-virtual {p0}, Lcom/inmobi/media/we;->w()V

    .line 21
    :cond_4
    iget-object p2, p1, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    const-string p3, "TAG"

    if-eqz p2, :cond_8

    .line 22
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0}, Lcom/inmobi/media/A5;->a()V

    :cond_5
    const/4 v0, 0x0

    .line 23
    invoke-static {p4, p2, v0}, Lcom/inmobi/media/Cb;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/inmobi/media/A5;

    move-result-object p2

    .line 24
    invoke-virtual {p0, p2}, Lcom/inmobi/media/we;->a(Lcom/inmobi/media/z5;)V

    .line 25
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 26
    iget-object p4, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    if-eqz p4, :cond_6

    invoke-virtual {p4, p2}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/z5;)V

    .line 27
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p4, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/A5;

    const-string v0, "adding mNativeAdUnit to referenceTracker"

    invoke-virtual {p2, p4, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_7
    iget-object p2, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/inmobi/media/Cb;->a(Ljava/lang/Object;Lcom/inmobi/media/z5;)V

    .line 29
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p4, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/A5;

    const-string p3, "load called"

    invoke-virtual {p2, p4, p3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_9
    iget-object p2, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    if-eqz p2, :cond_a

    iget-object p1, p1, Lcom/inmobi/media/Wa;->c:Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/inmobi/media/S0;->a(Ljava/util/Map;)V

    :cond_a
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lub/m2;

    invoke-direct {v1, p0, p1}, Lub/m2;-><init>(Lcom/inmobi/media/V8;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "onAdFetchSuccess"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/we;->d(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 3
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 4
    iget-object v2, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "adunit is null. load failed."

    invoke-virtual {p1, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/inmobi/media/we;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v2}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    move-result-object v2

    if-nez v2, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "adObject is null. load failed"

    invoke-virtual {p1, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    invoke-virtual {p0, v3, v0}, Lcom/inmobi/media/we;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->b(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 11
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lub/q2;

    invoke-direct {v2, p0, p1}, Lub/q2;-><init>(Lcom/inmobi/media/V8;Lcom/inmobi/ads/AdMetaInfo;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    invoke-virtual {p0}, Lcom/inmobi/media/V8;->F()Z

    move-result p1

    if-nez p1, :cond_6

    .line 13
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "ad is ready. start ad render"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/inmobi/media/c8;->j0()V

    :cond_6
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lub/o2;

    invoke-direct {v1, p0}, Lub/o2;-><init>(Lcom/inmobi/media/V8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "onAdLoadSucceeded"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->c(Lcom/inmobi/ads/AdMetaInfo;)V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(B)V

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "AdManager state - LOADED"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lub/p2;

    invoke-direct {v1, p0, p1}, Lub/p2;-><init>(Lcom/inmobi/media/V8;Lcom/inmobi/ads/AdMetaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 3

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
    iget-object v1, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "TAG"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v2, "onAdShowFailed"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast v0, Lcom/inmobi/media/A5;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/inmobi/media/A5;->a()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lub/n2;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lub/n2;-><init>(Lcom/inmobi/media/V8;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lub/l2;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lub/l2;-><init>(Lcom/inmobi/media/V8;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public j()Lcom/inmobi/media/S0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/V8;->p:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "destroy called"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/c8;->D0()V

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0}, Lcom/inmobi/media/A5;->a()V

    :cond_2
    return-void
.end method

.method public final y()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/inmobi/media/x;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/inmobi/media/p8;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/inmobi/media/p8;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/inmobi/media/o8;->b:Lcom/inmobi/media/n8;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, v0, Lcom/inmobi/media/n8;->d:Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public final z()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/V8;->q:Lcom/inmobi/media/c8;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/inmobi/media/x;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/inmobi/media/p8;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/inmobi/media/p8;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/p8;->p:Lcom/inmobi/media/o8;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/inmobi/media/o8;->b:Lcom/inmobi/media/n8;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, v0, Lcom/inmobi/media/n8;->b:Ljava/lang/String;

    :cond_1
    return-object v1
.end method
