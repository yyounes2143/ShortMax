.class public Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;
.super Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;
.source "OMVideoMeasurer.java"

# interfaces
.implements Lio/bidmachine/rendering/measurer/VideoMeasurer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer<",
        "Landroid/view/View;",
        ">;",
        "Lio/bidmachine/rendering/measurer/VideoMeasurer;"
    }
.end annotation


# instance fields
.field final g:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Float;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;",
            ">;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;->g:Ljava/util/List;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    sget-object v0, Lcom/iab/omid/library/appodeal/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/appodeal/adsession/media/Position;

    .line 23
    .line 24
    invoke-static {p2, p1, v0}, Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;->createVastPropertiesForSkippableMedia(FZLcom/iab/omid/library/appodeal/adsession/media/Position;)Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object p2, Lcom/iab/omid/library/appodeal/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/appodeal/adsession/media/Position;

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/appodeal/adsession/media/Position;)Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;->h:Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public A0(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public D0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$h;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public F0(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$i;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;F)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$c;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$g;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public d0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$f;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$d;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected i(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V
    .locals 1
    .param p1    # Lcom/iab/omid/library/appodeal/adsession/AdEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;->h:Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/appodeal/adsession/AdEvents;->loaded(Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$e;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public n0()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$j;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected s()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$a;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public w(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->k(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public z0(FF)V
    .locals 1
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer$b;-><init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMVideoMeasurer;FF)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
