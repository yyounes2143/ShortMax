.class public final enum Lio/bidmachine/AdsType;
.super Ljava/lang/Enum;
.source "AdsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/AdsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/AdsType;

.field public static final enum Banner:Lio/bidmachine/AdsType;

.field public static final enum Interstitial:Lio/bidmachine/AdsType;

.field public static final enum Native:Lio/bidmachine/AdsType;

.field public static final enum Rewarded:Lio/bidmachine/AdsType;


# instance fields
.field private final binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final placementBuilders:[Lom/n;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final placementCreateExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lio/bidmachine/AdsType;
    .locals 4

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    .line 6
    .line 7
    sget-object v3, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/AdsType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v6, Lio/bidmachine/AdsType;

    .line 2
    .line 3
    new-instance v4, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    .line 4
    .line 5
    invoke-direct {v4}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/AdsType$a;

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    invoke-direct {v0, v7}, Lio/bidmachine/AdsType$a;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    new-array v5, v8, [Lom/n;

    .line 16
    .line 17
    aput-object v0, v5, v7

    .line 18
    .line 19
    const-string v1, "Banner"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "banner"

    .line 23
    .line 24
    move-object v0, v6

    .line 25
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lom/n;)V

    .line 26
    .line 27
    .line 28
    sput-object v6, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    .line 29
    .line 30
    new-instance v0, Lio/bidmachine/AdsType;

    .line 31
    .line 32
    new-instance v13, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    .line 33
    .line 34
    invoke-direct {v13}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lom/b;

    .line 38
    .line 39
    invoke-direct {v1, v8}, Lom/b;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lom/p;

    .line 43
    .line 44
    invoke-direct {v2, v8}, Lom/p;-><init>(Z)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    new-array v14, v3, [Lom/n;

    .line 49
    .line 50
    aput-object v1, v14, v7

    .line 51
    .line 52
    aput-object v2, v14, v8

    .line 53
    .line 54
    const-string v10, "Interstitial"

    .line 55
    .line 56
    const/4 v11, 0x1

    .line 57
    const-string v12, "interstitial"

    .line 58
    .line 59
    move-object v9, v0

    .line 60
    invoke-direct/range {v9 .. v14}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lom/n;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    .line 64
    .line 65
    new-instance v0, Lio/bidmachine/AdsType;

    .line 66
    .line 67
    new-instance v19, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    .line 68
    .line 69
    invoke-direct/range {v19 .. v19}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lom/b;

    .line 73
    .line 74
    invoke-direct {v1, v8}, Lom/b;-><init>(Z)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lom/p;

    .line 78
    .line 79
    invoke-direct {v2, v7}, Lom/p;-><init>(Z)V

    .line 80
    .line 81
    .line 82
    new-array v3, v3, [Lom/n;

    .line 83
    .line 84
    aput-object v1, v3, v7

    .line 85
    .line 86
    aput-object v2, v3, v8

    .line 87
    .line 88
    const-string v16, "Rewarded"

    .line 89
    .line 90
    const/16 v17, 0x2

    .line 91
    .line 92
    const-string v18, "rewarded"

    .line 93
    .line 94
    move-object v15, v0

    .line 95
    move-object/from16 v20, v3

    .line 96
    .line 97
    invoke-direct/range {v15 .. v20}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lom/n;)V

    .line 98
    .line 99
    .line 100
    sput-object v0, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    .line 101
    .line 102
    new-instance v0, Lio/bidmachine/AdsType;

    .line 103
    .line 104
    new-instance v13, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    .line 105
    .line 106
    invoke-direct {v13}, Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lom/l;

    .line 110
    .line 111
    invoke-direct {v1}, Lom/l;-><init>()V

    .line 112
    .line 113
    .line 114
    new-array v14, v8, [Lom/n;

    .line 115
    .line 116
    aput-object v1, v14, v7

    .line 117
    .line 118
    const-string v10, "Native"

    .line 119
    .line 120
    const/4 v11, 0x3

    .line 121
    const-string v12, "native"

    .line 122
    .line 123
    move-object v9, v0

    .line 124
    invoke-direct/range {v9 .. v14}, Lio/bidmachine/AdsType;-><init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lom/n;)V

    .line 125
    .line 126
    .line 127
    sput-object v0, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    .line 128
    .line 129
    invoke-static {}, Lio/bidmachine/AdsType;->$values()[Lio/bidmachine/AdsType;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lio/bidmachine/AdsType;->$VALUES:[Lio/bidmachine/AdsType;

    .line 134
    .line 135
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;[Lom/n;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;",
            "[",
            "Lom/n;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lio/bidmachine/AdsType;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lio/bidmachine/AdsType;->binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    .line 7
    .line 8
    iput-object p5, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lom/n;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    mul-int/lit8 p1, p1, 0x4

    .line 19
    .line 20
    const/16 p2, 0x8

    .line 21
    .line 22
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lio/bidmachine/AdsType;->placementCreateExecutor:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/AdsType;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/AdsType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/AdsType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/AdsType;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->$VALUES:[Lio/bidmachine/AdsType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/AdsType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/AdsType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method collectPlacements(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lxq/d;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)V
    .locals 17
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lxq/d;
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
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdRequest;",
            "Lxq/d;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message$Builder;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;",
            "Lio/bidmachine/AdPlacementConfig;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    iget-object v1, v12, Lio/bidmachine/AdsType;->placementBuilders:[Lom/n;

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget-object v13, v12, Lio/bidmachine/AdsType;->placementBuilders:[Lom/n;

    .line 12
    .line 13
    array-length v14, v13

    .line 14
    const/4 v1, 0x0

    .line 15
    move v15, v1

    .line 16
    :goto_0
    if-ge v15, v14, :cond_1

    .line 17
    .line 18
    aget-object v3, v13, v15

    .line 19
    .line 20
    move-object/from16 v11, p2

    .line 21
    .line 22
    invoke-virtual {v11, v3}, Lio/bidmachine/AdRequest;->isPlacementBuilderMatch(Lom/n;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v10, v12, Lio/bidmachine/AdsType;->placementCreateExecutor:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    new-instance v9, Lio/bidmachine/AdsType$b;

    .line 31
    .line 32
    move-object v1, v9

    .line 33
    move-object/from16 v2, p0

    .line 34
    .line 35
    move-object/from16 v4, p1

    .line 36
    .line 37
    move-object/from16 v5, p3

    .line 38
    .line 39
    move-object/from16 v6, p4

    .line 40
    .line 41
    move-object/from16 v7, p6

    .line 42
    .line 43
    move-object/from16 v8, p7

    .line 44
    .line 45
    move-object v12, v9

    .line 46
    move/from16 v9, p8

    .line 47
    .line 48
    move-object/from16 v16, v13

    .line 49
    .line 50
    move-object v13, v10

    .line 51
    move-object/from16 v10, p5

    .line 52
    .line 53
    move-object v11, v0

    .line 54
    invoke-direct/range {v1 .. v11}, Lio/bidmachine/AdsType$b;-><init>(Lio/bidmachine/AdsType;Lom/n;Lio/bidmachine/ContextProvider;Lxq/d;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v13, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    move-object/from16 v16, v13

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 64
    .line 65
    .line 66
    :goto_1
    add-int/lit8 v15, v15, 0x1

    .line 67
    .line 68
    move-object/from16 v12, p0

    .line 69
    .line 70
    move-object/from16 v13, v16

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    move-object v1, v0

    .line 79
    invoke-static {v1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    return-void
.end method

.method createAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;
    .locals 4
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lom/n;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3, p1}, Lom/n;->b(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method findNetworkAdapter(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/NetworkAdapter;
    .locals 2
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/AdsType;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_3

    .line 18
    .line 19
    sget-object v1, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    .line 20
    .line 21
    if-ne p0, v1, :cond_1

    .line 22
    .line 23
    const-string p1, "nast"

    .line 24
    .line 25
    invoke-static {p1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const-string p1, "mraid"

    .line 37
    .line 38
    invoke-static {p1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    const-string p1, "vast"

    .line 50
    .line 51
    invoke-static {p1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_3
    :goto_1
    return-object v0
.end method

.method getBinder()Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsType;->binder:Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsType;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isFullscreen()Z
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 4
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdsType;->placementBuilders:[Lom/n;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3, p1}, Lom/n;->i(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method
