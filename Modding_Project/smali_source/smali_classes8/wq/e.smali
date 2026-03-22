.class public Lwq/e;
.super Ljava/lang/Object;
.source "EventTrackerImpl.java"

# interfaces
.implements Lwq/b;


# instance fields
.field private a:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lwq/e;-><init>(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V
    .locals 0
    .param p1    # Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lwq/e;->k(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V

    return-void
.end method

.method public static synthetic g(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lwq/e;->i(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(ILfr/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwq/e;->j(ILfr/a;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic i(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    const-string v0, "Sending event to server - %s"

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

.method private static synthetic j(ILfr/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "Sending error event to server - %s, error - %s"

    .line 10
    .line 11
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static l(Lfr/a;)Lio/bidmachine/protobuf/sdk/Error$Data;
    .locals 2
    .param p0    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error$Data;->newBuilder()Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lfr/a;->e()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->setCode(I)Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lfr/a;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->setDescription(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->build()Lio/bidmachine/protobuf/sdk/Error$Data;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private static m(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;IJJLio/bidmachine/AdsType;Ljava/lang/String;Ljava/lang/Double;Lcom/explorestack/protobuf/Struct;Lfr/a;)Z
    .locals 3
    .param p0    # Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/explorestack/protobuf/Struct;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_9

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getActionsList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    return v0

    .line 31
    :cond_1
    if-nez p10, :cond_2

    .line 32
    .line 33
    new-instance v2, Lwq/c;

    .line 34
    .line 35
    invoke-direct {v2, p1}, Lwq/c;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_2
    new-instance v2, Lwq/d;

    .line 46
    .line 47
    invoke-direct {v2, p1, p10}, Lwq/d;-><init>(ILfr/a;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {}, Lio/bidmachine/protobuf/analytics/events/SDKEvent;->newBuilder()Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setAction(I)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getContext()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setContext(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p2, p3}, Lfr/e;->o(J)Lcom/explorestack/protobuf/Timestamp;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setStartTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p4, p5}, Lfr/e;->o(J)Lcom/explorestack/protobuf/Timestamp;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setFinishTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-eqz p6, :cond_3

    .line 86
    .line 87
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->newBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p6}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/StringValue$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setAdType(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_4

    .line 111
    .line 112
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->newBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, p7}, Lcom/explorestack/protobuf/StringValue$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setNetwork(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 125
    .line 126
    .line 127
    :cond_4
    if-eqz p8, :cond_5

    .line 128
    .line 129
    invoke-virtual {p8}, Ljava/lang/Double;->doubleValue()D

    .line 130
    .line 131
    .line 132
    move-result-wide p1

    .line 133
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setPrice(D)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 134
    .line 135
    .line 136
    :cond_5
    if-eqz p9, :cond_6

    .line 137
    .line 138
    invoke-virtual {p0, p9}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setCustomParams(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 139
    .line 140
    .line 141
    :cond_6
    if-eqz p10, :cond_8

    .line 142
    .line 143
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->newBuilder()Lio/bidmachine/protobuf/sdk/Error$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p10}, Lwq/e;->l(Lfr/a;)Lio/bidmachine/protobuf/sdk/Error$Data;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p1, p2}, Lio/bidmachine/protobuf/sdk/Error$Builder;->setError(Lio/bidmachine/protobuf/sdk/Error$Data;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p10}, Lfr/a;->f()Lfr/a;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    if-eqz p2, :cond_7

    .line 160
    .line 161
    invoke-static {p2}, Lwq/e;->l(Lfr/a;)Lio/bidmachine/protobuf/sdk/Error$Data;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p1, p2}, Lio/bidmachine/protobuf/sdk/Error$Builder;->setReason(Lio/bidmachine/protobuf/sdk/Error$Data;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    .line 166
    .line 167
    .line 168
    :cond_7
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->setError(Lio/bidmachine/protobuf/sdk/Error$Builder;)Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;

    .line 169
    .line 170
    .line 171
    :cond_8
    new-instance p1, Lio/bidmachine/ApiRequest$Builder;

    .line 172
    .line 173
    invoke-direct {p1}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v1}, Lio/bidmachine/ApiRequest$Builder;->url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    sget-object p2, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    .line 181
    .line 182
    invoke-virtual {p1, p2}, Lio/bidmachine/ApiRequest$Builder;->setMethod(Lio/bidmachine/core/NetworkRequest$Method;)Lio/bidmachine/ApiRequest$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    new-instance p2, Lio/bidmachine/ApiRequest$ApiEventDataBinder;

    .line 187
    .line 188
    invoke-direct {p2}, Lio/bidmachine/ApiRequest$ApiEventDataBinder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/events/SDKEvent$Builder;->build()Lio/bidmachine/protobuf/analytics/events/SDKEvent;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {p1, p0}, Lio/bidmachine/ApiRequest$Builder;->setRequestData(Ljava/lang/Object;)Lio/bidmachine/ApiRequest$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {p0}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .line 205
    .line 206
    const/4 p0, 0x1

    .line 207
    return p0

    .line 208
    :goto_1
    invoke-static {p0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    :cond_9
    :goto_2
    return v0
.end method


# virtual methods
.method public a(Lwq/k;Lio/bidmachine/TrackEventType;Lwq/j;Lio/bidmachine/AdsType;Lfr/a;Lwq/a;)V
    .locals 19
    .param p1    # Lwq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lwq/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lwq/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    invoke-virtual/range {p5 .. p5}, Lfr/a;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-virtual/range {p3 .. p3}, Lwq/j;->c()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-virtual/range {p3 .. p3}, Lwq/j;->b()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    move-wide v13, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    move-wide v13, v0

    .line 27
    :goto_0
    if-eqz p6, :cond_2

    .line 28
    .line 29
    invoke-virtual/range {p6 .. p6}, Lwq/a;->c()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual/range {p6 .. p6}, Lwq/a;->d()Ljava/lang/Double;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual/range {p6 .. p6}, Lwq/a;->b()Lcom/explorestack/protobuf/Struct;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    move-object v15, v2

    .line 42
    move-object/from16 v16, v3

    .line 43
    .line 44
    move-object/from16 v17, v4

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v2, 0x0

    .line 48
    move-object v15, v2

    .line 49
    move-object/from16 v16, v15

    .line 50
    .line 51
    move-object/from16 v17, v16

    .line 52
    .line 53
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/TrackEventType;->getActionValue()I

    .line 54
    .line 55
    .line 56
    move-result v18

    .line 57
    invoke-interface/range {p1 .. p1}, Lwq/k;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move/from16 v3, v18

    .line 62
    .line 63
    move-wide v4, v0

    .line 64
    move-wide v6, v13

    .line 65
    move-object/from16 v8, p4

    .line 66
    .line 67
    move-object v9, v15

    .line 68
    move-object/from16 v10, v16

    .line 69
    .line 70
    move-object/from16 v11, v17

    .line 71
    .line 72
    move-object/from16 v12, p5

    .line 73
    .line 74
    invoke-static/range {v2 .. v12}, Lwq/e;->m(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;IJJLio/bidmachine/AdsType;Ljava/lang/String;Ljava/lang/Double;Lcom/explorestack/protobuf/Struct;Lfr/a;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    move-object/from16 v12, p0

    .line 81
    .line 82
    iget-object v2, v12, Lwq/e;->a:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 83
    .line 84
    move/from16 v3, v18

    .line 85
    .line 86
    move-wide v4, v0

    .line 87
    move-wide v6, v13

    .line 88
    move-object/from16 v8, p4

    .line 89
    .line 90
    move-object v9, v15

    .line 91
    move-object/from16 v10, v16

    .line 92
    .line 93
    move-object/from16 v11, v17

    .line 94
    .line 95
    move-object/from16 v12, p5

    .line 96
    .line 97
    invoke-static/range {v2 .. v12}, Lwq/e;->m(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;IJJLio/bidmachine/AdsType;Ljava/lang/String;Ljava/lang/Double;Lcom/explorestack/protobuf/Struct;Lfr/a;)Z

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method

.method public k(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V
    .locals 1
    .param p1    # Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/AdExtension$EventConfiguration;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :cond_1
    :goto_0
    iput-object p1, p0, Lwq/e;->a:Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 16
    .line 17
    return-void
.end method
