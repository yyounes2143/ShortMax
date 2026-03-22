.class public abstract Lio/bidmachine/FullScreenAdRequest;
.super Lio/bidmachine/AdRequest;
.source "FullScreenAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/FullScreenAdRequest$b;,
        Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/FullScreenAdRequest<",
        "TSelfType;>;>",
        "Lio/bidmachine/AdRequest<",
        "TSelfType;",
        "Lio/bidmachine/FullScreenAdRequestParameters;",
        "Lxq/j;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;)V
    .locals 0
    .param p1    # Lio/bidmachine/FullScreenAdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;-><init>(Lio/bidmachine/AdRequestParameters;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected bridge synthetic createUnifiedAdRequestParams(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;)Lxq/d;
    .locals 0
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Lio/bidmachine/FullScreenAdRequestParameters;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/FullScreenAdRequest;->createUnifiedAdRequestParams(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;)Lxq/j;

    move-result-object p1

    return-object p1
.end method

.method protected createUnifiedAdRequestParams(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;)Lxq/j;
    .locals 2
    .param p1    # Lio/bidmachine/FullScreenAdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lio/bidmachine/FullScreenAdRequest$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lio/bidmachine/FullScreenAdRequest$b;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;Lio/bidmachine/FullScreenAdRequest$a;)V

    return-object v0
.end method

.method public getAdContentType()Lio/bidmachine/AdContentType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lio/bidmachine/FullScreenAdRequestParameters;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/bidmachine/FullScreenAdRequestParameters;->getAdContentType()Lio/bidmachine/AdContentType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method isPlacementBuilderMatch(Lom/n;)Z
    .locals 1
    .param p1    # Lom/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest;->isPlacementBuilderMatch(Lom/n;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lio/bidmachine/FullScreenAdRequestParameters;

    .line 12
    .line 13
    invoke-virtual {p1}, Lom/n;->g()Lio/bidmachine/AdContentType;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;->isContentTypeMatch(Lio/bidmachine/AdContentType;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method
