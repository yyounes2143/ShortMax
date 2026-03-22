.class Lio/bidmachine/ads/networks/gam_dynamic/j0$a;
.super Ljava/lang/Object;
.source "WaterfallController.java"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$b;
.implements Lio/bidmachine/core/NetworkRequest$c;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/ads/networks/gam_dynamic/j0;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/j0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lfr/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/j0$a;->b(Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lfr/a;)V
    .locals 1
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/j0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lfr/a;->g()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p1, "Unknown"

    .line 11
    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->s(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public c(Lio/bidmachine/protobuf/Waterfall$Configuration;)V
    .locals 1
    .param p1    # Lio/bidmachine/protobuf/Waterfall$Configuration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/j0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->t(Lio/bidmachine/protobuf/Waterfall$Configuration;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/j0;

    .line 10
    .line 11
    const-string v0, "Configuration response is null"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public onCanceled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/j0;

    .line 2
    .line 3
    const-string v1, "Request is canceled"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->s(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Configuration;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/j0$a;->c(Lio/bidmachine/protobuf/Waterfall$Configuration;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
