.class public abstract Lio/bidmachine/FullScreenAdRequestParameters;
.super Lio/bidmachine/AdRequestParameters;
.source "FullScreenAdRequestParameters.java"


# instance fields
.field private final adContentType:Lio/bidmachine/AdContentType;


# direct methods
.method protected constructor <init>(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/AdContentType;)V
    .locals 0
    .param p1    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    .line 3
    iput-object p2, p0, Lio/bidmachine/FullScreenAdRequestParameters;->adContentType:Lio/bidmachine/AdContentType;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdsFormat;Lio/bidmachine/AdContentType;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    invoke-direct {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdsFormat;)V

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/bidmachine/FullScreenAdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/AdContentType;)V

    return-void
.end method

.method private isParametersMatchedInternal(Lio/bidmachine/FullScreenAdRequestParameters;)Z
    .locals 0
    .param p1    # Lio/bidmachine/FullScreenAdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/FullScreenAdRequestParameters;->getAdContentType()Lio/bidmachine/AdContentType;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;->isContentTypeMatch(Lio/bidmachine/AdContentType;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method


# virtual methods
.method public getAdContentType()Lio/bidmachine/AdContentType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/FullScreenAdRequestParameters;->adContentType:Lio/bidmachine/AdContentType;

    .line 2
    .line 3
    return-object v0
.end method

.method public isContentTypeMatch(Lio/bidmachine/AdContentType;)Z
    .locals 2
    .param p1    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/FullScreenAdRequestParameters;->adContentType:Lio/bidmachine/AdContentType;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    return p1
.end method

.method public isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z
    .locals 1
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Lio/bidmachine/FullScreenAdRequestParameters;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lio/bidmachine/FullScreenAdRequestParameters;

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;->isParametersMatchedInternal(Lio/bidmachine/FullScreenAdRequestParameters;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method
