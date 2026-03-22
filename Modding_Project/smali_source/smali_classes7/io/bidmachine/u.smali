.class Lio/bidmachine/u;
.super Ljava/lang/Object;
.source "AdResponse.java"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/u$d;,
        Lio/bidmachine/u$e;
    }
.end annotation


# static fields
.field private static final x:J


# instance fields
.field private final a:Lfr/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:J

.field private final c:Lio/bidmachine/AdRequestParameters;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lio/bidmachine/NetworkAdUnitManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Lcom/explorestack/protobuf/Struct;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/explorestack/protobuf/adcom/Ad;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Llp/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final j:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final k:Lio/bidmachine/protobuf/AdCacheControl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:J

.field final m:Lio/bidmachine/BidMachineTrackingObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final n:Lio/bidmachine/NetworkAdUnit;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final o:Lio/bidmachine/ExpirationHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final p:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final r:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/AdRequest<",
            "***>;>;>;"
        }
    .end annotation
.end field

.field private volatile s:Lio/bidmachine/AdResponseStatus;

.field final t:Lio/bidmachine/u$d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private volatile u:Llp/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field v:Lio/bidmachine/ExpirationHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1d

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lio/bidmachine/u;->x:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lcom/explorestack/protobuf/openrtb/Response;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkAdapter;)V
    .locals 15
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/NetworkAdUnitManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/explorestack/protobuf/openrtb/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/EnumMap;

    .line 8
    .line 9
    const-class v3, Lio/bidmachine/TrackEventType;

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    iput-object v2, v0, Lio/bidmachine/u;->p:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object v2, v0, Lio/bidmachine/u;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, v0, Lio/bidmachine/u;->r:Ljava/util/List;

    .line 30
    .line 31
    sget-object v2, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    .line 32
    .line 33
    iput-object v2, v0, Lio/bidmachine/u;->s:Lio/bidmachine/AdResponseStatus;

    .line 34
    .line 35
    new-instance v2, Lio/bidmachine/u$d;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lio/bidmachine/u$d;-><init>(Lio/bidmachine/u;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, v0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 41
    .line 42
    new-instance v4, Lfr/j;

    .line 43
    .line 44
    const-string v5, "AdResponse"

    .line 45
    .line 46
    invoke-direct {v4, v5}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v4, v0, Lio/bidmachine/u;->a:Lfr/j;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    iput-wide v4, v0, Lio/bidmachine/u;->b:J

    .line 56
    .line 57
    move-object/from16 v4, p1

    .line 58
    .line 59
    iput-object v4, v0, Lio/bidmachine/u;->c:Lio/bidmachine/AdRequestParameters;

    .line 60
    .line 61
    iput-object v1, v0, Lio/bidmachine/u;->d:Lio/bidmachine/NetworkAdUnitManager;

    .line 62
    .line 63
    invoke-virtual/range {p3 .. p3}, Lcom/explorestack/protobuf/openrtb/Response;->getId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    iput-object v5, v0, Lio/bidmachine/u;->e:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual/range {p4 .. p4}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExt()Lcom/explorestack/protobuf/Struct;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iput-object v5, v0, Lio/bidmachine/u;->f:Lcom/explorestack/protobuf/Struct;

    .line 74
    .line 75
    invoke-virtual/range {p5 .. p5}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iput-object v5, v0, Lio/bidmachine/u;->g:Ljava/lang/String;

    .line 80
    .line 81
    move-object/from16 v5, p6

    .line 82
    .line 83
    iput-object v5, v0, Lio/bidmachine/u;->h:Lcom/explorestack/protobuf/adcom/Ad;

    .line 84
    .line 85
    invoke-static/range {p6 .. p6}, Lfr/e;->f(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/AdExtension;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    new-instance v14, Lio/bidmachine/c1;

    .line 90
    .line 91
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    move-object v6, v14

    .line 96
    move-object/from16 v8, p4

    .line 97
    .line 98
    move-object/from16 v9, p5

    .line 99
    .line 100
    move-object/from16 v10, p6

    .line 101
    .line 102
    move-object/from16 v11, p7

    .line 103
    .line 104
    move-object v12, v13

    .line 105
    invoke-direct/range {v6 .. v12}, Lio/bidmachine/c1;-><init>(Lio/bidmachine/AdsType;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/protobuf/AdExtension;)V

    .line 106
    .line 107
    .line 108
    iput-object v14, v0, Lio/bidmachine/u;->i:Llp/c;

    .line 109
    .line 110
    invoke-virtual {p0, v13}, Lio/bidmachine/u;->z(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    iput-object v5, v0, Lio/bidmachine/u;->j:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 115
    .line 116
    invoke-direct {p0, v13}, Lio/bidmachine/u;->y(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdCacheControl;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    iput-object v5, v0, Lio/bidmachine/u;->k:Lio/bidmachine/protobuf/AdCacheControl;

    .line 121
    .line 122
    invoke-virtual/range {p5 .. p5}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    int-to-long v6, v5

    .line 127
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    int-to-long v8, v5

    .line 136
    sget-wide v10, Lio/bidmachine/u;->x:J

    .line 137
    .line 138
    invoke-static/range {v6 .. v11}, Lio/bidmachine/core/g;->B(JJJ)J

    .line 139
    .line 140
    .line 141
    move-result-wide v5

    .line 142
    const-wide/16 v7, 0x3e8

    .line 143
    .line 144
    mul-long/2addr v5, v7

    .line 145
    iput-wide v5, v0, Lio/bidmachine/u;->l:J

    .line 146
    .line 147
    new-instance v7, Lio/bidmachine/u$a;

    .line 148
    .line 149
    invoke-interface {v14}, Llp/c;->getId()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-direct {v7, p0, v8}, Lio/bidmachine/u$a;-><init>(Lio/bidmachine/u;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iput-object v7, v0, Lio/bidmachine/u;->m:Lio/bidmachine/BidMachineTrackingObject;

    .line 157
    .line 158
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/AdRequestParameters;->getAdsFormat()Lio/bidmachine/AdsFormat;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-interface {v14}, Llp/c;->b()Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    move-object/from16 v8, p7

    .line 167
    .line 168
    invoke-virtual {v1, v8, v4, v7}, Lio/bidmachine/NetworkAdUnitManager;->findOrAddWinnerNetworkAdUnit(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkAdUnit;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v0, Lio/bidmachine/u;->n:Lio/bidmachine/NetworkAdUnit;

    .line 173
    .line 174
    new-instance v1, Lio/bidmachine/ExpirationHandler;

    .line 175
    .line 176
    invoke-direct {v1, v5, v6, p0}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;)V

    .line 177
    .line 178
    .line 179
    iput-object v1, v0, Lio/bidmachine/u;->o:Lio/bidmachine/ExpirationHandler;

    .line 180
    .line 181
    if-eqz v13, :cond_0

    .line 182
    .line 183
    invoke-virtual {v13}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingTimeout()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    goto :goto_0

    .line 188
    :cond_0
    move v1, v3

    .line 189
    :goto_0
    if-lez v1, :cond_1

    .line 190
    .line 191
    new-instance v4, Lio/bidmachine/ExpirationHandler;

    .line 192
    .line 193
    int-to-long v5, v1

    .line 194
    new-instance v1, Lio/bidmachine/u$e;

    .line 195
    .line 196
    invoke-direct {v1, v2}, Lio/bidmachine/u$e;-><init>(Lio/bidmachine/AdProcessCallback;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {v4, v5, v6, v1}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_1
    const/4 v4, 0x0

    .line 204
    :goto_1
    iput-object v4, v0, Lio/bidmachine/u;->v:Lio/bidmachine/ExpirationHandler;

    .line 205
    .line 206
    if-eqz v13, :cond_2

    .line 207
    .line 208
    invoke-virtual {v13}, Lio/bidmachine/protobuf/AdExtension;->getCridMonitoringEnabled()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_2

    .line 213
    .line 214
    const/4 v3, 0x1

    .line 215
    :cond_2
    iput-boolean v3, v0, Lio/bidmachine/u;->w:Z

    .line 216
    .line 217
    move-object/from16 v1, p5

    .line 218
    .line 219
    invoke-direct {p0, v1}, Lio/bidmachine/u;->x(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)V

    .line 220
    .line 221
    .line 222
    invoke-direct {p0}, Lio/bidmachine/u;->b0()V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method private synthetic M()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "attachRequest - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private synthetic N()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "destroy - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private synthetic O()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "detachRequest - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private synthetic P()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "notifyExpired - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private synthetic Q()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "onLoadStart - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private synthetic R()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "release - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private synthetic S()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/u;->A()Llp/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Llp/a;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u;->N()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u;->Q()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->o:Lio/bidmachine/ExpirationHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u;->P()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u;->R()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u;->O()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u;->M()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic h(Lio/bidmachine/u;Llp/a;)Llp/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/u;->u:Llp/a;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic i(Lio/bidmachine/u;)Lfr/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/u;->a:Lfr/j;

    .line 2
    .line 3
    return-object p0
.end method

.method private l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/u;->d0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/u;->L()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private x(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)V
    .locals 3
    .param p1    # Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->p:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/TrackEventType;->MediationWin:Lio/bidmachine/TrackEventType;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPurl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2}, Lfr/e;->a(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/u;->p:Ljava/util/Map;

    .line 13
    .line 14
    sget-object v1, Lio/bidmachine/TrackEventType;->MediationLoss:Lio/bidmachine/TrackEventType;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getLurl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, v1, p1}, Lfr/e;->a(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private y(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdCacheControl;
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/AdExtension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v1, Lio/bidmachine/protobuf/AdCacheControl;->UNRECOGNIZED:Lio/bidmachine/protobuf/AdCacheControl;

    .line 10
    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_1
    return-object v0
.end method


# virtual methods
.method public A()Llp/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->u:Llp/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Lio/bidmachine/AdRequestParameters;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->c:Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Lio/bidmachine/AdsType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->c:Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public D()Llp/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->i:Llp/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->j:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public F()D
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->i:Llp/c;

    .line 2
    .line 3
    invoke-interface {v0}, Llp/c;->getPrice()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public declared-synchronized G()Lio/bidmachine/AdResponseStatus;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/u;->s:Lio/bidmachine/AdResponseStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public H(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    return-object p1
.end method

.method public I(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 2
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/u;->A()Llp/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Llp/a;->getParams()Llp/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Llp/b;->d(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_1
    return-object v1
.end method

.method public J()Lio/bidmachine/NetworkAdUnit;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->n:Lio/bidmachine/NetworkAdUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method public K()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/u;->A()Llp/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 8
    .line 9
    iget-object v0, v0, Lio/bidmachine/u$d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public declared-synchronized T(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/BidMachineAd;Lio/bidmachine/AdProcessCallback;)V
    .locals 7
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/BidMachineAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p2}, Lio/bidmachine/u;->V(Lio/bidmachine/AdRequest;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 6
    .line 7
    invoke-virtual {v0, p4}, Lio/bidmachine/u$d;->q(Lio/bidmachine/AdProcessCallback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lio/bidmachine/u;->K()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p4}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    :try_start_1
    iget-object p4, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 25
    .line 26
    iget-object p4, p4, Lio/bidmachine/u$d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 30
    .line 31
    .line 32
    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    if-eqz p4, :cond_1

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_2
    iget-object p4, p0, Lio/bidmachine/u;->m:Lio/bidmachine/BidMachineTrackingObject;

    .line 38
    .line 39
    sget-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    .line 40
    .line 41
    invoke-virtual {p4, v0}, Lio/bidmachine/BidMachineTrackingObject;->eventStart(Lio/bidmachine/TrackEventType;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lio/bidmachine/u;->L()Z

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    if-eqz p4, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 51
    .line 52
    sget-object p2, Lfr/a;->k:Lfr/a;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lio/bidmachine/u$d;->processLoadFail(Lfr/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/u;->d0()Z

    .line 60
    .line 61
    .line 62
    move-result p4

    .line 63
    if-eqz p4, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 66
    .line 67
    sget-object p2, Lfr/a;->l:Lfr/a;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lio/bidmachine/u$d;->processLoadFail(Lfr/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :cond_3
    :try_start_4
    invoke-virtual {p2}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    iget-object v0, p0, Lio/bidmachine/u;->h:Lcom/explorestack/protobuf/adcom/Ad;

    .line 79
    .line 80
    invoke-virtual {p4, v0}, Lio/bidmachine/AdsType;->findNetworkAdapter(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/NetworkAdapter;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-nez v4, :cond_4

    .line 85
    .line 86
    iget-object p1, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 87
    .line 88
    const-string p2, "Failed to get adapter by response"

    .line 89
    .line 90
    invoke-static {p2}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Lio/bidmachine/u$d;->processLoadFail(Lfr/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    .line 96
    .line 97
    monitor-exit p0

    .line 98
    return-void

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    :try_start_5
    invoke-virtual {p2}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    iget-object v0, p0, Lio/bidmachine/u;->h:Lcom/explorestack/protobuf/adcom/Ad;

    .line 106
    .line 107
    invoke-virtual {p4, v0}, Lio/bidmachine/AdsType;->createAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    if-eqz v5, :cond_7

    .line 112
    .line 113
    invoke-virtual {v5}, Llp/b;->f()Z

    .line 114
    .line 115
    .line 116
    move-result p4

    .line 117
    if-nez p4, :cond_5

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    iget-object v6, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 121
    .line 122
    move-object v1, p3

    .line 123
    move-object v2, p1

    .line 124
    move-object v3, p2

    .line 125
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/BidMachineAd;->createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Llp/b;Lio/bidmachine/AdProcessCallback;)Llp/a;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    if-nez p3, :cond_6

    .line 130
    .line 131
    iget-object p1, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 132
    .line 133
    const-string p2, "Failed to create ad object by response"

    .line 134
    .line 135
    invoke-static {p2}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p1, p2}, Lio/bidmachine/u$d;->processLoadFail(Lfr/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 140
    .line 141
    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 144
    :cond_6
    :try_start_6
    iput-object p3, p0, Lio/bidmachine/u;->u:Llp/a;

    .line 145
    .line 146
    invoke-virtual {p0}, Lio/bidmachine/u;->a0()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Lio/bidmachine/AdRequest;->obtainUnifiedRequestParams()Lxq/d;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    iget-object p4, p0, Lio/bidmachine/u;->n:Lio/bidmachine/NetworkAdUnit;

    .line 154
    .line 155
    invoke-interface {p3, p1, p2, p4}, Llp/a;->load(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/NetworkAdUnit;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    :goto_0
    iget-object p1, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 160
    .line 161
    const-string p2, "Failed to get parameters by response"

    .line 162
    .line 163
    invoke-static {p2}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Lio/bidmachine/u$d;->processLoadFail(Lfr/a;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 168
    .line 169
    .line 170
    monitor-exit p0

    .line 171
    return-void

    .line 172
    :goto_1
    :try_start_7
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    iget-object p2, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 176
    .line 177
    const-string p3, "Exception processing response"

    .line 178
    .line 179
    invoke-static {p3, p1}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p2, p1}, Lio/bidmachine/u$d;->processLoadFail(Lfr/a;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 184
    .line 185
    .line 186
    :goto_2
    monitor-exit p0

    .line 187
    return-void

    .line 188
    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 189
    throw p1
.end method

.method U(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/q;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/q;-><init>(Lio/bidmachine/u;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/u;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/bidmachine/u;->c0()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lio/bidmachine/u;->w(Lio/bidmachine/AdRequest;)V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lio/bidmachine/u;->q()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public V(Lio/bidmachine/AdRequest;)V
    .locals 2
    .param p1    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/m;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/m;-><init>(Lio/bidmachine/u;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lio/bidmachine/u;->w(Lio/bidmachine/AdRequest;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method W()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/u;->c0()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/bidmachine/w0;->e()Lio/bidmachine/w0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lio/bidmachine/w0;->n(Lio/bidmachine/u;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/n;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/n;-><init>(Lio/bidmachine/u;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/bidmachine/w0;->e()Lio/bidmachine/w0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0}, Lio/bidmachine/u;->l()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lio/bidmachine/w0;->d(Lio/bidmachine/u;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lio/bidmachine/u;->n()V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lio/bidmachine/u;->Z(Lio/bidmachine/AdResponseStatus;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lio/bidmachine/o;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lio/bidmachine/o;-><init>(Lio/bidmachine/u;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/u;->q()V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public Y(Lio/bidmachine/AdProcessCallback;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/u$d;->O(Lio/bidmachine/AdProcessCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized Z(Lio/bidmachine/AdResponseStatus;)V
    .locals 0
    .param p1    # Lio/bidmachine/AdResponseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lio/bidmachine/u;->s:Lio/bidmachine/AdResponseStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method a0()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->v:Lio/bidmachine/ExpirationHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method c0()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->o:Lio/bidmachine/ExpirationHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/u$d;->o(Lio/bidmachine/u$d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public j(Lio/bidmachine/AdRequest;)V
    .locals 2
    .param p1    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/bidmachine/u;->a:Lfr/j;

    .line 5
    .line 6
    new-instance v1, Lio/bidmachine/s;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lio/bidmachine/s;-><init>(Lio/bidmachine/u;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/u;->r:Ljava/util/List;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public k()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/bidmachine/u;->l:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iget-wide v4, p0, Lio/bidmachine/u;->b:J

    .line 8
    .line 9
    sub-long/2addr v2, v4

    .line 10
    sub-long/2addr v0, v2

    .line 11
    return-wide v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->k:Lio/bidmachine/protobuf/AdCacheControl;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/protobuf/AdCacheControl;->AD_CACHE_CONTROL_ENABLED:Lio/bidmachine/protobuf/AdCacheControl;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lio/bidmachine/u;->r:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method o()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->v:Lio/bidmachine/ExpirationHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/u;->v:Lio/bidmachine/ExpirationHandler;

    .line 10
    .line 11
    return-void
.end method

.method public onExpired()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/u$d;->processExpired()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method p()Lcom/explorestack/protobuf/Value;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lio/bidmachine/u;->i:Llp/c;

    .line 10
    .line 11
    invoke-interface {v2}, Llp/c;->getPrice()D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "price"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lio/bidmachine/u;->k()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    long-to-double v2, v2

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "exp"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lio/bidmachine/u;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "request_id"

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, p0, Lio/bidmachine/u;->g:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "bid_id"

    .line 87
    .line 88
    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lio/bidmachine/u;->f:Lcom/explorestack/protobuf/Struct;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->getFieldsCount()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-lez v1, :cond_0

    .line 99
    .line 100
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v2, p0, Lio/bidmachine/u;->f:Lcom/explorestack/protobuf/Struct;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, "seat"

    .line 115
    .line 116
    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 117
    .line 118
    .line 119
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    return-object v0
.end method

.method q()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/t;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/t;-><init>(Lio/bidmachine/u;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lio/bidmachine/w0;->e()Lio/bidmachine/w0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lio/bidmachine/w0;->n(Lio/bidmachine/u;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lio/bidmachine/u;->o()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lio/bidmachine/u;->n()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lio/bidmachine/u;->c0()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 28
    .line 29
    invoke-virtual {v0}, Lio/bidmachine/u$d;->s()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lio/bidmachine/u;->p:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lio/bidmachine/u;->d:Lio/bidmachine/NetworkAdUnitManager;

    .line 38
    .line 39
    invoke-virtual {v0}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkClearAuction()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lio/bidmachine/u;->t:Lio/bidmachine/u$d;

    .line 43
    .line 44
    invoke-static {v0}, Lio/bidmachine/u$d;->p(Lio/bidmachine/u$d;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    sget-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    .line 51
    .line 52
    sget-object v1, Lfr/a;->o:Lfr/a;

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/u;->t(Lio/bidmachine/TrackEventType;Lfr/a;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lio/bidmachine/u;->u:Llp/a;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    sget-object v0, Lio/bidmachine/TrackEventType;->Destroy:Lio/bidmachine/TrackEventType;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lio/bidmachine/u;->s(Lio/bidmachine/TrackEventType;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lio/bidmachine/u;->m:Lio/bidmachine/BidMachineTrackingObject;

    .line 67
    .line 68
    invoke-virtual {v0}, Lwq/h;->clear()V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lio/bidmachine/u$b;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lio/bidmachine/u$b;-><init>(Lio/bidmachine/u;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public r(Lio/bidmachine/AdRequest;)V
    .locals 4
    .param p1    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/bidmachine/u;->a:Lfr/j;

    .line 5
    .line 6
    new-instance v1, Lio/bidmachine/p;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lio/bidmachine/p;-><init>(Lio/bidmachine/u;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lio/bidmachine/u;->r:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lio/bidmachine/AdRequest;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    if-ne v3, p1, :cond_1

    .line 46
    .line 47
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object p1, p0, Lio/bidmachine/u;->r:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lio/bidmachine/u;->r:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Lio/bidmachine/u;->X()V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method s(Lio/bidmachine/TrackEventType;)V
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lio/bidmachine/u;->u(Lio/bidmachine/TrackEventType;Lfr/a;Ljava/util/Map;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method t(Lio/bidmachine/TrackEventType;Lfr/a;)V
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/u;->u(Lio/bidmachine/TrackEventType;Lfr/a;Ljava/util/Map;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->i:Llp/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method u(Lio/bidmachine/TrackEventType;Lfr/a;Ljava/util/Map;)V
    .locals 6
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            "Lfr/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->m:Lio/bidmachine/BidMachineTrackingObject;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/u;->C()Lio/bidmachine/AdsType;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    move-object v1, p1

    .line 8
    move-object v3, p0

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/u;Lfr/a;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method v(Lio/bidmachine/TrackEventType;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/u;->u(Lio/bidmachine/TrackEventType;Lfr/a;Ljava/util/Map;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method w(Lio/bidmachine/AdRequest;)V
    .locals 2
    .param p1    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lio/bidmachine/AdRequest;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    if-eq v1, p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lio/bidmachine/AdRequest;->processExpired()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method z(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/AdExtension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_1
    return-object v0
.end method
