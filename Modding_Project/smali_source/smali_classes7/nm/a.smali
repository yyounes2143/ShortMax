.class public Lnm/a;
.super Lio/bidmachine/AdRequestParameters;
.source "BannerAdRequestParameters.java"


# instance fields
.field private final a:Lio/bidmachine/banner/BannerSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/banner/BannerSize;)V
    .locals 2
    .param p1    # Lio/bidmachine/banner/BannerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Lnm/a;->a(Lio/bidmachine/banner/BannerSize;)Lio/bidmachine/AdsFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdsFormat;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lnm/a;->a:Lio/bidmachine/banner/BannerSize;

    .line 18
    .line 19
    return-void
.end method

.method private static a(Lio/bidmachine/banner/BannerSize;)Lio/bidmachine/AdsFormat;
    .locals 1
    .param p0    # Lio/bidmachine/banner/BannerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lnm/a$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    sget-object p0, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lio/bidmachine/AdsFormat;->Banner_300x250:Lio/bidmachine/AdsFormat;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    sget-object p0, Lio/bidmachine/AdsFormat;->Banner_728x90:Lio/bidmachine/AdsFormat;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    sget-object p0, Lio/bidmachine/AdsFormat;->Banner_320x50:Lio/bidmachine/AdsFormat;

    .line 28
    .line 29
    return-object p0
.end method

.method private c(Lnm/a;)Z
    .locals 1
    .param p1    # Lnm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lnm/a;->a:Lio/bidmachine/banner/BannerSize;

    .line 2
    .line 3
    iget-object p1, p1, Lnm/a;->a:Lio/bidmachine/banner/BannerSize;

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method


# virtual methods
.method public b()Lio/bidmachine/banner/BannerSize;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnm/a;->a:Lio/bidmachine/banner/BannerSize;

    .line 2
    .line 3
    return-object v0
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
    instance-of v0, p1, Lnm/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lnm/a;

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lnm/a;->c(Lnm/a;)Z

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

.method public isPlacementObjectValid(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .locals 1
    .param p1    # Lcom/explorestack/protobuf/adcom/Placement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnm/a;->a:Lio/bidmachine/banner/BannerSize;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lfr/e;->h(Lcom/explorestack/protobuf/adcom/Placement;Lio/bidmachine/banner/BannerSize;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
