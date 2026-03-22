.class public Lxm/b;
.super Lio/bidmachine/FullScreenAdRequestParameters;
.source "InterstitialAdRequestParameters.java"


# direct methods
.method public constructor <init>(Lio/bidmachine/AdContentType;)V
    .locals 2
    .param p1    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Lxm/b;->a(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdsFormat;

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
    invoke-direct {p0, v0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/AdContentType;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static a(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdsFormat;
    .locals 1
    .param p0    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lxm/b$a;->a:[I

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
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lio/bidmachine/AdsFormat;->InterstitialVideo:Lio/bidmachine/AdsFormat;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object p0, Lio/bidmachine/AdsFormat;->InterstitialStatic:Lio/bidmachine/AdsFormat;

    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public isPlacementObjectValid(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .locals 0
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
    invoke-static {p1}, Lfr/e;->k(Lcom/explorestack/protobuf/adcom/Placement;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
