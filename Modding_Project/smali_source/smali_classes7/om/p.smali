.class public Lom/p;
.super Lom/n;
.source "VideoPlacementBuilder.java"


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
    sget-object v0, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lom/n;-><init>(Lio/bidmachine/AdContentType;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p1, p0, Lom/p;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;
    .locals 2
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lom/n;->c(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lom/o;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Lom/o;-><init>(Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdm()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Lom/h;->j(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :cond_1
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
    invoke-virtual {p0, p1, p2}, Lom/p;->j(Lio/bidmachine/ContextProvider;Lxq/d;)Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/explorestack/protobuf/adcom/ApiFramework;->API_FRAMEWORK_OMID_1_0:Lcom/explorestack/protobuf/adcom/ApiFramework;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addApi(Lcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-boolean v2, p0, Lom/p;->c:Z

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setSkip(Z)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/explorestack/protobuf/adcom/SizeUnit;->SIZE_UNIT_DIPS:Lcom/explorestack/protobuf/adcom/SizeUnit;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setUnit(Lcom/explorestack/protobuf/adcom/SizeUnit;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_FULLSCREEN:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setPos(Lcom/explorestack/protobuf/adcom/PlacementPosition;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setW(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setH(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_2_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;->VIDEO_CREATIVE_TYPE_VAST_WRAPPER_3_0:Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addCtype(Lcom/explorestack/protobuf/adcom/VideoCreativeType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Lio/bidmachine/Constants;->VIDEO_MIME_TYPES:[Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/16 v1, 0x38

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMinbitr(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/16 v1, 0x1000

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMaxbitr(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v1, 0x5

    .line 92
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMindur(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/16 v1, 0x1e

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setMaxdur(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->VIDEO_PLACEMENT_TYPE_INTERSTITIAL:Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setPtype(Lcom/explorestack/protobuf/adcom/VideoPlacementType;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->setLinearValue(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object v1, p0

    .line 114
    move-object v2, p1

    .line 115
    move-object v3, p2

    .line 116
    move-object v4, p3

    .line 117
    move-object v5, p4

    .line 118
    move-object v6, p5

    .line 119
    move v7, p7

    .line 120
    invoke-virtual/range {v1 .. v7}, Lom/n;->d(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-nez p6, :cond_0

    .line 125
    .line 126
    if-eqz p1, :cond_0

    .line 127
    .line 128
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    if-eqz p6, :cond_1

    .line 141
    .line 142
    invoke-virtual {p0, p6, p1}, Lom/n;->f(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/sdk/Placement;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 151
    .line 152
    .line 153
    :cond_1
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
