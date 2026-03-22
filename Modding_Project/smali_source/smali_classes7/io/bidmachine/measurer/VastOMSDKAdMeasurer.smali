.class public Lio/bidmachine/measurer/VastOMSDKAdMeasurer;
.super Lio/bidmachine/measurer/OMSDKAdMeasurer;
.source "VastOMSDKAdMeasurer.java"

# interfaces
.implements Lio/bidmachine/iab/measurer/VastAdMeasurer;
.implements Lio/bidmachine/iab/vast/VastPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/measurer/OMSDKAdMeasurer<",
        "Landroid/view/View;",
        ">;",
        "Lio/bidmachine/iab/measurer/VastAdMeasurer;",
        "Lio/bidmachine/iab/vast/VastPlaybackListener;"
    }
.end annotation


# instance fields
.field private final g:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->g:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic z(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-static {p2, v0, p3}, Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;->createVerificationScriptResourceWithParameters(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v0}, Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;->createVerificationScriptResourceWithoutParameters(Ljava/net/URL;)Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    iget-object p2, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->g:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_2
    return-void
.end method

.method public B(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$c;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$c;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public C(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->h:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public C0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public D(Lio/bidmachine/iab/vast/a;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$b;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;Lio/bidmachine/iab/vast/a;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected E(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$d;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public E0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->D0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public h0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public i0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->d0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public j0(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->F0(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public o(Lio/bidmachine/iab/vast/a;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$a;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;Lio/bidmachine/iab/vast/a;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected s(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V
    .locals 3
    .param p1    # Lcom/iab/omid/library/appodeal/adsession/AdEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->h:Ljava/lang/Float;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/iab/omid/library/appodeal/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/appodeal/adsession/media/Position;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/appodeal/adsession/media/Position;)Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget-object v2, Lcom/iab/omid/library/appodeal/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/appodeal/adsession/media/Position;

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;->createVastPropertiesForSkippableMedia(FZLcom/iab/omid/library/appodeal/adsession/media/Position;)Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/appodeal/adsession/AdEvents;->loaded(Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "onAdLoaded"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->r(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public w0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public x(FF)V
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->z0(FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
