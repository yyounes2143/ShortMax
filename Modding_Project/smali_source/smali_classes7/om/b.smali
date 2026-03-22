.class public Lom/b;
.super Lom/n;
.source "DisplayPlacementBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdRequestParamsType::",
        "Lxq/d;",
        ">",
        "Lom/n<",
        "TUnifiedAdRequestParamsType;>;"
    }
.end annotation


# instance fields
.field private final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lom/n;-><init>(Lio/bidmachine/AdContentType;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p1, p0, Lom/b;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;
    .locals 3
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lom/n;->c(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lom/a;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lom/a;-><init>(Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Lom/h;->j(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getW()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {v1, p1}, Lom/a;->l(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getH()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {v1, p1}, Lom/a;->k(I)V

    .line 54
    .line 55
    .line 56
    move-object v0, v1

    .line 57
    :cond_2
    return-object v0
.end method

.method public e(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 8
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;",
            "Lio/bidmachine/AdPlacementConfig;",
            "I)",
            "Lcom/explorestack/protobuf/Message$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lom/b;->j(Lio/bidmachine/ContextProvider;Lxq/d;)Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/explorestack/protobuf/adcom/ApiFramework;->API_FRAMEWORK_MRAID_2_0:Lcom/explorestack/protobuf/adcom/ApiFramework;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addApi(Lcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/explorestack/protobuf/adcom/ApiFramework;->API_FRAMEWORK_OMID_1_0:Lcom/explorestack/protobuf/adcom/ApiFramework;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addApi(Lcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/explorestack/protobuf/adcom/SizeUnit;->SIZE_UNIT_DIPS:Lcom/explorestack/protobuf/adcom/SizeUnit;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setUnit(Lcom/explorestack/protobuf/adcom/SizeUnit;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lio/bidmachine/Constants;->IMAGE_MIME_TYPES:[Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setW(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setH(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-boolean v1, p0, Lom/b;->c:Z

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setInstl(Z)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 55
    .line 56
    .line 57
    sget-object v1, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_FULLSCREEN:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->setPos(Lcom/explorestack/protobuf/adcom/PlacementPosition;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 60
    .line 61
    .line 62
    :cond_0
    move-object v1, p0

    .line 63
    move-object v2, p1

    .line 64
    move-object v3, p2

    .line 65
    move-object v4, p3

    .line 66
    move-object v5, p4

    .line 67
    move-object v6, p5

    .line 68
    move v7, p7

    .line 69
    invoke-virtual/range {v1 .. v7}, Lom/n;->d(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p6, :cond_1

    .line 74
    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    if-eqz p6, :cond_2

    .line 90
    .line 91
    invoke-virtual {p0, p6, p1}, Lom/n;->f(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/sdk/Placement;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    return-object v0
.end method

.method public j(Lio/bidmachine/ContextProvider;Lxq/d;)Landroid/graphics/Point;
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lio/bidmachine/core/g;->D(Landroid/content/Context;)Landroid/graphics/Point;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
