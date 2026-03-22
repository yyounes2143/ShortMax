.class Lio/bidmachine/AdView$a;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lio/bidmachine/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/AdListener<",
        "TAdType;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/AdView;


# direct methods
.method constructor <init>(Lio/bidmachine/AdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/ViewAd;)V
    .locals 1
    .param p1    # Lio/bidmachine/ViewAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdClicked(Lio/bidmachine/IAd;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public b(Lio/bidmachine/ViewAd;)V
    .locals 1
    .param p1    # Lio/bidmachine/ViewAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdExpired(Lio/bidmachine/IAd;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public c(Lio/bidmachine/ViewAd;)V
    .locals 1
    .param p1    # Lio/bidmachine/ViewAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdImpression(Lio/bidmachine/IAd;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public d(Lio/bidmachine/ViewAd;Lfr/a;)V
    .locals 1
    .param p1    # Lio/bidmachine/ViewAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;",
            "Lfr/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 16
    .line 17
    invoke-interface {p1, v0, p2}, Lio/bidmachine/AdListener;->onAdLoadFailed(Lio/bidmachine/IAd;Lfr/a;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public e(Lio/bidmachine/ViewAd;)V
    .locals 1
    .param p1    # Lio/bidmachine/ViewAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdLoaded(Lio/bidmachine/IAd;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 21
    .line 22
    invoke-static {p1}, Lio/bidmachine/AdView;->access$100(Lio/bidmachine/AdView;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public f(Lio/bidmachine/ViewAd;Lfr/a;)V
    .locals 1
    .param p1    # Lio/bidmachine/ViewAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;",
            "Lfr/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    .line 16
    .line 17
    invoke-interface {p1, v0, p2}, Lio/bidmachine/AdListener;->onAdShowFailed(Lio/bidmachine/IAd;Lfr/a;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$a;->a(Lio/bidmachine/ViewAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$a;->b(Lio/bidmachine/ViewAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$a;->c(Lio/bidmachine/ViewAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lfr/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdView$a;->d(Lio/bidmachine/ViewAd;Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$a;->e(Lio/bidmachine/ViewAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onAdShowFailed(Lio/bidmachine/IAd;Lfr/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdView$a;->f(Lio/bidmachine/ViewAd;Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
