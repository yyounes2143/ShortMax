.class public final Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;
.super Ljava/lang/Object;
.source "UnlockRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUnlockRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockRepo.kt\ncom/startshorts/androidplayer/repo/unlock/UnlockRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,317:1\n1863#2,2:318\n1872#2,3:320\n*S KotlinDebug\n*F\n+ 1 UnlockRepo.kt\ncom/startshorts/androidplayer/repo/unlock/UnlockRepo\n*L\n155#1:318,2\n283#1:320,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 7
    .line 8
    new-instance v0, Lkh/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lkh/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lkh/c;

    .line 20
    .line 21
    invoke-direct {v0}, Lkh/c;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->c:Lms/i;

    .line 29
    .line 30
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

.method public static synthetic a()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->i()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lkh/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->h()Lkh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;)Lkh/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->e()Lkh/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;)Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e()Lkh/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkh/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/util/List;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Z",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeCost;",
            ">;)V"
        }
    .end annotation

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    move-object v3, v1

    .line 7
    check-cast v3, Ljava/util/Collection;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getTotalEpisodes()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getTotalEpisodes()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :goto_1
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 35
    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v6, "logUnlockEpisodeByCoinEvent -> batchUnlock("

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v6, ") totalEpisodes("

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v6, 0x29

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const-string v6, "UnlockRepo"

    .line 67
    .line 68
    invoke-virtual {v3, v6, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    if-eqz p4, :cond_7

    .line 77
    .line 78
    move-object/from16 v5, p4

    .line 79
    .line 80
    check-cast v5, Ljava/lang/Iterable;

    .line 81
    .line 82
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_7

    .line 91
    .line 92
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    add-int/lit8 v7, v4, 0x1

    .line 97
    .line 98
    if-gez v4, :cond_2

    .line 99
    .line 100
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 101
    .line 102
    .line 103
    :cond_2
    check-cast v6, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeCost;

    .line 104
    .line 105
    new-instance v10, Landroid/os/Bundle;

    .line 106
    .line 107
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    const-string v9, "reel_id"

    .line 115
    .line 116
    invoke-virtual {v10, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    add-int/2addr v8, v4

    .line 124
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    const-string v9, "episode"

    .line 129
    .line 130
    invoke-virtual {v10, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getLockBegin()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-lez v8, :cond_3

    .line 138
    .line 139
    const-string v8, "lock_begin"

    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getLockBegin()I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    invoke-virtual {v10, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    :cond_3
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeCost;->getUseBonus()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeCost;->getUseCoins()I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    add-int/2addr v8, v9

    .line 157
    const-string v9, "price"

    .line 158
    .line 159
    invoke-virtual {v10, v9, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    const-string v8, "coins"

    .line 163
    .line 164
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeCost;->getUseCoins()I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    invoke-virtual {v10, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    const-string v8, "tickets"

    .line 172
    .line 173
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeCost;->getUseBonus()I

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    invoke-virtual {v10, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    const-string v8, "account_coins"

    .line 181
    .line 182
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeCost;->getCoins()I

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    invoke-virtual {v10, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    const-string v8, "account_tickets"

    .line 190
    .line 191
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeCost;->getBonus()I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    invoke-virtual {v10, v8, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    const-string v6, "0"

    .line 199
    .line 200
    const-string v8, "1"

    .line 201
    .line 202
    if-lt v4, v2, :cond_4

    .line 203
    .line 204
    if-nez v0, :cond_4

    .line 205
    .line 206
    move-object v9, v8

    .line 207
    goto :goto_3

    .line 208
    :cond_4
    move-object v9, v6

    .line 209
    :goto_3
    const-string v11, "is_auto"

    .line 210
    .line 211
    invoke-virtual {v10, v11, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    add-int/2addr v9, v4

    .line 219
    if-lt v9, v1, :cond_5

    .line 220
    .line 221
    move-object v6, v8

    .line 222
    :cond_5
    const-string v4, "is_ep_end"

    .line 223
    .line 224
    invoke-virtual {v10, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    sget-object v4, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 228
    .line 229
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    if-eqz v4, :cond_6

    .line 234
    .line 235
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/account/Account;->isUnlockTypeIaspUser()Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-ne v4, v2, :cond_6

    .line 240
    .line 241
    const-string v4, "Put_on_type"

    .line 242
    .line 243
    const-string v6, "IASP"

    .line 244
    .line 245
    invoke-virtual {v10, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_6
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 249
    .line 250
    new-instance v4, Lcom/startshorts/androidplayer/bean/event/EventInfo;

    .line 251
    .line 252
    const-string v9, "episode_unlock_success"

    .line 253
    .line 254
    const-wide/16 v11, 0x0

    .line 255
    .line 256
    const/4 v13, 0x4

    .line 257
    const/4 v14, 0x0

    .line 258
    move-object v8, v4

    .line 259
    invoke-direct/range {v8 .. v14}, Lcom/startshorts/androidplayer/bean/event/EventInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move v4, v7

    .line 266
    goto/16 :goto_2

    .line 267
    .line 268
    :cond_7
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 269
    .line 270
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->v0(Ljava/util/List;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method

.method private static final h()Lkh/a;
    .locals 1

    .line 1
    new-instance v0, Lkh/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lkh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final i()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;ZLandroid/content/Context;Ljava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x2

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->j(ZLandroid/content/Context;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static synthetic m(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;ZLandroid/content/Context;IILjava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    move v1, p1

    .line 7
    and-int/lit8 p1, p7, 0x2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    :cond_1
    move-object v2, p2

    .line 13
    move-object v0, p0

    .line 14
    move v3, p3

    .line 15
    move v4, p4

    .line 16
    move-object v5, p5

    .line 17
    move-object v6, p6

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->l(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static synthetic o(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Landroid/content/Context;IILjava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    move-object v1, p1

    .line 7
    move-object v0, p0

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move-object v4, p4

    .line 11
    move-object v5, p5

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->n(Landroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic u(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Landroid/content/Context;ILjava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->t(Landroid/content/Context;ILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final j(ZLandroid/content/Context;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/unlock/QuerySubsFirstDiscountResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    instance-of v5, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    move-object v5, v4

    .line 16
    check-cast v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;

    .line 17
    .line 18
    iget v6, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->n:I

    .line 19
    .line 20
    const/high16 v7, -0x80000000

    .line 21
    .line 22
    and-int v8, v6, v7

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    sub-int/2addr v6, v7

    .line 27
    iput v6, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->n:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;

    .line 31
    .line 32
    invoke-direct {v5, v0, v4}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;-><init>(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Lrs/c;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v4, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->l:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget v7, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->n:I

    .line 42
    .line 43
    const/4 v8, 0x3

    .line 44
    const/4 v9, 0x2

    .line 45
    const/4 v10, 0x1

    .line 46
    if-eqz v7, :cond_4

    .line 47
    .line 48
    if-eq v7, v10, :cond_3

    .line 49
    .line 50
    if-eq v7, v9, :cond_2

    .line 51
    .line 52
    if-ne v7, v8, :cond_1

    .line 53
    .line 54
    invoke-static {v4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    check-cast v4, Lkotlin/Result;

    .line 58
    .line 59
    invoke-virtual {v4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v1

    .line 73
    :cond_2
    iget-boolean v1, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->k:Z

    .line 74
    .line 75
    iget-object v2, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->j:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Ljava/lang/String;

    .line 78
    .line 79
    iget-object v3, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->i:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v3, Landroid/content/Context;

    .line 82
    .line 83
    iget-object v7, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->h:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v7, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 86
    .line 87
    invoke-static {v4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    check-cast v4, Lkotlin/Result;

    .line 91
    .line 92
    invoke-virtual {v4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    move-object/from16 v17, v3

    .line 97
    .line 98
    move-object v3, v2

    .line 99
    move-object/from16 v2, v17

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    invoke-static {v4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    check-cast v4, Lkotlin/Result;

    .line 106
    .line 107
    invoke-virtual {v4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-static {v4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object v4, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->j1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_6

    .line 136
    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    iput v10, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->n:I

    .line 142
    .line 143
    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->a(ZLandroid/content/Context;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-ne v1, v6, :cond_5

    .line 148
    .line 149
    return-object v6

    .line 150
    :cond_5
    :goto_1
    return-object v1

    .line 151
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->e()Lkh/a;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iput-object v0, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->h:Ljava/lang/Object;

    .line 156
    .line 157
    iput-object v2, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->i:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v3, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->j:Ljava/lang/Object;

    .line 160
    .line 161
    iput-boolean v1, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->k:Z

    .line 162
    .line 163
    iput v9, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->n:I

    .line 164
    .line 165
    invoke-virtual {v4, v5}, Lkh/a;->a(Lrs/c;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-ne v4, v6, :cond_7

    .line 170
    .line 171
    return-object v6

    .line 172
    :cond_7
    move-object v7, v0

    .line 173
    :goto_2
    invoke-static {v4}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    const/4 v10, 0x0

    .line 178
    if-eqz v9, :cond_8

    .line 179
    .line 180
    sget-object v11, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 181
    .line 182
    new-instance v14, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$2;

    .line 183
    .line 184
    invoke-direct {v14, v1, v2, v3, v10}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$2;-><init>(ZLandroid/content/Context;Ljava/lang/String;Lrs/c;)V

    .line 185
    .line 186
    .line 187
    const/4 v15, 0x2

    .line 188
    const/16 v16, 0x0

    .line 189
    .line 190
    const-string v12, "preQueryDiscountSubscribeSkuList"

    .line 191
    .line 192
    const/4 v13, 0x0

    .line 193
    invoke-static/range {v11 .. v16}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 194
    .line 195
    .line 196
    return-object v4

    .line 197
    :cond_8
    invoke-direct {v7}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    iput-object v10, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->h:Ljava/lang/Object;

    .line 202
    .line 203
    iput-object v10, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->i:Ljava/lang/Object;

    .line 204
    .line 205
    iput-object v10, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->j:Ljava/lang/Object;

    .line 206
    .line 207
    iput v8, v5, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryDiscountSubscribeSkuList$1;->n:I

    .line 208
    .line 209
    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->a(ZLandroid/content/Context;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-ne v1, v6, :cond_9

    .line 214
    .line 215
    return-object v6

    .line 216
    :cond_9
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_a

    .line 221
    .line 222
    move-object v2, v1

    .line 223
    check-cast v2, Lcom/startshorts/androidplayer/bean/unlock/QuerySubsFirstDiscountResult;

    .line 224
    .line 225
    sget-object v3, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 226
    .line 227
    invoke-direct {v3}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->e()Lkh/a;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v3, v2}, Lkh/a;->d(Lcom/startshorts/androidplayer/bean/unlock/QuerySubsFirstDiscountResult;)V

    .line 232
    .line 233
    .line 234
    :cond_a
    return-object v1
.end method

.method public final l(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 22
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v1, p6

    .line 6
    .line 7
    instance-of v2, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    check-cast v2, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;

    .line 13
    .line 14
    iget v3, v2, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->p:I

    .line 15
    .line 16
    const/high16 v4, -0x80000000

    .line 17
    .line 18
    and-int v5, v3, v4

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    sub-int/2addr v3, v4

    .line 23
    iput v3, v2, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->p:I

    .line 24
    .line 25
    :goto_0
    move-object v10, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v2, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;

    .line 28
    .line 29
    invoke-direct {v2, v0, v1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;-><init>(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Lrs/c;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v1, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->n:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    iget v2, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->p:I

    .line 40
    .line 41
    const/4 v12, 0x4

    .line 42
    const/4 v3, 0x3

    .line 43
    const/4 v4, 0x2

    .line 44
    const/4 v5, 0x1

    .line 45
    const/4 v13, 0x0

    .line 46
    if-eqz v2, :cond_5

    .line 47
    .line 48
    if-eq v2, v5, :cond_4

    .line 49
    .line 50
    if-eq v2, v4, :cond_3

    .line 51
    .line 52
    if-eq v2, v3, :cond_2

    .line 53
    .line 54
    if-ne v2, v12, :cond_1

    .line 55
    .line 56
    iget-object v2, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->i:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    check-cast v1, Lkotlin/Result;

    .line 62
    .line 63
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1

    .line 77
    :cond_2
    iget-boolean v2, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->h:Z

    .line 78
    .line 79
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    check-cast v1, Lkotlin/Result;

    .line 83
    .line 84
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto/16 :goto_4

    .line 89
    .line 90
    :cond_3
    iget v2, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->m:I

    .line 91
    .line 92
    iget v4, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->l:I

    .line 93
    .line 94
    iget-boolean v5, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->h:Z

    .line 95
    .line 96
    iget-object v6, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->k:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v6, Ljava/lang/String;

    .line 99
    .line 100
    iget-object v7, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->j:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v7, Landroid/content/Context;

    .line 103
    .line 104
    iget-object v8, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->i:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 107
    .line 108
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    check-cast v1, Lkotlin/Result;

    .line 112
    .line 113
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    move/from16 v18, v2

    .line 118
    .line 119
    move/from16 v17, v4

    .line 120
    .line 121
    move-object/from16 v19, v6

    .line 122
    .line 123
    move-object/from16 v16, v7

    .line 124
    .line 125
    move-object v2, v1

    .line 126
    move v1, v5

    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :cond_4
    iget-boolean v2, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->h:Z

    .line 130
    .line 131
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    check-cast v1, Lkotlin/Result;

    .line 135
    .line 136
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    goto :goto_2

    .line 141
    :cond_5
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->j1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_8

    .line 165
    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iput-boolean v8, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->h:Z

    .line 171
    .line 172
    iput v5, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->p:I

    .line 173
    .line 174
    move/from16 v2, p1

    .line 175
    .line 176
    move-object/from16 v3, p2

    .line 177
    .line 178
    move/from16 v4, p3

    .line 179
    .line 180
    move/from16 v5, p4

    .line 181
    .line 182
    move-object/from16 v6, p5

    .line 183
    .line 184
    move-object v7, v10

    .line 185
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->b(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-ne v1, v11, :cond_6

    .line 190
    .line 191
    return-object v11

    .line 192
    :cond_6
    move v2, v8

    .line 193
    :cond_7
    :goto_2
    move v4, v2

    .line 194
    move-object v2, v1

    .line 195
    goto/16 :goto_5

    .line 196
    .line 197
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->e()Lkh/a;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iput-object v0, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->i:Ljava/lang/Object;

    .line 202
    .line 203
    move-object/from16 v2, p2

    .line 204
    .line 205
    iput-object v2, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->j:Ljava/lang/Object;

    .line 206
    .line 207
    move-object/from16 v5, p5

    .line 208
    .line 209
    iput-object v5, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->k:Ljava/lang/Object;

    .line 210
    .line 211
    iput-boolean v8, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->h:Z

    .line 212
    .line 213
    move/from16 v6, p3

    .line 214
    .line 215
    iput v6, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->l:I

    .line 216
    .line 217
    move/from16 v7, p4

    .line 218
    .line 219
    iput v7, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->m:I

    .line 220
    .line 221
    iput v4, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->p:I

    .line 222
    .line 223
    invoke-virtual {v1, v10}, Lkh/a;->b(Lrs/c;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-ne v1, v11, :cond_9

    .line 228
    .line 229
    return-object v11

    .line 230
    :cond_9
    move-object/from16 v16, v2

    .line 231
    .line 232
    move-object/from16 v19, v5

    .line 233
    .line 234
    move/from16 v17, v6

    .line 235
    .line 236
    move/from16 v18, v7

    .line 237
    .line 238
    move-object v2, v1

    .line 239
    move v1, v8

    .line 240
    move-object v8, v0

    .line 241
    :goto_3
    invoke-static {v2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_a

    .line 246
    .line 247
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 248
    .line 249
    new-instance v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;

    .line 250
    .line 251
    const/16 v20, 0x0

    .line 252
    .line 253
    move-object v14, v4

    .line 254
    move v15, v1

    .line 255
    invoke-direct/range {v14 .. v20}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;-><init>(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)V

    .line 256
    .line 257
    .line 258
    const/4 v5, 0x2

    .line 259
    const/4 v6, 0x0

    .line 260
    const-string v7, "preQuerySingleUnlockEpisodeMethods"

    .line 261
    .line 262
    const/4 v8, 0x0

    .line 263
    move-object/from16 p1, v3

    .line 264
    .line 265
    move-object/from16 p2, v7

    .line 266
    .line 267
    move/from16 p3, v8

    .line 268
    .line 269
    move-object/from16 p4, v4

    .line 270
    .line 271
    move/from16 p5, v5

    .line 272
    .line 273
    move-object/from16 p6, v6

    .line 274
    .line 275
    invoke-static/range {p1 .. p6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 276
    .line 277
    .line 278
    move v4, v1

    .line 279
    goto :goto_5

    .line 280
    :cond_a
    invoke-direct {v8}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    iput-object v13, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->i:Ljava/lang/Object;

    .line 285
    .line 286
    iput-object v13, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->j:Ljava/lang/Object;

    .line 287
    .line 288
    iput-object v13, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->k:Ljava/lang/Object;

    .line 289
    .line 290
    iput-boolean v1, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->h:Z

    .line 291
    .line 292
    iput v3, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->p:I

    .line 293
    .line 294
    move-object v3, v2

    .line 295
    move v4, v1

    .line 296
    move-object/from16 v5, v16

    .line 297
    .line 298
    move/from16 v6, v17

    .line 299
    .line 300
    move/from16 v7, v18

    .line 301
    .line 302
    move-object/from16 v8, v19

    .line 303
    .line 304
    move-object v9, v10

    .line 305
    invoke-virtual/range {v3 .. v9}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->b(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    if-ne v2, v11, :cond_b

    .line 310
    .line 311
    return-object v11

    .line 312
    :cond_b
    move-object/from16 v21, v2

    .line 313
    .line 314
    move v2, v1

    .line 315
    move-object/from16 v1, v21

    .line 316
    .line 317
    :goto_4
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-eqz v3, :cond_7

    .line 322
    .line 323
    move-object v3, v1

    .line 324
    check-cast v3, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;

    .line 325
    .line 326
    sget-object v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 327
    .line 328
    invoke-direct {v4}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->e()Lkh/a;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {v4, v3}, Lkh/a;->e(Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_2

    .line 336
    .line 337
    :goto_5
    invoke-static {v2}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_c

    .line 342
    .line 343
    return-object v2

    .line 344
    :cond_c
    sget-object v3, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 345
    .line 346
    iput-object v2, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->i:Ljava/lang/Object;

    .line 347
    .line 348
    iput-object v13, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->j:Ljava/lang/Object;

    .line 349
    .line 350
    iput-object v13, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->k:Ljava/lang/Object;

    .line 351
    .line 352
    iput v12, v10, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$1;->p:I

    .line 353
    .line 354
    const/4 v5, 0x0

    .line 355
    const-string v6, "unlock"

    .line 356
    .line 357
    const/4 v8, 0x2

    .line 358
    const/4 v9, 0x0

    .line 359
    move-object v7, v10

    .line 360
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->t(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;ZZLjava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    if-ne v1, v11, :cond_d

    .line 365
    .line 366
    return-object v11

    .line 367
    :cond_d
    :goto_6
    invoke-static {v1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-eqz v3, :cond_e

    .line 372
    .line 373
    move-object v1, v13

    .line 374
    :cond_e
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 375
    .line 376
    if-eqz v1, :cond_f

    .line 377
    .line 378
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    goto :goto_7

    .line 383
    :cond_f
    move-object v1, v13

    .line 384
    :goto_7
    move-object v3, v1

    .line 385
    check-cast v3, Ljava/util/Collection;

    .line 386
    .line 387
    if-eqz v3, :cond_12

    .line 388
    .line 389
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-eqz v3, :cond_10

    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_10
    invoke-static {v2}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-eqz v3, :cond_11

    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_11
    move-object v13, v2

    .line 404
    :goto_8
    check-cast v13, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;

    .line 405
    .line 406
    if-eqz v13, :cond_12

    .line 407
    .line 408
    invoke-virtual {v13, v1}, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->setSkuInfoResponses(Ljava/util/List;)V

    .line 409
    .line 410
    .line 411
    :cond_12
    :goto_9
    return-object v2
.end method

.method public final n(Landroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 20
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    instance-of v2, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->o:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->o:I

    .line 22
    .line 23
    :goto_0
    move-object v8, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v2, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;

    .line 26
    .line 27
    invoke-direct {v2, v0, v1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;-><init>(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v1, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->m:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v3, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->o:I

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const/4 v5, 0x2

    .line 41
    const/4 v6, 0x1

    .line 42
    if-eqz v3, :cond_4

    .line 43
    .line 44
    if-eq v3, v6, :cond_3

    .line 45
    .line 46
    if-eq v3, v5, :cond_2

    .line 47
    .line 48
    if-ne v3, v4, :cond_1

    .line 49
    .line 50
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    check-cast v1, Lkotlin/Result;

    .line 54
    .line 55
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_2
    iget v3, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->l:I

    .line 70
    .line 71
    iget v5, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->k:I

    .line 72
    .line 73
    iget-object v6, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->j:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v6, Ljava/lang/String;

    .line 76
    .line 77
    iget-object v7, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->i:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v7, Landroid/content/Context;

    .line 80
    .line 81
    iget-object v9, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->h:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v9, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 84
    .line 85
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    check-cast v1, Lkotlin/Result;

    .line 89
    .line 90
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    move v12, v3

    .line 95
    move v11, v5

    .line 96
    move-object v13, v6

    .line 97
    move-object v10, v7

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    check-cast v1, Lkotlin/Result;

    .line 103
    .line 104
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_4
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->j1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_5

    .line 134
    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iput v6, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->o:I

    .line 140
    .line 141
    move-object/from16 v4, p1

    .line 142
    .line 143
    move/from16 v5, p2

    .line 144
    .line 145
    move/from16 v6, p3

    .line 146
    .line 147
    move-object/from16 v7, p4

    .line 148
    .line 149
    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->c(Landroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-ne v1, v2, :cond_9

    .line 154
    .line 155
    return-object v2

    .line 156
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->e()Lkh/a;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iput-object v0, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->h:Ljava/lang/Object;

    .line 161
    .line 162
    move-object/from16 v3, p1

    .line 163
    .line 164
    iput-object v3, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->i:Ljava/lang/Object;

    .line 165
    .line 166
    move-object/from16 v6, p4

    .line 167
    .line 168
    iput-object v6, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->j:Ljava/lang/Object;

    .line 169
    .line 170
    move/from16 v7, p2

    .line 171
    .line 172
    iput v7, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->k:I

    .line 173
    .line 174
    move/from16 v9, p3

    .line 175
    .line 176
    iput v9, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->l:I

    .line 177
    .line 178
    iput v5, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->o:I

    .line 179
    .line 180
    invoke-virtual {v1, v8}, Lkh/a;->c(Lrs/c;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-ne v1, v2, :cond_6

    .line 185
    .line 186
    return-object v2

    .line 187
    :cond_6
    move-object v10, v3

    .line 188
    move-object v13, v6

    .line 189
    move v11, v7

    .line 190
    move v12, v9

    .line 191
    move-object v9, v0

    .line 192
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_7

    .line 197
    .line 198
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 199
    .line 200
    new-instance v17, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$result$1;

    .line 201
    .line 202
    const/4 v14, 0x0

    .line 203
    move-object/from16 v9, v17

    .line 204
    .line 205
    invoke-direct/range {v9 .. v14}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$result$1;-><init>(Landroid/content/Context;IILjava/lang/String;Lrs/c;)V

    .line 206
    .line 207
    .line 208
    const/16 v18, 0x2

    .line 209
    .line 210
    const/16 v19, 0x0

    .line 211
    .line 212
    const-string v15, "preQueryUnlockEpisodeProductList"

    .line 213
    .line 214
    const/16 v16, 0x0

    .line 215
    .line 216
    move-object v14, v2

    .line 217
    invoke-static/range {v14 .. v19}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_7
    invoke-direct {v9}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    const/4 v1, 0x0

    .line 226
    iput-object v1, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->h:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v1, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->i:Ljava/lang/Object;

    .line 229
    .line 230
    iput-object v1, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->j:Ljava/lang/Object;

    .line 231
    .line 232
    iput v4, v8, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockEpisodeProductList$1;->o:I

    .line 233
    .line 234
    move-object v4, v10

    .line 235
    move v5, v11

    .line 236
    move v6, v12

    .line 237
    move-object v7, v13

    .line 238
    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->c(Landroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-ne v1, v2, :cond_8

    .line 243
    .line 244
    return-object v2

    .line 245
    :cond_8
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eqz v2, :cond_9

    .line 250
    .line 251
    move-object v2, v1

    .line 252
    check-cast v2, Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;

    .line 253
    .line 254
    sget-object v3, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 255
    .line 256
    invoke-direct {v3}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->e()Lkh/a;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v3, v2}, Lkh/a;->f(Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;)V

    .line 261
    .line 262
    .line 263
    :cond_9
    :goto_4
    invoke-static {v1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    return-object v1
.end method

.method public final p(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockPanelAdd$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockPanelAdd$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockPanelAdd$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockPanelAdd$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockPanelAdd$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockPanelAdd$1;-><init>(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockPanelAdd$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockPanelAdd$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput v3, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$queryUnlockPanelAdd$1;->j:I

    .line 63
    .line 64
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->d(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne p1, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1
.end method

.method public final q(ILjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$retainSubsSkuExpose$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$retainSubsSkuExpose$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$retainSubsSkuExpose$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$retainSubsSkuExpose$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$retainSubsSkuExpose$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$retainSubsSkuExpose$1;-><init>(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$retainSubsSkuExpose$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$retainSubsSkuExpose$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p3, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    iput v3, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$retainSubsSkuExpose$1;->j:I

    .line 63
    .line 64
    invoke-virtual {p3, p1, p2, v0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->e(ILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne p1, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1
.end method

.method public final r(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 24
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Z",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByAdResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;

    iget v2, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->p:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->p:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;-><init>(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Lrs/c;)V

    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->n:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v9

    .line 1
    iget v3, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->p:I

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v14, :cond_3

    if-eq v3, v13, :cond_2

    if-ne v3, v10, :cond_1

    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->j:Ljava/lang/Object;

    iget-object v1, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->h:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->k:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->j:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->i:Ljava/lang/Object;

    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->h:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v3

    move-object v10, v6

    move-object v3, v0

    goto/16 :goto_6

    :cond_3
    iget-boolean v3, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->m:Z

    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->l:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->k:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->j:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->i:Ljava/lang/Object;

    check-cast v7, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    iget-object v8, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->h:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v8

    move-object v8, v5

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->W0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestIntValue()I

    move-result v4

    move-object/from16 v15, p1

    if-ne v4, v13, :cond_5

    move v7, v14

    goto :goto_1

    :cond_5
    move v7, v11

    .line 4
    :goto_1
    iput-object v15, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->h:Ljava/lang/Object;

    move-object/from16 v8, p2

    iput-object v8, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->i:Ljava/lang/Object;

    move-object/from16 v6, p4

    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->j:Ljava/lang/Object;

    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->k:Ljava/lang/Object;

    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->l:Ljava/lang/Object;

    move/from16 v5, p3

    iput-boolean v5, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->m:Z

    iput v14, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->p:I

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->f(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZZLrs/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_6

    return-object v9

    :cond_6
    move-object/from16 v7, p2

    move-object/from16 v6, p4

    move-object v4, v0

    move-object v8, v4

    move-object v0, v3

    move/from16 v3, p3

    :goto_2
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object v4, v0

    check-cast v4, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByAdResult;

    .line 6
    sget-object v5, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->w(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 7
    sget-object v10, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->s(I)V

    .line 8
    sget-object v10, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    invoke-static {v10, v3, v11, v13, v12}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->n1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZILjava/lang/Object;)V

    .line 9
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 10
    invoke-virtual {v3, v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    move-result-object v14

    .line 11
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    move-result v11

    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getTotalEpisodes()I

    move-result v13

    if-lt v11, v13, :cond_7

    const-string v11, "1"

    goto :goto_3

    :cond_7
    const-string v11, "0"

    :goto_3
    const-string v13, "is_ep_end"

    invoke-virtual {v14, v13, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_8

    .line 12
    const-string v6, "ad_unlock"

    :cond_8
    const-string v11, "way"

    invoke-virtual {v14, v11, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/account/Account;->isUnlockTypeIaspUser()Z

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_a

    .line 14
    const-string v6, "Put_on_type"

    const-string v11, "IASP"

    invoke-virtual {v14, v6, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const/4 v10, 0x1

    .line 15
    :cond_a
    :goto_4
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v22, 0x4

    const/16 v23, 0x0

    .line 16
    const-string v18, "episode_unlock_ad_success"

    const-wide/16 v20, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v14

    invoke-static/range {v17 .. v23}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 17
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 18
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v4, :cond_c

    .line 19
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByAdResult;->getCanWatchAdNum()I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByAdResult;->getTotalWatchAdNum()I

    move-result v3

    if-lez v3, :cond_b

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    :goto_5
    iput-boolean v10, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 20
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByAdResult;->getNextDrama()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v3

    iput-object v3, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 21
    :cond_c
    sget-object v3, Lud/a;->a:Lud/a;

    invoke-virtual {v3}, Lud/a;->q()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    const-string v3, ""

    :cond_d
    move-object v6, v3

    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    move-result v10

    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoType()I

    move-result v7

    iput-object v8, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->h:Ljava/lang/Object;

    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->i:Ljava/lang/Object;

    iput-object v11, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->j:Ljava/lang/Object;

    iput-object v13, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->k:Ljava/lang/Object;

    iput-object v12, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->l:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->p:I

    move-object v3, v5

    move-object v4, v15

    move-object v5, v6

    move v6, v10

    move-object v10, v8

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->r(Landroid/content/Context;Ljava/lang/String;IILrs/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_e

    return-object v9

    :cond_e
    move-object v5, v0

    move-object v4, v11

    :goto_6
    invoke-static {v3}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v3

    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    if-eqz v0, :cond_f

    .line 22
    invoke-static {}, Lau/c;->d()Lau/c;

    move-result-object v1

    .line 23
    new-instance v5, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 24
    filled-new-array {v0}, [Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    iget-boolean v0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v4, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v19, v4

    check-cast v19, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    const/4 v15, 0x3

    const/16 v17, 0x0

    move-object v14, v5

    move/from16 v18, v0

    .line 25
    invoke-direct/range {v14 .. v19}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;-><init>(ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 26
    invoke-virtual {v1, v5}, Lau/c;->l(Ljava/lang/Object;)V

    goto :goto_8

    .line 27
    :cond_f
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    move-result-object v0

    new-instance v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$2$3$1;

    invoke-direct {v4, v12}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$2$3$1;-><init>(Lrs/c;)V

    iput-object v10, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->h:Ljava/lang/Object;

    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->i:Ljava/lang/Object;

    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->j:Ljava/lang/Object;

    iput-object v12, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->k:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByAd$1;->p:I

    invoke-static {v0, v4, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_10

    return-object v9

    :cond_10
    move-object v1, v10

    :goto_7
    move-object v8, v1

    goto :goto_9

    :cond_11
    :goto_8
    move-object v8, v10

    .line 28
    :goto_9
    invoke-static {v3}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 29
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_a

    :cond_12
    move-object v10, v8

    .line 30
    :cond_13
    :goto_a
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public final s(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 25
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "ZZ",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByCoinsResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    instance-of v4, v3, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;

    .line 15
    .line 16
    iget v5, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->q:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->q:I

    .line 26
    .line 27
    move-object/from16 v5, p0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;

    .line 31
    .line 32
    move-object/from16 v5, p0

    .line 33
    .line 34
    invoke-direct {v4, v5, v3}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;-><init>(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Lrs/c;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v3, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->o:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget v7, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->q:I

    .line 44
    .line 45
    const/4 v8, 0x4

    .line 46
    const/4 v9, 0x3

    .line 47
    const/4 v10, 0x2

    .line 48
    const/4 v11, 0x1

    .line 49
    const/4 v12, 0x0

    .line 50
    if-eqz v7, :cond_5

    .line 51
    .line 52
    if-eq v7, v11, :cond_4

    .line 53
    .line 54
    if-eq v7, v10, :cond_3

    .line 55
    .line 56
    if-eq v7, v9, :cond_2

    .line 57
    .line 58
    if-ne v7, v8, :cond_1

    .line 59
    .line 60
    iget-object v0, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->h:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_2
    iget-object v0, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->j:Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v1, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->h:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 82
    .line 83
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_7

    .line 87
    .line 88
    :cond_3
    iget-boolean v0, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->m:Z

    .line 89
    .line 90
    iget-object v1, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->i:Ljava/lang/Object;

    .line 91
    .line 92
    iget-object v2, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->h:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 95
    .line 96
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    check-cast v3, Lkotlin/Result;

    .line 100
    .line 101
    invoke-virtual {v3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move v10, v0

    .line 106
    move-object v0, v3

    .line 107
    move-object/from16 v24, v2

    .line 108
    .line 109
    move-object v2, v1

    .line 110
    move-object/from16 v1, v24

    .line 111
    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :cond_4
    iget-boolean v0, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->n:Z

    .line 115
    .line 116
    iget-boolean v1, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->m:Z

    .line 117
    .line 118
    iget-object v2, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->l:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 121
    .line 122
    iget-object v7, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->k:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 125
    .line 126
    iget-object v13, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->j:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v13, Ljava/lang/String;

    .line 129
    .line 130
    iget-object v14, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->i:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v14, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 133
    .line 134
    iget-object v15, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->h:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v15, Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    check-cast v3, Lkotlin/Result;

    .line 142
    .line 143
    invoke-virtual {v3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    move-object/from16 v24, v7

    .line 148
    .line 149
    move-object v7, v3

    .line 150
    move-object/from16 v3, v24

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 157
    .line 158
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    iput-object v0, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->h:Ljava/lang/Object;

    .line 166
    .line 167
    iput-object v1, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->i:Ljava/lang/Object;

    .line 168
    .line 169
    move-object/from16 v13, p5

    .line 170
    .line 171
    iput-object v13, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->j:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v3, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->k:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object v3, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->l:Ljava/lang/Object;

    .line 176
    .line 177
    iput-boolean v2, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->m:Z

    .line 178
    .line 179
    move/from16 v14, p4

    .line 180
    .line 181
    iput-boolean v14, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->n:Z

    .line 182
    .line 183
    iput v11, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->q:I

    .line 184
    .line 185
    invoke-virtual {v7, v0, v1, v2, v4}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->g(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLrs/c;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    if-ne v7, v6, :cond_6

    .line 190
    .line 191
    return-object v6

    .line 192
    :cond_6
    move-object v15, v0

    .line 193
    move v0, v14

    .line 194
    move-object v14, v1

    .line 195
    move v1, v2

    .line 196
    move-object v2, v3

    .line 197
    :goto_1
    iput-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 198
    .line 199
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 200
    .line 201
    invoke-static {v2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    const/4 v11, 0x0

    .line 206
    if-eqz v7, :cond_8

    .line 207
    .line 208
    move-object v7, v2

    .line 209
    check-cast v7, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByCoinsResult;

    .line 210
    .line 211
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    new-instance v9, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 216
    .line 217
    if-eqz v7, :cond_7

    .line 218
    .line 219
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByCoinsResult;->getUnlockDramas()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v16

    .line 223
    move-object/from16 v18, v16

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_7
    move-object/from16 v18, v12

    .line 227
    .line 228
    :goto_2
    const/16 v22, 0x18

    .line 229
    .line 230
    const/16 v23, 0x0

    .line 231
    .line 232
    const/16 v17, 0x1

    .line 233
    .line 234
    const/16 v20, 0x0

    .line 235
    .line 236
    const/16 v21, 0x0

    .line 237
    .line 238
    move-object/from16 v16, v9

    .line 239
    .line 240
    move/from16 v19, v0

    .line 241
    .line 242
    invoke-direct/range {v16 .. v23}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;-><init>(ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v9}, Lau/c;->l(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    if-eqz v7, :cond_8

    .line 249
    .line 250
    sget-object v8, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 251
    .line 252
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByCoinsResult;->getCoins()I

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByCoinsResult;->getBonus()I

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    invoke-virtual {v8, v9, v10, v11}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->v1(IIZ)V

    .line 261
    .line 262
    .line 263
    const/4 v9, 0x2

    .line 264
    invoke-static {v8, v1, v11, v9, v12}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->n1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    sget-object v1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 268
    .line 269
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByCoinsResult;->getUnlockDramas()Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByCoinsResult;->getCosts()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    invoke-direct {v1, v14, v11, v8, v9}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/util/List;Ljava/util/List;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByCoinsResult;->getUnlockDramas()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    if-eqz v1, :cond_8

    .line 285
    .line 286
    check-cast v1, Ljava/lang/Iterable;

    .line 287
    .line 288
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    if-eqz v7, :cond_8

    .line 297
    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    check-cast v7, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 303
    .line 304
    sget-object v8, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 305
    .line 306
    invoke-virtual {v8, v7}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->w(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 307
    .line 308
    .line 309
    sget-object v8, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 310
    .line 311
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    invoke-virtual {v8, v7}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->s(I)V

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_8
    invoke-static {v2}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    if-eqz v1, :cond_15

    .line 324
    .line 325
    invoke-static {v1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getCode()I

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    const/16 v8, 0x4e35

    .line 334
    .line 335
    if-ne v7, v8, :cond_9

    .line 336
    .line 337
    const/4 v7, 0x1

    .line 338
    goto :goto_4

    .line 339
    :cond_9
    move v7, v11

    .line 340
    :goto_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getCode()I

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    const/16 v9, 0x4e34

    .line 345
    .line 346
    if-ne v8, v9, :cond_a

    .line 347
    .line 348
    const/4 v8, 0x1

    .line 349
    goto :goto_5

    .line 350
    :cond_a
    move v8, v11

    .line 351
    :goto_5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getCode()I

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    const/16 v10, 0x4e3c

    .line 356
    .line 357
    if-ne v9, v10, :cond_b

    .line 358
    .line 359
    const/4 v11, 0x1

    .line 360
    :cond_b
    sget-object v9, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 361
    .line 362
    new-instance v10, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string v12, "singleUnlockEpisodeByCoins failed -> insufficientCoins("

    .line 368
    .line 369
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v12, ") alreadyUnlocked("

    .line 376
    .line 377
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v12, ") prevNotUnlock("

    .line 384
    .line 385
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v12, ") action("

    .line 392
    .line 393
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const/16 v12, 0x29

    .line 400
    .line 401
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v10

    .line 408
    const-string v12, "UnlockRepo"

    .line 409
    .line 410
    invoke-virtual {v9, v12, v10}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    if-eqz v7, :cond_c

    .line 414
    .line 415
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;

    .line 420
    .line 421
    invoke-direct {v1, v14, v13}, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_9

    .line 428
    .line 429
    :cond_c
    if-eqz v8, :cond_12

    .line 430
    .line 431
    sget-object v1, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 432
    .line 433
    sget-object v7, Lud/a;->a:Lud/a;

    .line 434
    .line 435
    invoke-virtual {v7}, Lud/a;->q()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v7

    .line 439
    if-nez v7, :cond_d

    .line 440
    .line 441
    const-string v7, ""

    .line 442
    .line 443
    :cond_d
    invoke-virtual {v14}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    invoke-virtual {v14}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoType()I

    .line 448
    .line 449
    .line 450
    move-result v9

    .line 451
    iput-object v3, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->h:Ljava/lang/Object;

    .line 452
    .line 453
    iput-object v2, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->i:Ljava/lang/Object;

    .line 454
    .line 455
    const/4 v10, 0x0

    .line 456
    iput-object v10, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->j:Ljava/lang/Object;

    .line 457
    .line 458
    iput-object v10, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->k:Ljava/lang/Object;

    .line 459
    .line 460
    iput-object v10, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->l:Ljava/lang/Object;

    .line 461
    .line 462
    iput-boolean v0, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->m:Z

    .line 463
    .line 464
    const/4 v10, 0x2

    .line 465
    iput v10, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->q:I

    .line 466
    .line 467
    move-object/from16 p1, v1

    .line 468
    .line 469
    move-object/from16 p2, v15

    .line 470
    .line 471
    move-object/from16 p3, v7

    .line 472
    .line 473
    move/from16 p4, v8

    .line 474
    .line 475
    move/from16 p5, v9

    .line 476
    .line 477
    move-object/from16 p6, v4

    .line 478
    .line 479
    invoke-virtual/range {p1 .. p6}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->r(Landroid/content/Context;Ljava/lang/String;IILrs/c;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    if-ne v1, v6, :cond_e

    .line 484
    .line 485
    return-object v6

    .line 486
    :cond_e
    move v10, v0

    .line 487
    move-object v0, v1

    .line 488
    move-object v1, v3

    .line 489
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    if-eqz v3, :cond_10

    .line 494
    .line 495
    move-object v3, v0

    .line 496
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 497
    .line 498
    if-eqz v3, :cond_f

    .line 499
    .line 500
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    new-instance v4, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 505
    .line 506
    filled-new-array {v3}, [Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    const/16 v13, 0x18

    .line 515
    .line 516
    const/4 v14, 0x0

    .line 517
    const/4 v8, 0x1

    .line 518
    const/4 v11, 0x0

    .line 519
    const/4 v12, 0x0

    .line 520
    move-object v7, v4

    .line 521
    invoke-direct/range {v7 .. v14}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;-><init>(ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v2, v4}, Lau/c;->l(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    goto :goto_7

    .line 528
    :cond_f
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    new-instance v7, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$3$1$1;

    .line 533
    .line 534
    const/4 v8, 0x0

    .line 535
    invoke-direct {v7, v8}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$3$1$1;-><init>(Lrs/c;)V

    .line 536
    .line 537
    .line 538
    iput-object v1, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->h:Ljava/lang/Object;

    .line 539
    .line 540
    iput-object v2, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->i:Ljava/lang/Object;

    .line 541
    .line 542
    iput-object v0, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->j:Ljava/lang/Object;

    .line 543
    .line 544
    const/4 v2, 0x3

    .line 545
    iput v2, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->q:I

    .line 546
    .line 547
    invoke-static {v3, v7, v4}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    if-ne v2, v6, :cond_10

    .line 552
    .line 553
    return-object v6

    .line 554
    :cond_10
    :goto_7
    move-object v3, v1

    .line 555
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    if-eqz v1, :cond_11

    .line 560
    .line 561
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 570
    .line 571
    :cond_11
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 572
    .line 573
    .line 574
    goto :goto_9

    .line 575
    :cond_12
    if-eqz v11, :cond_13

    .line 576
    .line 577
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/ShowDisableSkipUnlockToastEvent;

    .line 582
    .line 583
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/ShowDisableSkipUnlockToastEvent;-><init>()V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 590
    .line 591
    invoke-virtual {v6, v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 592
    .line 593
    .line 594
    move-result-object v8

    .line 595
    const-string v0, "status"

    .line 596
    .line 597
    const-string v1, "fail"

    .line 598
    .line 599
    invoke-virtual {v8, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    const-string v0, "scene"

    .line 603
    .line 604
    const-string v1, "immersion"

    .line 605
    .line 606
    invoke-virtual {v8, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    const-string v0, "type"

    .line 610
    .line 611
    const-string v1, "jump_episode"

    .line 612
    .line 613
    invoke-virtual {v8, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 617
    .line 618
    const/4 v11, 0x4

    .line 619
    const/4 v12, 0x0

    .line 620
    const-string v7, "reel_request"

    .line 621
    .line 622
    const-wide/16 v9, 0x0

    .line 623
    .line 624
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    goto :goto_9

    .line 628
    :cond_13
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    new-instance v7, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$3$4;

    .line 633
    .line 634
    const/4 v8, 0x0

    .line 635
    invoke-direct {v7, v1, v8}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$3$4;-><init>(Lcom/startshorts/androidplayer/bean/exception/ResponseException;Lrs/c;)V

    .line 636
    .line 637
    .line 638
    iput-object v3, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->h:Ljava/lang/Object;

    .line 639
    .line 640
    iput-object v2, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->i:Ljava/lang/Object;

    .line 641
    .line 642
    iput-object v8, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->j:Ljava/lang/Object;

    .line 643
    .line 644
    iput-object v8, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->k:Ljava/lang/Object;

    .line 645
    .line 646
    iput-object v8, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->l:Ljava/lang/Object;

    .line 647
    .line 648
    const/4 v1, 0x4

    .line 649
    iput v1, v4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$singleUnlockEpisodeByCoins$1;->q:I

    .line 650
    .line 651
    invoke-static {v0, v7, v4}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    if-ne v0, v6, :cond_14

    .line 656
    .line 657
    return-object v6

    .line 658
    :cond_14
    move-object v0, v3

    .line 659
    :goto_8
    move-object v3, v0

    .line 660
    :cond_15
    :goto_9
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 661
    .line 662
    return-object v0
.end method

.method public final t(Landroid/content/Context;ILjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$unlockEpisodeByDiscount$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$unlockEpisodeByDiscount$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$unlockEpisodeByDiscount$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$unlockEpisodeByDiscount$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$unlockEpisodeByDiscount$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$unlockEpisodeByDiscount$1;-><init>(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$unlockEpisodeByDiscount$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$unlockEpisodeByDiscount$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p4, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->f()Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$unlockEpisodeByDiscount$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->h(Landroid/content/Context;ILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    return-object p1
.end method
