.class Lom/g;
.super Ljava/lang/Object;
.source "HeaderBiddingPlacementBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lom/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdRequestParamsType::",
        "Lxq/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

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
    const-class v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method


# virtual methods
.method a(Lcom/explorestack/protobuf/adcom/Ad;)Llp/b;
    .locals 2
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lom/g;->c(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lom/c;

    .line 8
    .line 9
    invoke-direct {v1, p1, v0}, Lom/c;-><init>(Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return-object v1
.end method

.method b(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Ljava/util/Collection;Ljava/util/List;I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 16
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
    .param p4    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/AdContentType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;I)",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p3

    .line 2
    .line 3
    move/from16 v0, p7

    .line 4
    .line 5
    new-instance v9, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p5 .. p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v10

    .line 14
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lio/bidmachine/NetworkConfig;

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    instance-of v2, v11, Lio/bidmachine/HeaderBiddingAdapter;

    .line 35
    .line 36
    move-object/from16 v12, p1

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v11, v12}, Lio/bidmachine/NetworkAdapter;->isInitialized(Lio/bidmachine/ContextProvider;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    move-object/from16 v13, p2

    .line 45
    .line 46
    move-object/from16 v14, p4

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1, v8, v13, v14, v11}, Lio/bidmachine/NetworkConfig;->createNetworkAdUnitList(Lio/bidmachine/AdsType;Lxq/d;Lio/bidmachine/AdContentType;Lio/bidmachine/NetworkAdapter;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v15

    .line 58
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v7, v1

    .line 69
    check-cast v7, Lio/bidmachine/NetworkAdUnit;

    .line 70
    .line 71
    move-object/from16 v6, p6

    .line 72
    .line 73
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    new-instance v5, Lom/g$a;

    .line 77
    .line 78
    move-object v3, v11

    .line 79
    check-cast v3, Lio/bidmachine/HeaderBiddingAdapter;

    .line 80
    .line 81
    move-object v1, v5

    .line 82
    move-object/from16 v2, p1

    .line 83
    .line 84
    move-object/from16 v4, p3

    .line 85
    .line 86
    move-object/from16 p5, v10

    .line 87
    .line 88
    move-object v10, v5

    .line 89
    move-object/from16 v5, p4

    .line 90
    .line 91
    move-object/from16 v6, p2

    .line 92
    .line 93
    invoke-direct/range {v1 .. v7}, Lom/g$a;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/HeaderBiddingAdapter;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Lxq/d;Lio/bidmachine/NetworkAdUnit;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-object/from16 v10, p5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_0
    :goto_2
    move-object/from16 p5, v10

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_1
    move-object/from16 v13, p2

    .line 106
    .line 107
    move-object/from16 v14, p4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_3
    move-object/from16 v10, p5

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    const/4 v2, 0x0

    .line 118
    if-nez v1, :cond_a

    .line 119
    .line 120
    new-instance v1, Lio/bidmachine/BidMachineTrackingObject;

    .line 121
    .line 122
    invoke-direct {v1}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    .line 123
    .line 124
    .line 125
    sget-object v3, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    .line 126
    .line 127
    invoke-interface {v1, v3}, Lwq/k;->eventStart(Lio/bidmachine/TrackEventType;)V

    .line 128
    .line 129
    .line 130
    :try_start_0
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 131
    .line 132
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_3

    .line 148
    .line 149
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    check-cast v5, Lom/g$a;

    .line 154
    .line 155
    invoke-virtual {v5, v3}, Lom/g$a;->f(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    goto :goto_8

    .line 161
    :cond_3
    if-lez v0, :cond_4

    .line 162
    .line 163
    int-to-long v4, v0

    .line 164
    goto :goto_5

    .line 165
    :cond_4
    const-wide/16 v4, 0xa

    .line 166
    .line 167
    :goto_5
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 168
    .line 169
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .line 171
    .line 172
    goto :goto_6

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :try_start_2
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    move-object v3, v2

    .line 182
    :cond_5
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_8

    .line 187
    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    check-cast v4, Lom/g$a;

    .line 193
    .line 194
    invoke-virtual {v4}, Lom/g$a;->h()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    if-eqz v5, :cond_7

    .line 199
    .line 200
    if-nez v3, :cond_6

    .line 201
    .line 202
    new-instance v3, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    :cond_6
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_7
    invoke-virtual {v4}, Lom/g$a;->i()Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-nez v5, :cond_5

    .line 216
    .line 217
    invoke-virtual {v4}, Lom/g$a;->e()V

    .line 218
    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_8
    invoke-static {v3}, Lio/bidmachine/core/g;->I(Ljava/util/Collection;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_9

    .line 226
    .line 227
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0, v3}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->addAllAdUnits(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    .line 233
    .line 234
    sget-object v3, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    .line 235
    .line 236
    invoke-interface {v1, v3, v8, v2, v2}, Lwq/k;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    .line 237
    .line 238
    .line 239
    return-object v0

    .line 240
    :cond_9
    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    .line 241
    .line 242
    invoke-interface {v1, v0, v8, v2, v2}, Lwq/k;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    .line 243
    .line 244
    .line 245
    goto :goto_9

    .line 246
    :goto_8
    sget-object v3, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    .line 247
    .line 248
    invoke-interface {v1, v3, v8, v2, v2}, Lwq/k;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :cond_a
    :goto_9
    return-object v2
.end method

.method c(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
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
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExtProtoList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p0, v1}, Lom/g;->d(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getExtProtoList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Lom/g;->d(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_1
    if-nez v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExtProtoList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lom/g;->d(Ljava/util/List;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_2
    return-object v1
.end method
