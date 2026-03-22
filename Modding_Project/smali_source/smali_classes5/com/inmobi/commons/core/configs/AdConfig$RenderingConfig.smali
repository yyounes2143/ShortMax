.class public final Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderingConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private audioNetworkLoadsLimit:I

.field private autoRedirectionEnforcement:Z

.field private bannerNetworkLoadsLimit:I

.field private enableDomStorage:Z

.field private enableImmersive:Z

.field private enablePubMuteControl:Z

.field private gestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private otherNetworkLoadsLimit:I

.field private scrollThrottleInterval:J

.field private shouldRenderPopup:Z

.field private userTouchResetTime:J

.field private webviewBackground:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "#00000000"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->webviewBackground:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->autoRedirectionEnforcement:Z

    .line 10
    .line 11
    const-wide/16 v1, 0x4

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->userTouchResetTime:J

    .line 14
    .line 15
    const/16 v1, 0x32

    .line 16
    .line 17
    iput v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->bannerNetworkLoadsLimit:I

    .line 18
    .line 19
    iput v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->audioNetworkLoadsLimit:I

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->otherNetworkLoadsLimit:I

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v0, 0x2

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/4 v0, 0x4

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const/4 v0, 0x5

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->gestures:Ljava/util/List;

    .line 62
    .line 63
    const-wide/16 v0, 0x1f4

    .line 64
    .line 65
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->scrollThrottleInterval:J

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final getAudioNetworkLoadsLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->audioNetworkLoadsLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public final getAutoRedirectionEnforcement()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->autoRedirectionEnforcement:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getBannerNetworkLoadsLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->bannerNetworkLoadsLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEnableDomStorage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->enableDomStorage:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getEnableImmersive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->enableImmersive:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getEnablePubMuteControl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->enablePubMuteControl:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOtherNetworkLoadsLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->otherNetworkLoadsLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public final getScrollThrottleInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->scrollThrottleInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSupportedGestures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->gestures:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserTouchResetTime()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->userTouchResetTime:J

    .line 2
    .line 3
    const/16 v2, 0x3e8

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    mul-long/2addr v0, v2

    .line 7
    return-wide v0
.end method

.method public final getWebviewBackgroundColor()I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->parseColor()I

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const-string v0, "#00000000"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    return v0
.end method

.method public final isValid()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->webviewBackground:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getUserTouchResetTime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-ltz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getSupportedGestures()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->parseColor()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    return v0

    .line 49
    :catch_0
    :cond_2
    :goto_0
    return v1
.end method

.method public final parseColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->webviewBackground:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setScrollThrottleInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->scrollThrottleInterval:J

    .line 2
    .line 3
    return-void
.end method

.method public final shouldRenderPopup()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->shouldRenderPopup:Z

    .line 2
    .line 3
    return v0
.end method
