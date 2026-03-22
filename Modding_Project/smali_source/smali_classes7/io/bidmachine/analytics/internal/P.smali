.class public final Lio/bidmachine/analytics/internal/P;
.super Lio/bidmachine/analytics/internal/Y;
.source "SourceFile"


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Lcom/explorestack/protobuf/Struct;

.field private final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/p0;)V
    .locals 7

    .line 3
    sget-object v1, Lio/bidmachine/analytics/internal/o0;->c:Lio/bidmachine/analytics/internal/o0;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/analytics/internal/Y;-><init>(Lio/bidmachine/analytics/internal/o0;Ljava/lang/String;Lio/bidmachine/analytics/internal/p0;Lio/bidmachine/analytics/internal/s;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    iput-object p2, p0, Lio/bidmachine/analytics/internal/P;->f:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lio/bidmachine/analytics/internal/P;->g:Lcom/explorestack/protobuf/Struct;

    .line 7
    iput-object p4, p0, Lio/bidmachine/analytics/internal/P;->h:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/p0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 1
    sget-object p5, Lio/bidmachine/analytics/internal/p0;->g:Lio/bidmachine/analytics/internal/p0$d;

    invoke-virtual {p5}, Lio/bidmachine/analytics/internal/p0$d;->a()Lio/bidmachine/analytics/internal/p0;

    move-result-object p5

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/analytics/internal/P;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/p0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lio/bidmachine/analytics/internal/Y;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/P;->c()Lio/bidmachine/analytics/internal/P;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b()[B
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 2
    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor;->newBuilder()Lio/bidmachine/protobuf/sdk/Monitor$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/bidmachine/analytics/internal/P;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->setName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Monitor$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lio/bidmachine/analytics/internal/P;->h:Ljava/util/List;

    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/16 v3, 0xa

    .line 18
    .line 19
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lio/bidmachine/analytics/internal/Q;

    .line 41
    .line 42
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor$Record;->newBuilder()Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/Q;->a()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v5}, Lio/bidmachine/analytics/internal/b0;->a(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;->setFields(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/Q;->f()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    invoke-static {v5, v6}, Lio/bidmachine/analytics/internal/b0;->a(J)Lcom/explorestack/protobuf/Timestamp;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v4, v5}, Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;->setTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/Q;->b()Lio/bidmachine/analytics/internal/q0;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->newBuilder()Lio/bidmachine/protobuf/sdk/Error$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/q0;->a()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Lio/bidmachine/protobuf/sdk/Error$Builder;->setName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error$Data;->newBuilder()Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/q0;->c()Lio/bidmachine/analytics/internal/q0$a;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v7}, Lio/bidmachine/analytics/internal/Z;->a(Lio/bidmachine/analytics/internal/q0$a;)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->getNumber()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    invoke-virtual {v6, v7}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->setCode(I)Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/q0;->b()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v6, v3}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->setDescription(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->build()Lio/bidmachine/protobuf/sdk/Error$Data;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v5, v3}, Lio/bidmachine/protobuf/sdk/Error$Builder;->setError(Lio/bidmachine/protobuf/sdk/Error$Data;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/Error$Builder;->build()Lio/bidmachine/protobuf/sdk/Error;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v4, v3}, Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;->setError(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    goto :goto_3

    .line 134
    :cond_0
    :goto_1
    invoke-virtual {v4}, Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/Monitor$Record;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_2

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Lio/bidmachine/protobuf/sdk/Monitor$Record;

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->addRecords(Lio/bidmachine/protobuf/sdk/Monitor$Record;)Lio/bidmachine/protobuf/sdk/Monitor$Builder;

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_2
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Event;->newBuilder()Lio/bidmachine/protobuf/sdk/Event$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->build()Lio/bidmachine/protobuf/sdk/Monitor;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setMonitor(Lio/bidmachine/protobuf/sdk/Monitor;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v1, p0, Lio/bidmachine/analytics/internal/P;->g:Lcom/explorestack/protobuf/Struct;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setExtrasPrivate(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->build()Lio/bidmachine/protobuf/sdk/Event;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/explorestack/protobuf/a;->toByteArray()[B

    .line 185
    .line 186
    .line 187
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    return-object v0

    .line 189
    :goto_3
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 190
    .line 191
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    const/4 v0, 0x0

    .line 199
    return-object v0
.end method

.method public c()Lio/bidmachine/analytics/internal/P;
    .locals 0

    .line 1
    return-object p0
.end method
