.class public abstract Lio/bidmachine/ViewAd;
.super Lio/bidmachine/BidMachineAd;
.source "ViewAd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdType:",
        "Lio/bidmachine/ViewAd<",
        "TAdType;TAdRequestType;TAdObjectType;TUnifiedAdRequestParamsType;TAd",
        "ListenerType;",
        ">;AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;*TUnifiedAdRequestParamsType;>;AdObjectType:",
        "Lio/bidmachine/ViewAdObject<",
        "TAdRequestType;*TUnifiedAdRequestParamsType;>;UnifiedAdRequestParamsType::",
        "Lxq/d;",
        "Ad",
        "ListenerType::Lio/bidmachine/AdListener<",
        "TAdType;>;>",
        "Lio/bidmachine/BidMachineAd<",
        "TAdType;TAdRequestType;TAdObjectType;",
        "Llp/b;",
        "TUnifiedAdRequestParamsType;TAd",
        "ListenerType;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/BidMachineAd;-><init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method hide()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lio/bidmachine/ViewAdObject;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lio/bidmachine/ViewAdObject;->hide()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public isDuplicateShowDisabled()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method show(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->prepareShow()Llp/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lio/bidmachine/ViewAdObject;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/BidMachineAd;->rendererConfiguration:Lio/bidmachine/RendererConfiguration;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/ViewAdObject;->show(Landroid/view/ViewGroup;Lio/bidmachine/RendererConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "Exception showing view ad object"

    .line 21
    .line 22
    invoke-static {v0, p1}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processShowFail(Lfr/a;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
