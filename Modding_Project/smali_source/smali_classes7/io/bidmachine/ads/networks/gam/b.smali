.class abstract Lio/bidmachine/ads/networks/gam/b;
.super Ljava/lang/Object;
.source "GAMBaseAdListener.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam/c0;
.implements Lio/bidmachine/ads/networks/gam/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GAMAdType:",
        "Lio/bidmachine/ads/networks/gam/InternalGAMAd;",
        "UnifiedAdCallbackType::",
        "Lxq/c;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/ads/networks/gam/c0<",
        "TGAMAdType;>;",
        "Lio/bidmachine/ads/networks/gam/d0;"
    }
.end annotation


# instance fields
.field private final a:Lxq/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdCallbackType;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lxq/c;)V
    .locals 0
    .param p1    # Lxq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnifiedAdCallbackType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/b;->a:Lxq/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method c()Lxq/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUnifiedAdCallbackType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/b;->a:Lxq/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/b;->a:Lxq/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lxq/c;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdExpired()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/b;->a:Lxq/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lxq/c;->onAdExpired()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdLoadFailed(Lfr/a;)V
    .locals 1
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/b;->a:Lxq/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdShowFailed(Lfr/a;)V
    .locals 1
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/b;->a:Lxq/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdShown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/b;->a:Lxq/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lxq/c;->onAdShown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
