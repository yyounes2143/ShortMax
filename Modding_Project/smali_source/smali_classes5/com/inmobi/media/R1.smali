.class public final Lcom/inmobi/media/R1;
.super Lcom/inmobi/media/we;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBannerUnifiedAdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerUnifiedAdManager.kt\ncom/inmobi/ads/controllers/BannerUnifiedAdManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n1#2:443\n*E\n"
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Ljava/lang/String;

.field private q:Lcom/inmobi/media/M1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Lcom/inmobi/media/M1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lcom/inmobi/media/M1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Lcom/inmobi/media/M1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/we;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "InMobi"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/inmobi/media/R1;->o:Ljava/lang/String;

    .line 7
    .line 8
    const-class v0, Lcom/inmobi/media/R1;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private final I()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

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
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "TAG"

    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "shouldUseForegroundUnit "

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v4, " state - "

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v1, Lcom/inmobi/media/A5;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x4

    .line 62
    if-ne v1, v2, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x7

    .line 72
    if-ne v1, v2, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x6

    .line 82
    if-ne v0, v1, :cond_4

    .line 83
    .line 84
    :goto_1
    const/4 v0, 0x1

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    const/4 v0, 0x0

    .line 87
    :goto_2
    return v0
.end method

.method private final J()V
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
    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "TAG"

    .line 10
    .line 11
    const-string v3, "submitAdShowFail "

    .line 12
    .line 13
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/R1;->j()Lcom/inmobi/media/S0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x8bf

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/inmobi/media/S0;->c(S)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private static final a(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    .line 112
    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 114
    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private static final a(Lcom/inmobi/media/R1;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/S0;->a(IZ)V

    :cond_0
    return-void
.end method

.method private static final a(Lcom/inmobi/media/R1;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "callback - onAdFetchSuccessful"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdFetchSuccessful(Lcom/inmobi/ads/AdMetaInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "callback null"

    invoke-virtual {p1, p0, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final b(Landroid/widget/RelativeLayout;)V
    .locals 5

    .line 21
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 22
    const-string v2, "TAG"

    const-string v3, "displayInternal "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v2

    .line 23
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-nez v0, :cond_1

    return-void

    .line 25
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/ec;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lcom/inmobi/media/ec;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 26
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getViewableAd()Lcom/inmobi/media/Xe;

    move-result-object v1

    .line 27
    iget-object v3, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/inmobi/media/Z;->p()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 28
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->e()V

    .line 29
    :cond_4
    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->d()Landroid/view/View;

    move-result-object v3

    .line 30
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-virtual {v1, v4}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 33
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-nez v2, :cond_6

    .line 34
    invoke-virtual {p1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 35
    :cond_6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 36
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method private static final b(Lcom/inmobi/media/R1;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback - onAdLoadSucceeded"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdLoadSucceeded(Lcom/inmobi/ads/AdMetaInfo;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/16 p1, 0x888

    invoke-virtual {p0, p1}, Lcom/inmobi/media/R1;->b(S)V

    :cond_2
    return-void
.end method

.method public static synthetic x(Lcom/inmobi/media/R1;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;I)V

    return-void
.end method

.method public static synthetic y(Lcom/inmobi/media/R1;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/inmobi/media/R1;->b(Lcom/inmobi/media/R1;Lcom/inmobi/ads/AdMetaInfo;)V

    return-void
.end method

.method public static synthetic z(Lcom/inmobi/media/R1;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;Lcom/inmobi/ads/AdMetaInfo;)V

    return-void
.end method


# virtual methods
.method public final A()I
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
    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "TAG"

    .line 10
    .line 11
    const-string v3, "defaultRefreshInterval "

    .line 12
    .line 13
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/R1;->j()Lcom/inmobi/media/S0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->j()Lcom/inmobi/commons/core/configs/AdConfig;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getDefaultRefreshInterval()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, -0x1

    .line 40
    :goto_0
    return v0
.end method

.method public final B()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 11
    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 23
    .line 24
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 35
    .line 36
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 47
    .line 48
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->E0()Z

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 71
    .line 72
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->E0()Z

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 95
    .line 96
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->E0()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0
.end method

.method public final C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/media/h;->p()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "audio"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final E()V
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
    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "TAG"

    .line 10
    .line 11
    const-string v3, "pause "

    .line 12
    .line 13
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->F0()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final F()V
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
    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "TAG"

    .line 10
    .line 11
    const-string v3, "registerLifeCycleCallbacks "

    .line 12
    .line 13
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->H0()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->H0()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public final G()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

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
    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "TAG"

    .line 10
    .line 11
    const-string v3, "render "

    .line 12
    .line 13
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v1, p0, Lcom/inmobi/media/R1;->o:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/inmobi/media/Z;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0, v1, v2}, Lcom/inmobi/media/we;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/inmobi/media/we;->v()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-virtual {v1, v2}, Lcom/inmobi/media/S0;->e(B)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    const/16 v1, 0x8

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/inmobi/media/we;->a(B)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->j0()V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v1, "Please make an ad request first in order to start loading the ad."

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public final H()V
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
    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "TAG"

    .line 10
    .line 11
    const-string v3, "resume "

    .line 12
    .line 13
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->G0()V

    .line 27
    .line 28
    .line 29
    :cond_1
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
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "TAG"

    .line 10
    .line 11
    const-string v3, "swapAdUnits "

    .line 12
    .line 13
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 67
    .line 68
    :cond_3
    :goto_0
    return-void
.end method

.method public final L()V
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
    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "TAG"

    .line 10
    .line 11
    const-string v3, "unregisterLifeCycleCallbacks "

    .line 12
    .line 13
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->J0()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->J0()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public final a(II)I
    .locals 4

    .line 118
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 119
    const-string v2, "TAG"

    const-string v3, "getRefreshInterval "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v2

    .line 120
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->j()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getMinimumRefreshInterval()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getMinimumRefreshInterval()I

    move-result p1

    :cond_1
    return p1

    :cond_2
    return p2
.end method

.method public a(IILcom/inmobi/media/ec;)V
    .locals 4
    .param p3    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 39
    const-string v3, "onShowNextPodAd "

    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v3

    .line 40
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/media/F0;->a(IILcom/inmobi/media/ec;)V

    .line 42
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 43
    const-string v3, "on Show next pod ad index: "

    invoke-static {v2, v1, v3, p1}, Lcom/inmobi/media/X8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 44
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 45
    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v0

    :goto_0
    instance-of v1, p3, Lcom/inmobi/ads/InMobiBanner;

    if-eqz v1, :cond_3

    move-object v0, p3

    check-cast v0, Lcom/inmobi/ads/InMobiBanner;

    :cond_3
    if-eqz v0, :cond_5

    .line 46
    iget-object p3, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-eqz p3, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p3, p2, v1}, Lcom/inmobi/media/S0;->b(IZ)V

    .line 47
    :cond_4
    invoke-direct {p0, v0}, Lcom/inmobi/media/R1;->b(Landroid/widget/RelativeLayout;)V

    .line 48
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lub/r1;

    invoke-direct {v0, p0, p2}, Lub/r1;-><init>(Lcom/inmobi/media/R1;I)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 49
    :cond_5
    iget-object p3, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-eqz p3, :cond_6

    invoke-virtual {p3, p2}, Lcom/inmobi/media/S0;->g(I)V

    .line 50
    :cond_6
    iget-object p3, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-eqz p3, :cond_8

    invoke-virtual {p3, p2, p1}, Lcom/inmobi/media/S0;->b(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 51
    :catch_0
    iget-object p3, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p2}, Lcom/inmobi/media/S0;->g(I)V

    .line 52
    :cond_7
    iget-object p3, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-eqz p3, :cond_8

    invoke-virtual {p3, p2, p1}, Lcom/inmobi/media/S0;->b(IZ)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/inmobi/media/Wa;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/media/Wa;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pubSettings"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSize"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "logType"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/inmobi/media/X;

    const-string v3, "banner"

    invoke-direct {v1, v3}, Lcom/inmobi/media/X;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5
    const-string v0, "activity"

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "others"

    .line 7
    :goto_0
    invoke-virtual {v1, v0}, Lcom/inmobi/media/X;->d(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 8
    iget-wide v3, p2, Lcom/inmobi/media/Wa;->a:J

    invoke-virtual {v0, v3, v4}, Lcom/inmobi/media/X;->a(J)Lcom/inmobi/media/X;

    move-result-object v0

    .line 9
    iget-object v1, p2, Lcom/inmobi/media/Wa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/X;->c(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 10
    iget-object v1, p2, Lcom/inmobi/media/Wa;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/X;->a(Ljava/util/Map;)Lcom/inmobi/media/X;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p3}, Lcom/inmobi/media/X;->a(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object p3

    .line 12
    iget-boolean v0, p2, Lcom/inmobi/media/Wa;->d:Z

    invoke-virtual {p3, v0}, Lcom/inmobi/media/X;->a(Z)Lcom/inmobi/media/X;

    move-result-object p3

    .line 13
    iget-object v0, p2, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/inmobi/media/X;->e(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object p3

    .line 14
    iget-object v0, p2, Lcom/inmobi/media/Wa;->f:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/inmobi/media/X;->b(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object p3

    .line 15
    invoke-virtual {p3}, Lcom/inmobi/media/X;->a()Lcom/inmobi/media/Z;

    move-result-object p3

    .line 16
    iget-object p2, p2, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0}, Lcom/inmobi/media/A5;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 18
    invoke-static {p4, p2, v0}, Lcom/inmobi/media/Cb;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/inmobi/media/A5;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/inmobi/media/we;->a(Lcom/inmobi/media/z5;)V

    .line 19
    :cond_2
    iget-object p2, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    if-eqz p2, :cond_4

    iget-object p4, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    if-nez p4, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p2, p1, p3, p0}, Lcom/inmobi/media/S0;->a(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    .line 21
    iget-object p2, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1, p3, p0}, Lcom/inmobi/media/S0;->a(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    goto :goto_2

    .line 22
    :cond_4
    :goto_1
    new-instance p2, Lcom/inmobi/media/M1;

    invoke-direct {p2, p1, p3, p0}, Lcom/inmobi/media/M1;-><init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    iput-object p2, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 23
    new-instance p2, Lcom/inmobi/media/M1;

    invoke-direct {p2, p1, p3, p0}, Lcom/inmobi/media/M1;-><init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    iput-object p2, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 24
    iget-object p1, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    iput-object p1, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 25
    iput-object p2, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 26
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 27
    iget-object p2, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/z5;)V

    .line 28
    :cond_6
    iget-object p2, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/z5;)V

    .line 29
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p3, "adding mBannerAdUnit1 to reference tracker"

    invoke-virtual {p1, p2, p3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_8
    sget-object p1, Lcom/inmobi/media/Cb;->a:Lcom/inmobi/media/a7;

    iget-object p1, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/inmobi/media/Cb;->a(Ljava/lang/Object;Lcom/inmobi/media/z5;)V

    .line 31
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p3, "adding mBannerAdUnit2 to reference tracker"

    invoke-virtual {p1, p2, p3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_9
    iget-object p1, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/inmobi/media/Cb;->a(Ljava/lang/Object;Lcom/inmobi/media/z5;)V

    .line 33
    :cond_a
    invoke-virtual {p0}, Lcom/inmobi/media/we;->t()Lcom/inmobi/ads/WatermarkData;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 34
    iget-object p2, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    if-eqz p2, :cond_b

    invoke-virtual {p2, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/WatermarkData;)V

    .line 35
    :cond_b
    iget-object p2, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    if-eqz p2, :cond_c

    invoke-virtual {p2, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/WatermarkData;)V

    :cond_c
    return-void
.end method

.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 6
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "banner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 92
    const-string v2, "TAG"

    const-string v3, "displayAd "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v2

    .line 93
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/inmobi/media/ec;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/inmobi/media/ec;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 95
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getViewableAd()Lcom/inmobi/media/Xe;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/inmobi/media/Z;->p()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 97
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->e()V

    .line 98
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 99
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    invoke-virtual {v2}, Lcom/inmobi/media/Xe;->d()Landroid/view/View;

    move-result-object v4

    .line 101
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 102
    invoke-virtual {v2, v5}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    .line 103
    iget-object v2, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/inmobi/media/M1;->F0()V

    .line 104
    :cond_6
    iget-object v2, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/inmobi/media/S0;->Q()B

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_7

    .line 105
    new-instance v2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, -0x1000000

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    invoke-static {v1, p1, v0, v2}, Lcom/inmobi/media/R1;->a(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;)V

    .line 109
    invoke-direct {p0}, Lcom/inmobi/media/R1;->J()V

    goto :goto_2

    .line 110
    :cond_7
    invoke-static {v1, p1, v0, v4}, Lcom/inmobi/media/R1;->a(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;)V

    .line 111
    :goto_2
    iget-object p1, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/inmobi/media/M1;->g()V

    :cond_8
    return-void
.end method

.method public a(Lcom/inmobi/ads/WatermarkData;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/WatermarkData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "watermarkData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->a(Lcom/inmobi/ads/WatermarkData;)V

    .line 116
    iget-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/WatermarkData;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/WatermarkData;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/inmobi/ads/controllers/PublisherCallbacks;Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/controllers/PublisherCallbacks;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 55
    const-string v3, "load 1 "

    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v3

    .line 56
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->u()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 58
    iget-object p1, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 59
    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REPETITIVE_LOAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, p3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 61
    iget-object p1, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz p1, :cond_1

    const/16 p2, 0x7d6

    invoke-virtual {p1, p2}, Lcom/inmobi/media/S0;->a(S)V

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/R1;->o:Ljava/lang/String;

    .line 63
    const-string p2, "Cannot call load() API after calling load(byte[])"

    invoke-static {v2, p1, p2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 65
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(Ljava/lang/Boolean;)V

    .line 66
    invoke-virtual {p0}, Lcom/inmobi/media/we;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object v0

    if-nez v0, :cond_4

    .line 67
    invoke-virtual {p0, p1}, Lcom/inmobi/media/we;->b(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz v0, :cond_6

    .line 69
    iget-object v3, p0, Lcom/inmobi/media/R1;->o:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p1}, Lcom/inmobi/media/we;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/controllers/PublisherCallbacks;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 70
    iget-object p1, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/inmobi/media/we;->o()B

    move-result v0

    invoke-virtual {p1, v0}, Lcom/inmobi/media/S0;->e(B)Z

    move-result p1

    if-ne p1, v2, :cond_6

    .line 71
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "AdManager state - LOADING"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_5
    invoke-virtual {p0, v2}, Lcom/inmobi/media/we;->a(B)V

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/inmobi/media/we;->d(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 74
    iget-object p1, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/inmobi/media/M1;->e(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/inmobi/media/M1;->e(Z)V

    :cond_6
    return-void
.end method

.method public a([BLcom/inmobi/ads/controllers/PublisherCallbacks;)V
    .locals 4
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

    .line 76
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 77
    const-string v3, "load 2 "

    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v3

    .line 78
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->u()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 80
    const-string p1, "InMobi"

    const-string p2, "Cannot call load(byte[]) API after load() API is called"

    invoke-static {v2, p1, p2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 82
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(Ljava/lang/Boolean;)V

    .line 83
    invoke-virtual {p0, v2}, Lcom/inmobi/media/we;->a(B)V

    .line 84
    invoke-virtual {p0, p2}, Lcom/inmobi/media/we;->b(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    .line 85
    iget-object p2, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz p2, :cond_6

    .line 86
    iget-object p2, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/inmobi/media/S0;->Y()Z

    move-result p2

    if-nez p2, :cond_6

    .line 87
    :cond_3
    iget-object p2, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v2}, Lcom/inmobi/media/S0;->e(B)Z

    move-result p2

    if-ne p2, v2, :cond_6

    .line 88
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/A5;

    const-string v1, "timer started - load banner"

    invoke-virtual {p2, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_4
    iget-object p2, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/inmobi/media/S0;->e0()V

    .line 90
    :cond_5
    iget-object p2, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Lcom/inmobi/media/S0;->a([B)V

    :cond_6
    return-void
.end method

.method public final a(J)Z
    .locals 8

    .line 124
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 125
    const-string v3, "checkForRefreshRate "

    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v3

    .line 126
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 128
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->j()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getMinimumRefreshInterval()I

    move-result v0

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, p1

    mul-int/lit16 p1, v0, 0x3e8

    int-to-long p1, p1

    cmp-long p1, v3, p1

    const/4 p2, 0x1

    if-gez p1, :cond_6

    const/16 p1, 0x87f

    .line 130
    invoke-virtual {p0, p1}, Lcom/inmobi/media/we;->a(S)V

    .line 131
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v4, "Early refresh request"

    invoke-virtual {p1, v3, v4}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 133
    new-instance v3, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 134
    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 135
    invoke-direct {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ad cannot be refreshed before "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " seconds"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v3

    .line 137
    invoke-virtual {p0, p1, v3}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 138
    iget-object p1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seconds (AdPlacement Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v6

    goto :goto_0

    :cond_3
    move-object v6, v7

    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-static {p2, p1, v3}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v7

    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v2

    :cond_6
    return p2
.end method

.method public b()V
    .locals 4

    .line 15
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 16
    const-string v3, "onAdDismissed "

    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v3

    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(B)V

    .line 19
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "AdManager state - CREATED"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_1
    invoke-super {p0}, Lcom/inmobi/media/we;->b()V

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

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 2
    const-string v3, "onAdFetchSuccess "

    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v3

    .line 3
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/we;->d(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 5
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 6
    iget-object v2, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "backgroundAdUnit ad object is null"

    invoke-virtual {p1, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-virtual {p0, v3, v0}, Lcom/inmobi/media/we;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    const/16 p1, 0x88d

    .line 9
    invoke-virtual {p0, p1}, Lcom/inmobi/media/R1;->b(S)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Ad fetch successful, calling loadAd()"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_4
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->b(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 12
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lub/t1;

    invoke-direct {v1, p0, p1}, Lub/t1;-><init>(Lcom/inmobi/media/R1;Lcom/inmobi/ads/AdMetaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final b(S)V
    .locals 4

    .line 37
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 38
    const-string v2, "TAG"

    const-string v3, "submitAdLoadFailed "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v2

    .line 39
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/R1;->j()Lcom/inmobi/media/S0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/media/S0;->b(S)V

    :cond_1
    return-void
.end method

.method public c(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/AdMetaInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    const-string v1, "TAG"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "onAdLoadSucceeded "

    .line 17
    .line 18
    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v0, Lcom/inmobi/media/A5;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/we;->c(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Lcom/inmobi/media/A5;

    .line 46
    .line 47
    const-string v1, "Ad load successful, providing callback"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/we;->s()Landroid/os/Handler;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lub/s1;

    .line 57
    .line 58
    invoke-direct {v1, p0, p1}, Lub/s1;-><init>(Lcom/inmobi/media/R1;Lcom/inmobi/ads/AdMetaInfo;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public j()Lcom/inmobi/media/S0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/R1;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method public final x()Z
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "canProceedForSuccess "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v2

    .line 4
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    :cond_2
    return v1
.end method

.method public final y()Z
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 3
    const-string v3, "canScheduleRefresh "

    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v3

    .line 4
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Q()B

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_6

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Ignoring an attempt to schedule refresh when an ad is already loading or active."

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v2

    :cond_6
    return v4
.end method

.method public final z()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/R1;->p:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "clear "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/Q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R1;)Ljava/lang/String;

    move-result-object v2

    .line 4
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/R1;->L()V

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/M1;->g()V

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/inmobi/media/R1;->q:Lcom/inmobi/media/M1;

    .line 8
    iget-object v1, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/inmobi/media/M1;->g()V

    .line 9
    :cond_2
    iput-object v0, p0, Lcom/inmobi/media/R1;->r:Lcom/inmobi/media/M1;

    .line 10
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(Lcom/inmobi/media/z5;)V

    .line 11
    iput-object v0, p0, Lcom/inmobi/media/R1;->s:Lcom/inmobi/media/M1;

    .line 12
    iput-object v0, p0, Lcom/inmobi/media/R1;->t:Lcom/inmobi/media/M1;

    .line 13
    invoke-virtual {p0, v0}, Lcom/inmobi/media/we;->a(Ljava/lang/Boolean;)V

    return-void
.end method
