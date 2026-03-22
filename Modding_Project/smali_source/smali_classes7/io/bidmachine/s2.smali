.class Lio/bidmachine/s2;
.super Ljava/lang/Object;
.source "BidTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/s2$b;
    }
.end annotation


# static fields
.field private static final a:Lwq/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsFormat;",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/BidToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/BidMachineTrackingObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/s2;->a:Lwq/k;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/s2;->b:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lio/bidmachine/s2;->c:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method

.method private static A(Lio/bidmachine/AdsFormat;Lfr/a;)V
    .locals 3
    .param p0    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/s2;->a:Lwq/k;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/TrackEventType;->GetBidToken:Lio/bidmachine/TrackEventType;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/bidmachine/AdsFormat;->getAdsType()Lio/bidmachine/AdsType;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v2

    .line 14
    :goto_0
    invoke-interface {v0, v1, p0, v2, p1}, Lwq/k;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/s2;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/protobuf/sdk/Placement$Builder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/s2;->m(Lio/bidmachine/protobuf/sdk/Placement$Builder;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/s2;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/BidToken;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/s2;->q(Lio/bidmachine/BidToken;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/s2;->n(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static f(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getAdsFormat()Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1}, Lio/bidmachine/s2;->g(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Lio/bidmachine/protobuf/RequestTokenPayload;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, ""

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "Failed to create RequestTokenPayload"

    .line 14
    .line 15
    invoke-static {p0}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0, p0}, Lio/bidmachine/s2;->w(Lio/bidmachine/AdsFormat;Lfr/a;)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/a;->toByteArray()[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0}, Lio/bidmachine/s2;->x(Lio/bidmachine/AdsFormat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :catch_0
    move-exception v1

    .line 37
    const-string v2, "Failed to encode RequestTokenPayload"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lio/bidmachine/s2;->w(Lio/bidmachine/AdsFormat;Lfr/a;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload;->getTokenHashValue()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lio/bidmachine/s2;->v(Ljava/lang/String;)Lio/bidmachine/BidToken;

    .line 51
    .line 52
    .line 53
    return-object p1
.end method

.method private static g(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;)Lio/bidmachine/protobuf/RequestTokenPayload;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getAdsFormat()Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload;->newBuilder()Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getPlacementBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0}, Lio/bidmachine/AdsFormat;->getAdsType()Lio/bidmachine/AdsType;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setAdType(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getPlacementId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    new-instance v5, Lio/bidmachine/p2;

    .line 33
    .line 34
    invoke-direct {v5, v3}, Lio/bidmachine/p2;-><init>(Lio/bidmachine/protobuf/sdk/Placement$Builder;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v5}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getCustomParams()Lio/bidmachine/CustomParams;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v4, Lio/bidmachine/q2;

    .line 45
    .line 46
    invoke-direct {v4, v3}, Lio/bidmachine/q2;-><init>(Lio/bidmachine/protobuf/sdk/Placement$Builder;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v4}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->newBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v1}, Lio/bidmachine/j2;->h()Lio/bidmachine/a1;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3, p0, p1}, Lio/bidmachine/a1;->b(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/App$Builder;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setAppData(Lio/bidmachine/protobuf/sdk/App$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lio/bidmachine/s2;->h(Lio/bidmachine/j2;)Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setUserData(Lio/bidmachine/protobuf/sdk/User$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDK;->newBuilder()Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v3, "BidMachine"

    .line 83
    .line 84
    invoke-virtual {p1, v3}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v3, "3.4.0"

    .line 89
    .line 90
    invoke-virtual {p1, v3}, Lio/bidmachine/protobuf/sdk/SDK$Builder;->setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/SDK$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Lym/a;->c(Lio/bidmachine/protobuf/sdk/SDK$Builder;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setPlacementData(Lio/bidmachine/protobuf/sdk/SDK$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lio/bidmachine/j2;->i()Lio/bidmachine/v3;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v1}, Lio/bidmachine/j2;->u()Lio/bidmachine/v5;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {p1, p0, v2, v3}, Lio/bidmachine/v3;->b(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Llp/d;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lio/bidmachine/j2;->q()Lio/bidmachine/o5;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, p0, v2, v0}, Lio/bidmachine/o5;->e(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Lio/bidmachine/AdsFormat;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p0, v2, v0}, Lio/bidmachine/s2;->t(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Lio/bidmachine/AdsFormat;)V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {}, Lio/bidmachine/ExtraParamsManager;->get()Lio/bidmachine/ExtraParamsManager;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Lio/bidmachine/ExtraParamsManager;->getPrivateStruct(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-eqz p0, :cond_1

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Struct$Builder;->putAllFields(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 140
    .line 141
    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-lez p0, :cond_2

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {v2, p0}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 153
    .line 154
    .line 155
    :cond_2
    invoke-virtual {v2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload;

    .line 156
    .line 157
    .line 158
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    return-object p0

    .line 160
    :goto_1
    invoke-static {p0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    const/4 p0, 0x0

    .line 164
    return-object p0
.end method

.method private static h(Lio/bidmachine/j2;)Lio/bidmachine/protobuf/sdk/User$Builder;
    .locals 1
    .param p0    # Lio/bidmachine/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/j2;->u()Lio/bidmachine/v5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/User;->newBuilder()Lio/bidmachine/protobuf/sdk/User$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lio/bidmachine/v5;->h(Lio/bidmachine/protobuf/sdk/User$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :catchall_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method private static i(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;Ljava/util/List;)V
    .locals 2
    .param p0    # Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :catchall_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/explorestack/protobuf/Any;

    .line 16
    .line 17
    :try_start_0
    const-class v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->getAdUnitsList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->addAllAdUnits(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method static j(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/AdRequest;
    .locals 3
    .param p0    # Lio/bidmachine/protobuf/ResponsePayload;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/AdRequest<",
            "***>;>(",
            "Lio/bidmachine/protobuf/ResponsePayload;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {p0}, Lio/bidmachine/s2;->k(Lio/bidmachine/protobuf/ResponsePayload;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v1, Lio/bidmachine/n2;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lio/bidmachine/n2;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "BidTokenManager"

    .line 15
    .line 16
    invoke-static {v2, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    invoke-static {p0}, Lio/bidmachine/s2;->v(Ljava/lang/String;)Lio/bidmachine/BidToken;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    new-instance v1, Lio/bidmachine/o2;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lio/bidmachine/o2;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    invoke-virtual {v1}, Lio/bidmachine/BidToken;->getAdRequest()Lio/bidmachine/AdRequest;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method private static k(Lio/bidmachine/protobuf/ResponsePayload;)Ljava/lang/String;
    .locals 2
    .param p0    # Lio/bidmachine/protobuf/ResponsePayload;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "tokenHashValue"

    .line 19
    .line 20
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/explorestack/protobuf/Value;

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStringValue()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    return-object p0

    .line 34
    :catchall_0
    return-object v0
.end method

.method static l(Lio/bidmachine/AdsFormat;)Lio/bidmachine/protobuf/TokenConfiguration;
    .locals 1
    .param p0    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lio/bidmachine/s2;->b:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lio/bidmachine/protobuf/TokenConfiguration;

    .line 12
    .line 13
    return-object p0
.end method

.method private static synthetic m(Lio/bidmachine/protobuf/sdk/Placement$Builder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/explorestack/protobuf/StringValue;->of(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setPlacementId(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic n(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lio/bidmachine/CustomParams;->fillStructBuilder(Lcom/explorestack/protobuf/Struct$Builder;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setCustomData(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static synthetic o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BidTokenId from bidPayload - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BidToken is null by bidTokenId - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic q(Lio/bidmachine/BidToken;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "BidTokenId - %s"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static r(Lio/bidmachine/AdsFormat;)Lio/bidmachine/AdRequest;
    .locals 1
    .param p0    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsFormat;",
            ")",
            "Lio/bidmachine/AdRequest<",
            "***>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/s2$a;->a:[I

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
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :pswitch_0
    new-instance p0, Lio/bidmachine/nativead/NativeRequest$Builder;

    .line 16
    .line 17
    invoke-direct {p0}, Lio/bidmachine/nativead/NativeRequest$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lio/bidmachine/MediaAssetType;->All:Lio/bidmachine/MediaAssetType;

    .line 21
    .line 22
    filled-new-array {v0}, [Lio/bidmachine/MediaAssetType;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/NativeRequest$Builder;->c([Lio/bidmachine/MediaAssetType;)Lio/bidmachine/nativead/NativeRequest$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeRequest$Builder;->build()Lio/bidmachine/AdRequest;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :pswitch_1
    new-instance p0, Lvq/c$b;

    .line 37
    .line 38
    invoke-direct {p0}, Lvq/c$b;-><init>()V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lvq/c$b;

    .line 48
    .line 49
    invoke-virtual {p0}, Lvq/c$b;->build()Lio/bidmachine/AdRequest;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :pswitch_2
    new-instance p0, Lvq/c$b;

    .line 56
    .line 57
    invoke-direct {p0}, Lvq/c$b;-><init>()V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Lvq/c$b;

    .line 67
    .line 68
    invoke-virtual {p0}, Lvq/c$b;->build()Lio/bidmachine/AdRequest;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_3
    new-instance p0, Lvq/c$b;

    .line 75
    .line 76
    invoke-direct {p0}, Lvq/c$b;-><init>()V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Lvq/c$b;

    .line 86
    .line 87
    invoke-virtual {p0}, Lvq/c$b;->build()Lio/bidmachine/AdRequest;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    goto :goto_0

    .line 92
    :pswitch_4
    new-instance p0, Lxm/c$b;

    .line 93
    .line 94
    invoke-direct {p0}, Lxm/c$b;-><init>()V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lxm/c$b;->c(Lio/bidmachine/AdContentType;)Lxm/c$b;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lxm/c$b;->build()Lio/bidmachine/AdRequest;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    goto :goto_0

    .line 108
    :pswitch_5
    new-instance p0, Lxm/c$b;

    .line 109
    .line 110
    invoke-direct {p0}, Lxm/c$b;-><init>()V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lxm/c$b;->c(Lio/bidmachine/AdContentType;)Lxm/c$b;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lxm/c$b;->build()Lio/bidmachine/AdRequest;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    goto :goto_0

    .line 124
    :pswitch_6
    new-instance p0, Lxm/c$b;

    .line 125
    .line 126
    invoke-direct {p0}, Lxm/c$b;-><init>()V

    .line 127
    .line 128
    .line 129
    sget-object v0, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lxm/c$b;->c(Lio/bidmachine/AdContentType;)Lxm/c$b;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Lxm/c$b;->build()Lio/bidmachine/AdRequest;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    goto :goto_0

    .line 140
    :pswitch_7
    new-instance p0, Lnm/b$c;

    .line 141
    .line 142
    invoke-direct {p0}, Lnm/b$c;-><init>()V

    .line 143
    .line 144
    .line 145
    sget-object v0, Lio/bidmachine/banner/BannerSize;->Size_728x90:Lio/bidmachine/banner/BannerSize;

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lnm/b$c;->c(Lio/bidmachine/banner/BannerSize;)Lnm/b$c;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Lnm/b$c;->build()Lio/bidmachine/AdRequest;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    goto :goto_0

    .line 156
    :pswitch_8
    new-instance p0, Lnm/b$c;

    .line 157
    .line 158
    invoke-direct {p0}, Lnm/b$c;-><init>()V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lio/bidmachine/banner/BannerSize;->Size_300x250:Lio/bidmachine/banner/BannerSize;

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Lnm/b$c;->c(Lio/bidmachine/banner/BannerSize;)Lnm/b$c;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0}, Lnm/b$c;->build()Lio/bidmachine/AdRequest;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    goto :goto_0

    .line 172
    :pswitch_9
    new-instance p0, Lnm/b$c;

    .line 173
    .line 174
    invoke-direct {p0}, Lnm/b$c;-><init>()V

    .line 175
    .line 176
    .line 177
    sget-object v0, Lio/bidmachine/banner/BannerSize;->Size_320x50:Lio/bidmachine/banner/BannerSize;

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lnm/b$c;->c(Lio/bidmachine/banner/BannerSize;)Lnm/b$c;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p0}, Lnm/b$c;->build()Lio/bidmachine/AdRequest;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    :goto_0
    return-object p0

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static s(Lio/bidmachine/AdsFormat;)Lio/bidmachine/protobuf/TokenConfiguration;
    .locals 1
    .param p0    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lio/bidmachine/s2;->l(Lio/bidmachine/AdsFormat;)Lio/bidmachine/protobuf/TokenConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/AdsFormat;->getParent()Lio/bidmachine/AdsFormat;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lio/bidmachine/s2;->l(Lio/bidmachine/AdsFormat;)Lio/bidmachine/protobuf/TokenConfiguration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lio/bidmachine/protobuf/TokenConfiguration;->newBuilder()Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/16 v0, 0x12c

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->setExpirationTime(I)Lio/bidmachine/protobuf/TokenConfiguration$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lio/bidmachine/protobuf/TokenConfiguration$Builder;->build()Lio/bidmachine/protobuf/TokenConfiguration;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    return-object v0
.end method

.method private static t(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Lio/bidmachine/AdsFormat;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p2}, Lio/bidmachine/s2;->r(Lio/bidmachine/AdsFormat;)Lio/bidmachine/AdRequest;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->registerAndInitializeCoreNetworks(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lio/bidmachine/s2;->s(Lio/bidmachine/AdsFormat;)Lio/bidmachine/protobuf/TokenConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration;->getAdNetworksList()Lcom/explorestack/protobuf/m1;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, p0, v2, v3}, Lio/bidmachine/AdRequest;->collectPlacementFormats(Landroid/content/Context;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/explorestack/protobuf/Message$Builder;

    .line 46
    .line 47
    instance-of v4, v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 48
    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    check-cast v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->getExtProtoList()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Lio/bidmachine/s2;->i(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    instance-of v4, v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    check-cast v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->getExtProtoList()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Lio/bidmachine/s2;->i(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->getAdUnitsList()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_5

    .line 84
    .line 85
    new-instance p0, Lio/bidmachine/BidToken;

    .line 86
    .line 87
    invoke-virtual {p2}, Lio/bidmachine/protobuf/TokenConfiguration;->getExpirationTime()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    new-instance v2, Lio/bidmachine/s2$b;

    .line 92
    .line 93
    invoke-direct {v2, v3}, Lio/bidmachine/s2$b;-><init>(Lio/bidmachine/s2$a;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0, p2, v2}, Lio/bidmachine/BidToken;-><init>(Lio/bidmachine/AdRequest;ILio/bidmachine/ExpirationListener;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0}, Lio/bidmachine/s2;->z(Lio/bidmachine/BidToken;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getPlacementBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2, v1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->getId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setTokenHashValue(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 114
    .line 115
    .line 116
    const-string p2, "BidTokenManager"

    .line 117
    .line 118
    new-instance v0, Lio/bidmachine/r2;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Lio/bidmachine/r2;-><init>(Lio/bidmachine/BidToken;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p2, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catchall_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->getTokenHashValue()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Lio/bidmachine/s2;->v(Ljava/lang/String;)Lio/bidmachine/BidToken;

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_1
    return-void
.end method

.method static u(Lio/bidmachine/BidToken;)Lio/bidmachine/BidToken;
    .locals 0
    .param p0    # Lio/bidmachine/BidToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lio/bidmachine/s2;->v(Ljava/lang/String;)Lio/bidmachine/BidToken;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method static v(Ljava/lang/String;)Lio/bidmachine/BidToken;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/s2;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/BidToken;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->stopExpiration()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object p0
.end method

.method private static w(Lio/bidmachine/AdsFormat;Lfr/a;)V
    .locals 0
    .param p0    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/s2;->A(Lio/bidmachine/AdsFormat;Lfr/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static x(Lio/bidmachine/AdsFormat;)V
    .locals 1
    .param p0    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lio/bidmachine/s2;->A(Lio/bidmachine/AdsFormat;Lfr/a;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static y(Ljava/util/List;)V
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/s2;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lio/bidmachine/protobuf/TokenConfiguration;

    .line 23
    .line 24
    invoke-virtual {v0}, Lio/bidmachine/protobuf/TokenConfiguration;->getType()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lio/bidmachine/AdsFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v2, Lio/bidmachine/s2;->b:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method static z(Lio/bidmachine/BidToken;)V
    .locals 2
    .param p0    # Lio/bidmachine/BidToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/s2;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lio/bidmachine/BidToken;->startExpiration()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
