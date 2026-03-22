.class public final Lyh/x2;
.super Ljava/lang/Object;
.source "ImmersionBackUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionBackUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionBackUtils.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionBackUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n774#2:96\n865#2,2:97\n774#2:99\n865#2,2:100\n774#2:102\n865#2,2:103\n774#2:105\n865#2,2:106\n1010#2,2:108\n*S KotlinDebug\n*F\n+ 1 ImmersionBackUtils.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionBackUtils\n*L\n44#1:96\n44#1:97,2\n45#1:99\n45#1:100,2\n49#1:102\n49#1:103,2\n72#1:105\n72#1:106,2\n89#1:108,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lyh/x2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyh/x2;

    .line 2
    .line 3
    invoke-direct {v0}, Lyh/x2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lyh/x2;->a:Lyh/x2;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lyh/x2;->f(Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyh/x2;->g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final e(I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;->setShortId(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;->setShowTime(J)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lud/b;->a:Lud/b;

    .line 17
    .line 18
    invoke-virtual {p1}, Lud/b;->I0()Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;->setList(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;->getList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;->getList()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, 0x1

    .line 61
    if-le v2, v3, :cond_2

    .line 62
    .line 63
    new-instance v2, Lyh/x2$a;

    .line 64
    .line 65
    invoke-direct {v2}, Lyh/x2$a;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;->getList()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    new-instance v2, Lyh/v2;

    .line 78
    .line 79
    invoke-direct {v2}, Lyh/v2;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lyh/w2;

    .line 83
    .line 84
    invoke-direct {v3, v2}, Lyh/w2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p1, v1}, Lud/b;->U3(Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private static final f(Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;)Z
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;->getShowTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    sub-long/2addr v0, v2

    .line 15
    const-wide/32 v2, 0x5265c00

    .line 16
    .line 17
    .line 18
    cmp-long p0, v0, v2

    .line 19
    .line 20
    if-lez p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method private static final g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final c(IJZ)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object p4, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 6
    .line 7
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->h()Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez p4, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lyh/x2;->e(I)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    sub-long p2, v2, p2

    .line 23
    .line 24
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;->getRetainTriggerTime()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    mul-int/lit16 v4, v4, 0x3e8

    .line 29
    .line 30
    int-to-long v4, v4

    .line 31
    cmp-long p2, p2, v4

    .line 32
    .line 33
    if-gez p2, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    sget-object p2, Lud/b;->a:Lud/b;

    .line 37
    .line 38
    invoke-virtual {p2}, Lud/b;->I0()Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p2, :cond_12

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;->getList()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    check-cast p3, Ljava/util/Collection;

    .line 49
    .line 50
    if-eqz p3, :cond_12

    .line 51
    .line 52
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-eqz p3, :cond_3

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;->getList()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const/4 p3, 0x0

    .line 65
    if-eqz p2, :cond_5

    .line 66
    .line 67
    check-cast p2, Ljava/lang/Iterable;

    .line 68
    .line 69
    new-instance v4, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_6

    .line 83
    .line 84
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    move-object v6, v5

    .line 89
    check-cast v6, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;

    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;->getShowTime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    sub-long v6, v2, v6

    .line 96
    .line 97
    const-wide/32 v8, 0x5265c00

    .line 98
    .line 99
    .line 100
    cmp-long v6, v6, v8

    .line 101
    .line 102
    if-gez v6, :cond_4

    .line 103
    .line 104
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    move-object v4, p3

    .line 109
    :cond_6
    if-eqz v4, :cond_8

    .line 110
    .line 111
    new-instance p2, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-eqz v6, :cond_9

    .line 125
    .line 126
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    move-object v7, v6

    .line 131
    check-cast v7, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;

    .line 132
    .line 133
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;->getShortId()I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-ne v7, p1, :cond_7

    .line 138
    .line 139
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_8
    move-object p2, p3

    .line 144
    :cond_9
    if-eqz p2, :cond_b

    .line 145
    .line 146
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;->getRetainCountLimitByShortPlay()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-ge p2, v5, :cond_a

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_a
    return v0

    .line 158
    :cond_b
    :goto_2
    if-eqz v4, :cond_d

    .line 159
    .line 160
    new-instance p3, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    :cond_c
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_d

    .line 174
    .line 175
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    move-object v6, v5

    .line 180
    check-cast v6, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;

    .line 181
    .line 182
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;->getShowTime()J

    .line 183
    .line 184
    .line 185
    move-result-wide v6

    .line 186
    sub-long v6, v2, v6

    .line 187
    .line 188
    const-wide/32 v8, 0xa4cb80

    .line 189
    .line 190
    .line 191
    cmp-long v6, v6, v8

    .line 192
    .line 193
    if-gez v6, :cond_c

    .line 194
    .line 195
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_d
    if-eqz p3, :cond_f

    .line 200
    .line 201
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;->getRetainCountLimitByThreeHour()I

    .line 206
    .line 207
    .line 208
    move-result p3

    .line 209
    if-ge p2, p3, :cond_e

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_e
    return v0

    .line 213
    :cond_f
    :goto_4
    if-eqz v4, :cond_11

    .line 214
    .line 215
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;->getRetainCountLimitByDay()I

    .line 220
    .line 221
    .line 222
    move-result p3

    .line 223
    if-ge p2, p3, :cond_10

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_10
    return v0

    .line 227
    :cond_11
    :goto_5
    invoke-direct {p0, p1}, Lyh/x2;->e(I)V

    .line 228
    .line 229
    .line 230
    return v1

    .line 231
    :cond_12
    :goto_6
    invoke-direct {p0, p1}, Lyh/x2;->e(I)V

    .line 232
    .line 233
    .line 234
    return v1
.end method

.method public final d()I
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lud/b;->a:Lud/b;

    .line 6
    .line 7
    invoke-virtual {v2}, Lud/b;->I0()Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo;->getList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v2, Ljava/lang/Iterable;

    .line 20
    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    move-object v5, v4

    .line 41
    check-cast v5, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackRecordListInfo$ImmersionBackRecordInfo;->getShowTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    sub-long v5, v0, v5

    .line 48
    .line 49
    const-wide/32 v7, 0x5265c00

    .line 50
    .line 51
    .line 52
    cmp-long v5, v5, v7

    .line 53
    .line 54
    if-gez v5, :cond_0

    .line 55
    .line 56
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v3, 0x0

    .line 61
    :cond_2
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 v0, 0x0

    .line 69
    :goto_1
    return v0
.end method
