.class public abstract Lio/bidmachine/AdView;
.super Landroid/widget/FrameLayout;
.source "AdView.java"

# interfaces
.implements Lio/bidmachine/IAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/AdView<",
        "TSelfType;TAdType;TAdRequestType;TAdObjectType;TExternalAd",
        "ListenerType;",
        ">;AdType:",
        "Lio/bidmachine/ViewAd<",
        "TAdType;TAdRequestType;TAdObjectType;*",
        "Lio/bidmachine/AdListener<",
        "TAdType;>;>;AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;**>;AdObjectType:",
        "Lio/bidmachine/ViewAdObject<",
        "TAdRequestType;**>;ExternalAd",
        "ListenerType::Lio/bidmachine/AdListener<",
        "TSelfType;>;>",
        "Landroid/widget/FrameLayout;",
        "Lio/bidmachine/IAd<",
        "TSelfType;TAdRequestType;>;"
    }
.end annotation


# instance fields
.field private final adListener:Lio/bidmachine/AdListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdListener<",
            "TAdType;>;"
        }
    .end annotation
.end field

.field private currentAd:Lio/bidmachine/ViewAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdType;"
        }
    .end annotation
.end field

.field private externalListener:Lio/bidmachine/AdListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TExternalAd",
            "ListenerType;"
        }
    .end annotation
.end field

.field private isAttachedToWindow:Z

.field private isShowPending:Z

.field private pendingAd:Lio/bidmachine/ViewAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdType;"
        }
    .end annotation
.end field

.field private rendererConfiguration:Lio/bidmachine/RendererConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lio/bidmachine/AdView;->isShowPending:Z

    .line 5
    iput-boolean p1, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    .line 6
    new-instance p1, Lio/bidmachine/AdView$a;

    invoke-direct {p1, p0}, Lio/bidmachine/AdView$a;-><init>(Lio/bidmachine/AdView;)V

    iput-object p1, p0, Lio/bidmachine/AdView;->adListener:Lio/bidmachine/AdListener;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdView;->externalListener:Lio/bidmachine/AdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdView;->performShow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private canPerformShow()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method private canShow(Lio/bidmachine/ViewAd;)Z
    .locals 0
    .param p1    # Lio/bidmachine/ViewAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->canShow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLoaded(Lio/bidmachine/ViewAd;)Z
    .locals 0
    .param p1    # Lio/bidmachine/ViewAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private performHide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->hide()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private performShow()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdView;->canPerformShow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/AdView;->prepareDisplayRequest()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lio/bidmachine/AdView;->rendererConfiguration:Lio/bidmachine/RendererConfiguration;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->setRendererConfiguration(Lio/bidmachine/RendererConfiguration;)Lio/bidmachine/IAd;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lio/bidmachine/ViewAd;->show(Landroid/view/ViewGroup;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private prepareDisplayRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isLoaded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 23
    .line 24
    iput-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 28
    .line 29
    :cond_2
    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->canShow(Lio/bidmachine/ViewAd;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->canShow(Lio/bidmachine/ViewAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected abstract createAd(Landroid/content/Context;)Lio/bidmachine/ViewAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TAdType;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public getAuctionResult()Llp/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Llp/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Llp/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method

.method protected getCurrentAd()Lio/bidmachine/ViewAd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getPendingAd()Lio/bidmachine/ViewAd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isDestroyed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isDestroyed()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public isExpired()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isExpired()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isExpired()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->isLoaded(Lio/bidmachine/ViewAd;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->isLoaded(Lio/bidmachine/ViewAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isLoading()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public load(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdView;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)TSelfType;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    .line 3
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/AdView;->createAd(Landroid/content/Context;)Lio/bidmachine/ViewAd;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 6
    iget-object v1, p0, Lio/bidmachine/AdView;->adListener:Lio/bidmachine/AdListener;

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 7
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    invoke-virtual {v0, p1}, Lio/bidmachine/BidMachineAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    return-object p0
.end method

.method public bridge synthetic load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/AdView;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdView;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/AdView;->performShow()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    .line 9
    .line 10
    invoke-direct {p0}, Lio/bidmachine/AdView;->performHide()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/AdView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TExternalAd",
            "ListenerType;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdView;->externalListener:Lio/bidmachine/AdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRendererConfiguration(Lio/bidmachine/RendererConfiguration;)Lio/bidmachine/AdView;
    .locals 0
    .param p1    # Lio/bidmachine/RendererConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/RendererConfiguration;",
            ")TSelfType;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lio/bidmachine/AdView;->rendererConfiguration:Lio/bidmachine/RendererConfiguration;

    return-object p0
.end method

.method public bridge synthetic setRendererConfiguration(Lio/bidmachine/RendererConfiguration;)Lio/bidmachine/IAd;
    .locals 0
    .param p1    # Lio/bidmachine/RendererConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/AdView;->setRendererConfiguration(Lio/bidmachine/RendererConfiguration;)Lio/bidmachine/AdView;

    move-result-object p1

    return-object p1
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lio/bidmachine/AdView;->performShow()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
