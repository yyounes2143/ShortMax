.class public final Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "ImmersionViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,782:1\n125#2,13:783\n125#2,13:796\n*S KotlinDebug\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel\n*L\n569#1:783,13\n655#1:796,13\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->h:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lvk/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lvk/d;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->e:Lms/i;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->g:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic A()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Z()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->d0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->b0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->O()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->W(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->X(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Y(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;IZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->g0(Landroid/content/Context;IZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->l0(Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ZIZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->r0(ZIZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->s0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final M(I)V
    .locals 2

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->r0()Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne p1, v1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {v0, p1}, Lud/b;->l2(Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private final N(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V
    .locals 25

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getFrom()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, v9, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v11, 0x0

    .line 18
    const/16 v1, 0x29

    .line 19
    .line 20
    const/4 v12, 0x0

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    :goto_0
    move-object/from16 v13, p1

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "firstLoadEpisodes -> type(TYPE_EPISODE_FIRST) shortPlayID("

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsId()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsId()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-direct {v9, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->t0(I)Lkotlinx/coroutines/r;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_1
    const-string v0, "firstLoadEpisodes -> type(TYPE_CUR_EPISODE_NUM_DOWNLOAD)"

    .line 64
    .line 65
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsId()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getEpisodeNum()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getPreferredResolution()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-direct {v9, v0, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->k0(III)Lkotlinx/coroutines/r;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v2, "firstLoadEpisodes -> type(TYPE_PREV_EPISODE_ID) trailer("

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->isTrailer()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->isTrailer()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getBindShortsId()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getEpisodeId()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    const/16 v7, 0x21

    .line 138
    .line 139
    const/4 v8, 0x0

    .line 140
    const/4 v1, 0x0

    .line 141
    const/4 v4, 0x1

    .line 142
    const/4 v5, 0x4

    .line 143
    const/4 v6, 0x0

    .line 144
    move-object/from16 v0, p0

    .line 145
    .line 146
    invoke-static/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;IIZILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getLastEpisode()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_1

    .line 155
    .line 156
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 157
    .line 158
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$firstLoadEpisodes$1;

    .line 159
    .line 160
    move-object/from16 v13, p1

    .line 161
    .line 162
    invoke-direct {v4, v9, v13, v12}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$firstLoadEpisodes$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;Lrs/c;)V

    .line 163
    .line 164
    .line 165
    const/4 v5, 0x2

    .line 166
    const/4 v6, 0x0

    .line 167
    const-string v2, "queryEpisodesForNextShortsIfNormal"

    .line 168
    .line 169
    const/4 v3, 0x0

    .line 170
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 171
    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_1
    move-object/from16 v13, p1

    .line 176
    .line 177
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsId()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getEpisodeId()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getVideoType()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    invoke-direct {v9, v0, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->p0(III)Lkotlinx/coroutines/r;

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :pswitch_3
    move-object/from16 v13, p1

    .line 198
    .line 199
    const-string v0, "firstLoadEpisodes -> type(TYPE_CUR_EPISODE_ID)"

    .line 200
    .line 201
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsId()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getEpisodeId()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getVideoType()I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    const/16 v7, 0x29

    .line 221
    .line 222
    const/4 v8, 0x0

    .line 223
    const/4 v1, 0x0

    .line 224
    const/4 v4, 0x0

    .line 225
    const/4 v6, 0x0

    .line 226
    move-object/from16 v0, p0

    .line 227
    .line 228
    invoke-static/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;IIZILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :pswitch_4
    move-object/from16 v13, p1

    .line 233
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v2, "firstLoadEpisodes -> type(TYPE_SHORTS_ID) trailer("

    .line 240
    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->isTrailer()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsId()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getVideoType()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-direct {v9, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->q0(II)Lkotlinx/coroutines/r;

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :pswitch_5
    move-object/from16 v13, p1

    .line 274
    .line 275
    const-string v0, "firstLoadEpisodes -> type(TYPE_EPISODE_LIST)"

    .line 276
    .line 277
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-direct/range {p0 .. p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->n0(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :pswitch_6
    move-object/from16 v13, p1

    .line 285
    .line 286
    const-string v0, "firstLoadEpisodes -> type(TYPE_CUR_EPISODE_NUM)"

    .line 287
    .line 288
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsId()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getEpisodeNum()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getVideoType()I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    invoke-direct {v9, v0, v1, v11, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->o0(IIZI)Lkotlinx/coroutines/r;

    .line 308
    .line 309
    .line 310
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getLogEnterImmersion()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_3

    .line 315
    .line 316
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 317
    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getActResource()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const/4 v2, 0x2

    .line 323
    invoke-static {v1, v0, v11, v2, v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getModuleInfo()Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->H(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)Landroid/os/Bundle;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-static {v0, v2}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    const-string v0, "from"

    .line 340
    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getFrom()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->isTrailer()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_2

    .line 353
    .line 354
    const-string v0, "trailer"

    .line 355
    .line 356
    goto :goto_2

    .line 357
    :cond_2
    const-string v0, "positive"

    .line 358
    .line 359
    :goto_2
    const-string v2, "type"

    .line 360
    .line 361
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    const-string v0, "reel_id"

    .line 365
    .line 366
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortPlayCode()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const-string v0, "customShortsName"

    .line 374
    .line 375
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsName()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const-string v0, "customSearchValue"

    .line 383
    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getSearchString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 392
    .line 393
    const/4 v6, 0x4

    .line 394
    const/4 v7, 0x0

    .line 395
    const-string v2, "enter_reel_play"

    .line 396
    .line 397
    const-wide/16 v4, 0x0

    .line 398
    .line 399
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getFrom()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    const-string v1, "deeplink"

    .line 407
    .line 408
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_6

    .line 413
    .line 414
    sget-object v0, Lag/a;->a:Lag/a;

    .line 415
    .line 416
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortPlayCode()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v15

    .line 420
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getVideoType()I

    .line 421
    .line 422
    .line 423
    move-result v17

    .line 424
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getModuleInfo()Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    if-eqz v1, :cond_4

    .line 429
    .line 430
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getStatus()Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    move-object/from16 v20, v1

    .line 435
    .line 436
    goto :goto_3

    .line 437
    :cond_4
    move-object/from16 v20, v12

    .line 438
    .line 439
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getModuleInfo()Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    if-eqz v1, :cond_5

    .line 444
    .line 445
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getSort()Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v12

    .line 449
    :cond_5
    move-object/from16 v19, v12

    .line 450
    .line 451
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getUpack()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v21

    .line 455
    const/16 v23, 0x114

    .line 456
    .line 457
    const/16 v24, 0x0

    .line 458
    .line 459
    const-string v14, "deeplink"

    .line 460
    .line 461
    const/16 v16, 0x0

    .line 462
    .line 463
    const/16 v18, 0x0

    .line 464
    .line 465
    const/16 v22, 0x0

    .line 466
    .line 467
    move-object v13, v0

    .line 468
    invoke-static/range {v13 .. v24}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getFrom()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    const-string v1, "discover_watch_drama_pop"

    .line 477
    .line 478
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_9

    .line 483
    .line 484
    sget-object v0, Lag/a;->a:Lag/a;

    .line 485
    .line 486
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortPlayCode()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v15

    .line 490
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getVideoType()I

    .line 491
    .line 492
    .line 493
    move-result v17

    .line 494
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getModuleInfo()Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    if-eqz v1, :cond_7

    .line 499
    .line 500
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getStatus()Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    move-object/from16 v20, v1

    .line 505
    .line 506
    goto :goto_4

    .line 507
    :cond_7
    move-object/from16 v20, v12

    .line 508
    .line 509
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getModuleInfo()Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    if-eqz v1, :cond_8

    .line 514
    .line 515
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getSort()Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object v12

    .line 519
    :cond_8
    move-object/from16 v19, v12

    .line 520
    .line 521
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getUpack()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v21

    .line 525
    const/16 v23, 0x114

    .line 526
    .line 527
    const/16 v24, 0x0

    .line 528
    .line 529
    const-string v14, "discover_watch_drama_pop"

    .line 530
    .line 531
    const/16 v16, 0x0

    .line 532
    .line 533
    const/16 v18, 0x0

    .line 534
    .line 535
    const/16 v22, 0x0

    .line 536
    .line 537
    move-object v13, v0

    .line 538
    invoke-static/range {v13 .. v24}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    :cond_9
    :goto_5
    return-void

    .line 542
    nop

    .line 543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final O()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->f:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "deeplink"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private final P()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$getGoogleMatchEventUploadInfo$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$getGoogleMatchEventUploadInfo$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "getMatchEventUploadInfo"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private final S(ILcom/startshorts/androidplayer/bean/exception/ResponseException;Z)V
    .locals 1

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isShortsOrEpisodeNotFind()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    iget-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->g:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    iget-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->g:Ljava/util/List;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->M(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p3, Lcom/startshorts/androidplayer/viewmodel/immersion/d$c;

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p3, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$c;-><init>(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method static synthetic T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->S(ILcom/startshorts/androidplayer/bean/exception/ResponseException;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final U(ZIILcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/immersion/d$d;

    .line 6
    .line 7
    move-object v1, v7

    .line 8
    move v2, p1

    .line 9
    move v3, p2

    .line 10
    move v4, p3

    .line 11
    move-object v5, p4

    .line 12
    move-object v6, p5

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$d;-><init>(ZIILcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v7}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method static synthetic V(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ZIILcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x10

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move-object v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move-object v4, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->U(ZIILcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final W(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->O()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 8
    .line 9
    new-instance v3, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "reel_id"

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "api_url"

    .line 24
    .line 25
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "server_result"

    .line 29
    .line 30
    invoke-virtual {v3, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    const-string v2, "campaign_shorts_api_end"

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private final X(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->O()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 8
    .line 9
    new-instance v3, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "reel_id"

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "api_url"

    .line 24
    .line 25
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "err_msg"

    .line 29
    .line 30
    invoke-virtual {v3, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    const-string v2, "campaign_shorts_api_error"

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private final Y(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->O()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 8
    .line 9
    new-instance v3, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "reel_id"

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "trace_id"

    .line 24
    .line 25
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "api_url"

    .line 29
    .line 30
    invoke-virtual {v3, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    const-string v2, "campaign_shorts_api_start"

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private static final Z()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final a0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "preloadNextEpisodes -> fromUser("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ") isTrailer("

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ") shortsId("

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ") episodeId("

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ") bindShortPlayId("

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x29

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-direct {v4, p1, p0, p2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ZLrs/c;)V

    .line 78
    .line 79
    .line 80
    new-instance v5, Lvk/c;

    .line 81
    .line 82
    invoke-direct {v5, p0}, Lvk/c;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;)V

    .line 83
    .line 84
    .line 85
    const/4 v6, 0x2

    .line 86
    const/4 v7, 0x0

    .line 87
    const-string v2, "preloadNextEpisodes"

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    move-object v1, p0

    .line 91
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private static final b0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/d$e;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$e;-><init>(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private final c0(IIZ)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "preloadPrevEpisodes("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    move-object v4, v0

    .line 27
    move-object v5, p0

    .line 28
    move v6, p1

    .line 29
    move v7, p2

    .line 30
    move v8, p3

    .line 31
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIZLrs/c;)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Lvk/b;

    .line 35
    .line 36
    invoke-direct {v6, p0}, Lvk/b;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;)V

    .line 37
    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    move-object v2, p0

    .line 43
    move-object v5, v0

    .line 44
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private static final d0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p1, Lcom/startshorts/androidplayer/viewmodel/immersion/d$f;->a:Lcom/startshorts/androidplayer/viewmodel/immersion/d$f;

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private final f0(Landroid/content/Context;III)Lkotlinx/coroutines/r;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryEpisodeDetail("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;

    .line 24
    .line 25
    const/4 v10, 0x0

    .line 26
    move-object v4, v0

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, p0

    .line 29
    move v7, p2

    .line 30
    move v8, p3

    .line 31
    move v9, p4

    .line 32
    invoke-direct/range {v4 .. v10}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeDetail$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIILrs/c;)V

    .line 33
    .line 34
    .line 35
    const/4 v6, 0x2

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    move-object v2, p0

    .line 39
    move-object v5, v0

    .line 40
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method private final g0(Landroid/content/Context;IZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZLrs/c;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;",
            "ZZ",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    instance-of v4, v3, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;

    .line 15
    .line 16
    iget v5, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->o:I

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
    iput v5, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->o:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->m:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->o:I

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    if-ne v6, v7, :cond_1

    .line 45
    .line 46
    iget-boolean v1, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->l:Z

    .line 47
    .line 48
    iget-boolean v2, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->k:Z

    .line 49
    .line 50
    iget v5, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->j:I

    .line 51
    .line 52
    iget-object v6, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->i:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v6, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;

    .line 55
    .line 56
    iget-object v4, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->h:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 59
    .line 60
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    check-cast v3, Lkotlin/Result;

    .line 64
    .line 65
    invoke-virtual {v3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    move v10, v1

    .line 70
    move v1, v2

    .line 71
    move v9, v5

    .line 72
    move-object v8, v6

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :cond_2
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v6, "queryEpisodeFirstInternal ->  isMergeShorts("

    .line 91
    .line 92
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v6, ") toastError("

    .line 99
    .line 100
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const/16 v6, 0x29

    .line 107
    .line 108
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget-object v3, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 119
    .line 120
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    iput-object v0, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->h:Ljava/lang/Object;

    .line 125
    .line 126
    move-object/from16 v8, p4

    .line 127
    .line 128
    iput-object v8, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->i:Ljava/lang/Object;

    .line 129
    .line 130
    move/from16 v9, p2

    .line 131
    .line 132
    iput v9, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->j:I

    .line 133
    .line 134
    iput-boolean v1, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->k:Z

    .line 135
    .line 136
    move/from16 v10, p6

    .line 137
    .line 138
    iput-boolean v10, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->l:Z

    .line 139
    .line 140
    iput v7, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodeFirstInternal$1;->o:I

    .line 141
    .line 142
    move-object/from16 v11, p1

    .line 143
    .line 144
    invoke-virtual {v3, v11, v6, v2, v4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->t(Landroid/content/Context;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-ne v3, v5, :cond_3

    .line 149
    .line 150
    return-object v5

    .line 151
    :cond_3
    move-object v4, v0

    .line 152
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    const-string v5, "app/forYou/firstDramaForShortPlayId"

    .line 157
    .line 158
    const/4 v6, 0x0

    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    move-object v2, v3

    .line 162
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/QueryFirstEpisodesResult;

    .line 163
    .line 164
    new-instance v11, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    .line 165
    .line 166
    if-eqz v2, :cond_4

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/QueryFirstEpisodesResult;->getCurrentEpisodesResponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    goto :goto_2

    .line 173
    :cond_4
    move-object v12, v6

    .line 174
    :goto_2
    if-eqz v2, :cond_5

    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/QueryFirstEpisodesResult;->getShortPlayContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    goto :goto_3

    .line 181
    :cond_5
    move-object v2, v6

    .line 182
    :goto_3
    const/4 v13, 0x0

    .line 183
    const/4 v14, -0x1

    .line 184
    const/4 v15, 0x0

    .line 185
    move-object/from16 p1, v11

    .line 186
    .line 187
    move-object/from16 p2, v13

    .line 188
    .line 189
    move/from16 p3, v14

    .line 190
    .line 191
    move-object/from16 p4, v12

    .line 192
    .line 193
    move-object/from16 p5, v15

    .line 194
    .line 195
    move-object/from16 p6, v2

    .line 196
    .line 197
    invoke-direct/range {p1 .. p6}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;-><init>(Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 198
    .line 199
    .line 200
    if-eqz v10, :cond_7

    .line 201
    .line 202
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getCurrentEpisodesReponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    if-eqz v2, :cond_6

    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    goto :goto_4

    .line 213
    :cond_6
    move-object v2, v6

    .line 214
    :goto_4
    invoke-direct {v4, v9, v5, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->W(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_7
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getCurrentEpisodesReponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    if-nez v2, :cond_8

    .line 222
    .line 223
    new-instance v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 224
    .line 225
    const v2, 0x15f90

    .line 226
    .line 227
    .line 228
    const-string v7, "currentEpisodesResponse is null"

    .line 229
    .line 230
    invoke-direct {v1, v2, v7}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const/4 v2, 0x4

    .line 234
    const/4 v8, 0x0

    .line 235
    const/4 v11, 0x0

    .line 236
    move-object/from16 p1, v4

    .line 237
    .line 238
    move/from16 p2, v9

    .line 239
    .line 240
    move-object/from16 p3, v1

    .line 241
    .line 242
    move/from16 p4, v11

    .line 243
    .line 244
    move/from16 p5, v2

    .line 245
    .line 246
    move-object/from16 p6, v8

    .line 247
    .line 248
    invoke-static/range {p1 .. p6}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-direct {v4, v9, v5, v7}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->X(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string v1, "reponse null"

    .line 255
    .line 256
    invoke-direct {v4, v9, v5, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->X(ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_8
    invoke-virtual {v11, v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->updateIsMergeShorts(Z)V

    .line 261
    .line 262
    .line 263
    const/4 v1, 0x0

    .line 264
    const/4 v2, 0x0

    .line 265
    const/4 v3, 0x0

    .line 266
    move-object/from16 p1, v4

    .line 267
    .line 268
    move/from16 p2, v3

    .line 269
    .line 270
    move/from16 p3, v1

    .line 271
    .line 272
    move/from16 p4, v2

    .line 273
    .line 274
    move-object/from16 p5, v11

    .line 275
    .line 276
    move-object/from16 p6, v8

    .line 277
    .line 278
    invoke-direct/range {p1 .. p6}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->U(ZIILcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    return-object v1

    .line 286
    :cond_9
    :goto_5
    invoke-static {v3}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    if-eqz v1, :cond_c

    .line 291
    .line 292
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 293
    .line 294
    if-eqz v2, :cond_a

    .line 295
    .line 296
    move-object v6, v1

    .line 297
    check-cast v6, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 298
    .line 299
    :cond_a
    if-nez v6, :cond_b

    .line 300
    .line 301
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 302
    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    const-string v4, "onResponseFailure exception -> "

    .line 309
    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v1, ", exception must not be null"

    .line 321
    .line 322
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    const-string v3, "ApiBuilder"

    .line 330
    .line 331
    invoke-virtual {v2, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_b
    const/4 v1, 0x4

    .line 336
    const/4 v2, 0x0

    .line 337
    const/4 v3, 0x0

    .line 338
    move-object/from16 p1, v4

    .line 339
    .line 340
    move/from16 p2, v9

    .line 341
    .line 342
    move-object/from16 p3, v6

    .line 343
    .line 344
    move/from16 p4, v3

    .line 345
    .line 346
    move/from16 p5, v1

    .line 347
    .line 348
    move-object/from16 p6, v2

    .line 349
    .line 350
    invoke-static/range {p1 .. p6}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 354
    .line 355
    const-string v2, "play"

    .line 356
    .line 357
    invoke-virtual {v1, v6, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->m0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    if-eqz v10, :cond_c

    .line 361
    .line 362
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-direct {v4, v9, v5, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->X(ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :cond_c
    :goto_6
    const/4 v1, 0x0

    .line 370
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    return-object v1
.end method

.method static synthetic h0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;IZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v3, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v3, p1

    .line 9
    :goto_0
    and-int/lit8 v0, p8, 0x4

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move v5, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v5, p3

    .line 17
    :goto_1
    and-int/lit8 v0, p8, 0x8

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    move-object v6, v1

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move-object v6, p4

    .line 24
    :goto_2
    and-int/lit8 v0, p8, 0x10

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    move v7, v2

    .line 29
    goto :goto_3

    .line 30
    :cond_3
    move v7, p5

    .line 31
    :goto_3
    and-int/lit8 v0, p8, 0x20

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    move v8, v2

    .line 36
    goto :goto_4

    .line 37
    :cond_4
    move/from16 v8, p6

    .line 38
    .line 39
    :goto_4
    move-object v2, p0

    .line 40
    move v4, p2

    .line 41
    move-object/from16 v9, p7

    .line 42
    .line 43
    invoke-direct/range {v2 .. v9}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->g0(Landroid/content/Context;IZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZLrs/c;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method private final i0(Landroid/content/Context;IIZILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;)Lkotlinx/coroutines/r;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryEpisodesByCurEpisodeId("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move v1, p2

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x2d

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move v5, p3

    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v2, 0x29

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v11, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;

    .line 34
    .line 35
    const/4 v10, 0x0

    .line 36
    move-object v2, v11

    .line 37
    move-object v3, p0

    .line 38
    move v4, p2

    .line 39
    move-object/from16 v6, p6

    .line 40
    .line 41
    move-object v7, p1

    .line 42
    move/from16 v8, p5

    .line 43
    .line 44
    move/from16 v9, p4

    .line 45
    .line 46
    invoke-direct/range {v2 .. v10}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;Landroid/content/Context;IZLrs/c;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    move-object p1, p0

    .line 53
    move-object p2, v0

    .line 54
    move p3, v3

    .line 55
    move-object/from16 p4, v11

    .line 56
    .line 57
    move/from16 p5, v1

    .line 58
    .line 59
    move-object/from16 p6, v2

    .line 60
    .line 61
    invoke-static/range {p1 .. p6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method

.method static synthetic j0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;IIZILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v3, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v3, p1

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    move v6, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v6, p4

    .line 17
    :goto_1
    and-int/lit8 v0, p7, 0x20

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    move-object v8, v1

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move-object v8, p6

    .line 24
    :goto_2
    move-object v2, p0

    .line 25
    move v4, p2

    .line 26
    move v5, p3

    .line 27
    move v7, p5

    .line 28
    invoke-direct/range {v2 .. v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->i0(Landroid/content/Context;IIZILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;)Lkotlinx/coroutines/r;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method private final k0(III)Lkotlinx/coroutines/r;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryEpisodesByEpisodeNum("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x2d

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x29

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByDownLoadEpisodeNum$1;

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    move-object v4, v0

    .line 35
    move-object v5, p0

    .line 36
    move v6, p1

    .line 37
    move v7, p2

    .line 38
    move v8, p3

    .line 39
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByDownLoadEpisodeNum$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIILrs/c;)V

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    move-object v2, p0

    .line 46
    move-object v5, v0

    .line 47
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method private final l0(Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZIIIIIZ",
            "Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;",
            "ZZZ",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p8

    move/from16 v14, p12

    move-object/from16 v2, p13

    instance-of v3, v2, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;

    iget v4, v3, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->v:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->v:I

    :goto_0
    move-object v15, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;

    invoke-direct {v3, v0, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Lrs/c;)V

    goto :goto_0

    :goto_1
    iget-object v2, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->t:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v10

    .line 1
    iget v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->v:I

    const/4 v9, 0x2

    const/16 v16, 0x0

    const-string v7, "app/forYou/playSlideV3"

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v9, :cond_1

    iget v1, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->s:I

    iget-boolean v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->n:Z

    iget-boolean v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->m:Z

    iget v5, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->r:I

    iget v9, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->q:I

    iget v10, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->p:I

    iget-boolean v11, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->l:Z

    iget-object v12, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->k:Ljava/lang/Object;

    check-cast v12, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    iget-object v13, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->j:Ljava/lang/Object;

    iget-object v14, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->i:Ljava/lang/Object;

    check-cast v14, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;

    iget-object v15, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->h:Ljava/lang/Object;

    check-cast v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    move v8, v1

    move-object v0, v7

    move/from16 v18, v9

    move v9, v6

    move-object v6, v13

    move v13, v11

    move/from16 v11, v18

    goto/16 :goto_7

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-boolean v1, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->o:Z

    iget-boolean v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->n:Z

    iget-boolean v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->m:Z

    iget v5, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->r:I

    iget v11, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->q:I

    iget v12, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->p:I

    iget-boolean v13, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->l:Z

    iget-object v14, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->i:Ljava/lang/Object;

    check-cast v14, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;

    iget-object v8, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->h:Ljava/lang/Object;

    check-cast v8, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->n()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    move-object v0, v7

    move v2, v1

    move-object v1, v10

    goto/16 :goto_2

    :cond_3
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryEpisodesByEpisodeIdInternal -> preload("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") episodeId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") expectPrevSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") expectNextSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    const-string v3, ") isMergeShorts("

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5
    const-string v3, ") toastError("

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p10

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 7
    const-string v3, ") queryForTrailer("

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 10
    sget-object v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 11
    iget-object v3, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->f:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, ""

    :cond_4
    move-object v4, v3

    .line 12
    iput-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->h:Ljava/lang/Object;

    move-object/from16 v3, p9

    iput-object v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->i:Ljava/lang/Object;

    iput-boolean v1, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->l:Z

    move/from16 v6, p3

    iput v6, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->p:I

    iput v11, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->q:I

    iput v12, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->r:I

    iput-boolean v13, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->m:Z

    move/from16 v0, p11

    iput-boolean v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->n:Z

    iput-boolean v14, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->o:Z

    const/4 v9, 0x1

    iput v9, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->v:I

    move-object/from16 v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v0, v7

    move/from16 v7, p6

    const/4 v1, 0x0

    move/from16 v8, p7

    move/from16 v9, p10

    move-object v1, v10

    move-object v10, v15

    invoke-virtual/range {v2 .. v10}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->s(Landroid/content/Context;Ljava/lang/String;IIIIZLrs/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object/from16 v8, p0

    move/from16 v3, p11

    move-object v6, v2

    move v5, v12

    move v4, v13

    move v2, v14

    move/from16 v13, p2

    move/from16 v12, p3

    move-object/from16 v14, p9

    .line 13
    :goto_2
    invoke-static {v6}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    move-object v7, v6

    check-cast v7, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    if-eqz v3, :cond_7

    if-eqz v7, :cond_6

    .line 14
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getCurrentEpisodesReponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_6
    move-object/from16 v9, v16

    :goto_3
    invoke-direct {v8, v12, v0, v9}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->W(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-nez v13, :cond_b

    if-eqz v7, :cond_8

    .line 15
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getCurrentEpisodesReponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object/from16 v1, v16

    :goto_4
    if-nez v1, :cond_a

    .line 16
    new-instance v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    const v2, 0x15f90

    const-string v9, "currentEpisodesResponse is null"

    invoke-direct {v1, v2, v9}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x4

    const/4 v10, 0x0

    const/4 v15, 0x0

    move-object/from16 p1, v8

    move/from16 p2, v12

    move-object/from16 p3, v1

    move/from16 p4, v15

    move/from16 p5, v2

    move-object/from16 p6, v10

    invoke-static/range {p1 .. p6}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V

    .line 17
    invoke-direct {v8, v12, v0, v9}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->X(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_8

    :cond_a
    const/4 v9, 0x1

    const/16 v17, 0x1

    goto/16 :goto_a

    :cond_b
    if-nez v7, :cond_c

    goto :goto_6

    .line 18
    :cond_c
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getCurrentEpisodesReponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getFinalDramId()I

    move-result v9

    if-lez v9, :cond_d

    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getCurrentEpisodesReponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    move-result v9

    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getFinalDramId()I

    move-result v10

    if-ne v9, v10, :cond_d

    if-nez v11, :cond_d

    if-eqz v5, :cond_d

    goto :goto_6

    .line 19
    :cond_d
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getPreviousEpisodesReponse()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    if-eqz v9, :cond_e

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_e
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getNextEpisodesReponse()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    if-eqz v9, :cond_10

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_5

    :cond_f
    const/4 v9, 0x1

    goto :goto_9

    .line 20
    :cond_10
    :goto_5
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getCurrentEpisodesReponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v9

    if-nez v9, :cond_11

    goto :goto_6

    :cond_11
    if-nez v2, :cond_f

    :goto_6
    if-nez v11, :cond_9

    if-eqz v5, :cond_9

    .line 21
    iput-object v8, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->h:Ljava/lang/Object;

    iput-object v14, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->i:Ljava/lang/Object;

    iput-object v6, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->j:Ljava/lang/Object;

    iput-object v7, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->k:Ljava/lang/Object;

    iput-boolean v13, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->l:Z

    iput v12, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->p:I

    iput v11, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->q:I

    iput v5, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->r:I

    iput-boolean v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->m:Z

    iput-boolean v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->n:Z

    const/4 v2, 0x0

    iput v2, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->s:I

    const/4 v9, 0x2

    iput v9, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeIdInternal$1;->v:I

    const/4 v9, 0x1

    invoke-direct {v8, v9, v12, v2, v15}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->r0(ZIZLrs/c;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_12

    return-object v1

    :cond_12
    move-object v15, v8

    move v10, v12

    const/4 v8, 0x0

    move-object v12, v7

    :goto_7
    move/from16 v17, v8

    move-object v7, v12

    move-object v8, v15

    move v12, v10

    goto :goto_a

    :goto_8
    const/16 v17, 0x0

    goto :goto_a

    :goto_9
    move/from16 v17, v9

    :goto_a
    if-eqz v17, :cond_13

    if-eqz v7, :cond_13

    .line 22
    invoke-virtual {v7, v4}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->updateIsMergeShorts(Z)V

    move-object/from16 p1, v8

    move/from16 p2, v13

    move/from16 p3, v11

    move/from16 p4, v5

    move-object/from16 p5, v7

    move-object/from16 p6, v14

    .line 23
    invoke-direct/range {p1 .. p6}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->U(ZIILcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;)V

    .line 24
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 25
    :cond_13
    const-string v1, "reponse null"

    invoke-direct {v8, v12, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->X(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_14
    invoke-static {v6}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 27
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    if-eqz v2, :cond_15

    move-object/from16 v16, v1

    check-cast v16, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    :cond_15
    move-object/from16 v2, v16

    if-nez v2, :cond_16

    .line 28
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponseFailure exception -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exception must not be null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    const-string v2, "ApiBuilder"

    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_16
    if-nez v13, :cond_17

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, v8

    move/from16 p2, v12

    move-object/from16 p3, v2

    move/from16 p4, v5

    move/from16 p5, v1

    move-object/from16 p6, v4

    .line 31
    invoke-static/range {p1 .. p6}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V

    .line 32
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    const-string v4, "play"

    invoke-virtual {v1, v2, v4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->m0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    .line 33
    invoke-direct {v8, v12, v2, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->S(ILcom/startshorts/androidplayer/bean/exception/ResponseException;Z)V

    :goto_b
    if-eqz v3, :cond_19

    .line 34
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v12, v0, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->X(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    :goto_c
    const/4 v1, 0x0

    .line 35
    :cond_19
    :goto_d
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move v11, v3

    goto :goto_2

    :cond_2
    move/from16 v11, p8

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move-object v12, v2

    goto :goto_3

    :cond_3
    move-object/from16 v12, p9

    :goto_3
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    move v13, v3

    goto :goto_4

    :cond_4
    move/from16 v13, p10

    :goto_4
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    move v14, v3

    goto :goto_5

    :cond_5
    move/from16 v14, p11

    :goto_5
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_6

    move v15, v3

    goto :goto_6

    :cond_6
    move/from16 v15, p12

    :goto_6
    move-object/from16 v3, p0

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v16, p13

    .line 1
    invoke-direct/range {v3 .. v16}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->l0(Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final n0(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getEpisodeList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Ljava/util/Collection;

    .line 7
    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getEpisodeListStartPosition()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "queryEpisodesByEpisodeList -> episodeListSize("

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ") startPosition("

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v2, 0x29

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v5, v1

    .line 64
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x0

    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    move-object v3, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {v0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const/4 v6, 0x1

    .line 81
    sub-int/2addr v4, v6

    .line 82
    if-ne p1, v4, :cond_2

    .line 83
    .line 84
    move-object p1, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    add-int/2addr p1, v6

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const/4 v4, 0x2

    .line 100
    if-ne v1, v4, :cond_3

    .line 101
    .line 102
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 107
    .line 108
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 113
    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-ne v4, v6, :cond_3

    .line 121
    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-ne v1, v4, :cond_3

    .line 133
    .line 134
    invoke-virtual {v0, v6}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setMergeShortPlay(Z)V

    .line 135
    .line 136
    .line 137
    :cond_3
    if-eqz v3, :cond_4

    .line 138
    .line 139
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move v0, v2

    .line 145
    :goto_2
    if-eqz p1, :cond_5

    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    :cond_5
    move v1, v2

    .line 152
    new-instance v10, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    .line 153
    .line 154
    const/16 v8, 0x10

    .line 155
    .line 156
    const/4 v9, 0x0

    .line 157
    const/4 v4, -0x1

    .line 158
    const/4 v7, 0x0

    .line 159
    move-object v2, v10

    .line 160
    move-object v6, p1

    .line 161
    invoke-direct/range {v2 .. v9}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;-><init>(Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 162
    .line 163
    .line 164
    const/16 v12, 0x10

    .line 165
    .line 166
    const/4 v13, 0x0

    .line 167
    const/4 v7, 0x0

    .line 168
    const/4 v11, 0x0

    .line 169
    move-object v6, p0

    .line 170
    move v8, v0

    .line 171
    move v9, v1

    .line 172
    invoke-static/range {v6 .. v13}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->V(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ZIILcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsId()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    sget-object p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->Companion:Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;->getUNKNOWN_EXCEPTION()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    const/4 v4, 0x4

    .line 191
    const/4 v5, 0x0

    .line 192
    const/4 v3, 0x0

    .line 193
    move-object v0, p0

    .line 194
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :goto_4
    return-void
.end method

.method private final o0(IIZI)Lkotlinx/coroutines/r;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryEpisodesByEpisodeNum("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x2d

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x29

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    move-object v4, v0

    .line 35
    move-object v5, p0

    .line 36
    move v6, p1

    .line 37
    move v7, p2

    .line 38
    move v8, p3

    .line 39
    move v9, p4

    .line 40
    invoke-direct/range {v4 .. v10}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIZILrs/c;)V

    .line 41
    .line 42
    .line 43
    const/4 v6, 0x2

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    move-object v2, p0

    .line 47
    move-object v5, v0

    .line 48
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method private final p0(III)Lkotlinx/coroutines/r;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryEpisodesByPrevEpisodeId("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x2d

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x29

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    move-object v4, v0

    .line 35
    move-object v5, p0

    .line 36
    move v6, p1

    .line 37
    move v7, p2

    .line 38
    move v8, p3

    .line 39
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByPrevEpisodeId$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIILrs/c;)V

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    move-object v2, p0

    .line 46
    move-object v5, v0

    .line 47
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method private final q0(II)Lkotlinx/coroutines/r;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryEpisodesByShortsId("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {v5, p0, p1, p2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IILrs/c;)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v2, p0

    .line 33
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method private final r0(ZIZLrs/c;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    instance-of v4, v3, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;

    .line 15
    .line 16
    iget v5, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->n:I

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
    iput v5, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->n:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->l:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->n:I

    .line 40
    .line 41
    const/16 v7, 0x29

    .line 42
    .line 43
    const/4 v8, 0x2

    .line 44
    const/4 v9, 0x1

    .line 45
    const/4 v10, 0x0

    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    if-eq v6, v9, :cond_2

    .line 49
    .line 50
    if-ne v6, v8, :cond_1

    .line 51
    .line 52
    iget-boolean v1, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->j:Z

    .line 53
    .line 54
    iget v2, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->k:I

    .line 55
    .line 56
    iget-boolean v5, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->i:Z

    .line 57
    .line 58
    iget-object v4, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->h:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 61
    .line 62
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    check-cast v3, Lkotlin/Result;

    .line 66
    .line 67
    invoke-virtual {v3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_2
    iget-boolean v1, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->j:Z

    .line 82
    .line 83
    iget v2, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->k:I

    .line 84
    .line 85
    iget-boolean v6, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->i:Z

    .line 86
    .line 87
    iget-object v9, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->h:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v9, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 90
    .line 91
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    check-cast v3, Lkotlin/Result;

    .line 95
    .line 96
    invoke-virtual {v3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    move/from16 v21, v6

    .line 101
    .line 102
    move v6, v1

    .line 103
    move/from16 v1, v21

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v6, "queryEpisodesForNextShortsIfNormal -> preload("

    .line 115
    .line 116
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v6, ") currentShortsId("

    .line 123
    .line 124
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sget-object v3, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 141
    .line 142
    iput-object v0, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->h:Ljava/lang/Object;

    .line 143
    .line 144
    iput-boolean v1, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->i:Z

    .line 145
    .line 146
    iput v2, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->k:I

    .line 147
    .line 148
    move/from16 v6, p3

    .line 149
    .line 150
    iput-boolean v6, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->j:Z

    .line 151
    .line 152
    iput v9, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->n:I

    .line 153
    .line 154
    invoke-virtual {v3, v2, v4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->v(ILrs/c;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    if-ne v3, v5, :cond_4

    .line 159
    .line 160
    return-object v5

    .line 161
    :cond_4
    move-object v9, v0

    .line 162
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    if-eqz v11, :cond_5

    .line 167
    .line 168
    move-object v3, v10

    .line 169
    :cond_5
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 170
    .line 171
    if-nez v3, :cond_8

    .line 172
    .line 173
    sget-object v3, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 174
    .line 175
    iput-object v9, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->h:Ljava/lang/Object;

    .line 176
    .line 177
    iput-boolean v1, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->i:Z

    .line 178
    .line 179
    iput v2, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->k:I

    .line 180
    .line 181
    iput-boolean v6, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->j:Z

    .line 182
    .line 183
    iput v8, v4, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->n:I

    .line 184
    .line 185
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->v(Lrs/c;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    if-ne v3, v5, :cond_6

    .line 190
    .line 191
    return-object v5

    .line 192
    :cond_6
    move v5, v1

    .line 193
    move v1, v6

    .line 194
    move-object v4, v9

    .line 195
    :goto_2
    invoke-static {v3}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-eqz v6, :cond_7

    .line 200
    .line 201
    move-object v3, v10

    .line 202
    :cond_7
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 203
    .line 204
    move v6, v1

    .line 205
    move-object/from16 v16, v3

    .line 206
    .line 207
    move-object v1, v4

    .line 208
    move v12, v5

    .line 209
    goto :goto_3

    .line 210
    :cond_8
    move v12, v1

    .line 211
    move-object/from16 v16, v3

    .line 212
    .line 213
    move-object v1, v9

    .line 214
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v4, "queryEpisodesForNextShortsIfNormal -> nextShortsId("

    .line 220
    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    if-eqz v16, :cond_9

    .line 225
    .line 226
    invoke-virtual/range {v16 .. v16}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    goto :goto_4

    .line 235
    :cond_9
    move-object v4, v10

    .line 236
    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v4, ") isTrailer("

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    if-eqz v16, :cond_a

    .line 245
    .line 246
    invoke-virtual/range {v16 .. v16}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    goto :goto_5

    .line 255
    :cond_a
    move-object v4, v10

    .line 256
    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v4, ") episodeId("

    .line 260
    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    if-eqz v16, :cond_b

    .line 265
    .line 266
    invoke-virtual/range {v16 .. v16}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    goto :goto_6

    .line 275
    :cond_b
    move-object v4, v10

    .line 276
    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v4, ") episodeNum("

    .line 280
    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    if-eqz v16, :cond_c

    .line 285
    .line 286
    invoke-virtual/range {v16 .. v16}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    :cond_c
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    if-eqz v16, :cond_d

    .line 308
    .line 309
    new-instance v2, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    .line 310
    .line 311
    const/16 v19, 0x10

    .line 312
    .line 313
    const/16 v20, 0x0

    .line 314
    .line 315
    const/4 v14, 0x0

    .line 316
    const/4 v15, -0x1

    .line 317
    const/16 v17, 0x0

    .line 318
    .line 319
    const/16 v18, 0x0

    .line 320
    .line 321
    move-object v13, v2

    .line 322
    invoke-direct/range {v13 .. v20}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;-><init>(Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 323
    .line 324
    .line 325
    const/16 v17, 0x10

    .line 326
    .line 327
    const/4 v13, 0x0

    .line 328
    const/4 v14, 0x1

    .line 329
    const/16 v16, 0x0

    .line 330
    .line 331
    move-object v11, v1

    .line 332
    move-object v15, v2

    .line 333
    invoke-static/range {v11 .. v18}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->V(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ZIILcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ILjava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_d
    if-eqz v6, :cond_e

    .line 338
    .line 339
    sget-object v3, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->Companion:Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;

    .line 340
    .line 341
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;->getUNKNOWN_EXCEPTION()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    const/4 v5, 0x4

    .line 346
    const/4 v6, 0x0

    .line 347
    const/4 v4, 0x0

    .line 348
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILcom/startshorts/androidplayer/bean/exception/ResponseException;ZILjava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_e
    :goto_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 352
    .line 353
    return-object v1
.end method

.method private final s0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;

    .line 11
    .line 12
    iget v2, v1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;->k:I

    .line 13
    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int v4, v2, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iput v2, v1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;->k:I

    .line 22
    .line 23
    :goto_0
    move-object v13, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;

    .line 26
    .line 27
    invoke-direct {v1, v15, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v13, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;->i:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v14

    .line 37
    iget v1, v13, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;->k:I

    .line 38
    .line 39
    const/16 v2, 0x29

    .line 40
    .line 41
    const-string v3, ") bindShortPlayId("

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    const/4 v5, 0x2

    .line 45
    const/4 v6, 0x1

    .line 46
    const/4 v7, 0x0

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    if-eq v1, v6, :cond_3

    .line 50
    .line 51
    if-eq v1, v5, :cond_2

    .line 52
    .line 53
    if-ne v1, v4, :cond_1

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_9

    .line 59
    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_2
    iget-object v1, v13, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;->h:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 71
    .line 72
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    check-cast v0, Lkotlin/Result;

    .line 76
    .line 77
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_3
    iget-object v1, v13, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;->h:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 86
    .line 87
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    check-cast v0, Lkotlin/Result;

    .line 91
    .line 92
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v1, "queryEpisodesForNextShortsIfTrailer -> currentShortsId("

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ") currentEpisodeId("

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ") firstDramId("

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstDramId()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v15, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstDramId()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    const/4 v1, -0x1

    .line 166
    if-eq v0, v1, :cond_5

    .line 167
    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-lez v0, :cond_5

    .line 173
    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstDramId()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    move v8, v0

    .line 179
    goto :goto_2

    .line 180
    :cond_5
    move v8, v1

    .line 181
    :goto_2
    if-ne v8, v1, :cond_10

    .line 182
    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-lez v0, :cond_8

    .line 188
    .line 189
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 190
    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    iput-object v15, v13, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;->h:Ljava/lang/Object;

    .line 196
    .line 197
    iput v6, v13, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;->k:I

    .line 198
    .line 199
    invoke-virtual {v0, v1, v13}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->v(ILrs/c;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    if-ne v0, v14, :cond_6

    .line 204
    .line 205
    return-object v14

    .line 206
    :cond_6
    move-object v1, v15

    .line 207
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_7

    .line 212
    .line 213
    move-object v0, v7

    .line 214
    :cond_7
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_8
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 218
    .line 219
    iput-object v15, v13, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;->h:Ljava/lang/Object;

    .line 220
    .line 221
    iput v5, v13, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;->k:I

    .line 222
    .line 223
    invoke-virtual {v0, v13}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->v(Lrs/c;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-ne v0, v14, :cond_9

    .line 228
    .line 229
    return-object v14

    .line 230
    :cond_9
    move-object v1, v15

    .line 231
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_a

    .line 236
    .line 237
    move-object v0, v7

    .line 238
    :cond_a
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 239
    .line 240
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v5, "queryEpisodesForNextShortsIfTrailer -> nextShortsId("

    .line 246
    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    if-eqz v0, :cond_b

    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    goto :goto_6

    .line 261
    :cond_b
    move-object v5, v7

    .line 262
    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v5, ") isTrailer("

    .line 266
    .line 267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    if-eqz v0, :cond_c

    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    goto :goto_7

    .line 281
    :cond_c
    move-object v5, v7

    .line 282
    :goto_7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v5, ") nextEpisodeId("

    .line 286
    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    if-eqz v0, :cond_d

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    goto :goto_8

    .line 301
    :cond_d
    move-object v5, v7

    .line 302
    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    if-eqz v0, :cond_e

    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    :cond_e
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    if-eqz v0, :cond_f

    .line 332
    .line 333
    new-instance v20, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    .line 334
    .line 335
    filled-new-array {v0}, [Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v11

    .line 343
    const/16 v13, 0x10

    .line 344
    .line 345
    const/4 v14, 0x0

    .line 346
    const/4 v8, 0x0

    .line 347
    const/4 v9, -0x1

    .line 348
    const/4 v10, 0x0

    .line 349
    const/4 v12, 0x0

    .line 350
    move-object/from16 v7, v20

    .line 351
    .line 352
    invoke-direct/range {v7 .. v14}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;-><init>(Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 353
    .line 354
    .line 355
    const/16 v22, 0x10

    .line 356
    .line 357
    const/16 v23, 0x0

    .line 358
    .line 359
    const/16 v17, 0x1

    .line 360
    .line 361
    const/16 v18, 0x0

    .line 362
    .line 363
    const/16 v19, 0x1

    .line 364
    .line 365
    const/16 v21, 0x0

    .line 366
    .line 367
    move-object/from16 v16, v1

    .line 368
    .line 369
    invoke-static/range {v16 .. v23}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->V(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ZIILcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    return-object v0

    .line 377
    :cond_f
    const/4 v0, 0x0

    .line 378
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    return-object v0

    .line 383
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoType()I

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    iput v4, v13, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfTrailer$1;->k:I

    .line 392
    .line 393
    const/4 v1, 0x0

    .line 394
    const/4 v2, 0x1

    .line 395
    const/4 v5, 0x0

    .line 396
    const/16 v6, 0xc

    .line 397
    .line 398
    const/4 v9, 0x1

    .line 399
    const/4 v10, 0x0

    .line 400
    const/4 v11, 0x0

    .line 401
    const/4 v12, 0x0

    .line 402
    const/16 v16, 0x1

    .line 403
    .line 404
    const/16 v17, 0x701

    .line 405
    .line 406
    const/16 v18, 0x0

    .line 407
    .line 408
    move-object/from16 v0, p0

    .line 409
    .line 410
    move v4, v8

    .line 411
    move v8, v9

    .line 412
    move-object v9, v10

    .line 413
    move v10, v11

    .line 414
    move v11, v12

    .line 415
    move/from16 v12, v16

    .line 416
    .line 417
    move-object/from16 v24, v14

    .line 418
    .line 419
    move/from16 v14, v17

    .line 420
    .line 421
    move-object/from16 v15, v18

    .line 422
    .line 423
    invoke-static/range {v0 .. v15}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->m0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    move-object/from16 v1, v24

    .line 428
    .line 429
    if-ne v0, v1, :cond_11

    .line 430
    .line 431
    return-object v1

    .line 432
    :cond_11
    :goto_9
    return-object v0
.end method

.method private final t0(I)Lkotlinx/coroutines/r;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryFirstEpisodesByShortsId("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryFirstEpisodesByShortsId$1;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {v5, p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryFirstEpisodesByShortsId$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILrs/c;)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v2, p0

    .line 33
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method private final u0(I)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryImmersionBackShorts$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryImmersionBackShorts$1;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryImmersionBackShorts"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final v0(I)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortDiscount$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortDiscount$1;-><init>(ILcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryShortDiscount"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final w0(I)Lkotlinx/coroutines/r;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryShortsDetail("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {v5, p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryShortsDetail$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ILrs/c;)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v2, p0

    .line 33
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method


# virtual methods
.method public final Q()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final R()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e0(Lcom/startshorts/androidplayer/viewmodel/immersion/c;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/immersion/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$m;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$m;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$m;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->f:Ljava/lang/String;

    .line 17
    .line 18
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$a;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$a;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$a;->a()Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->N(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$j;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$j;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$j;->a()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->w0(I)Lkotlinx/coroutines/r;

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$f;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$f;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$f;->b()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$f;->a()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$f;->d()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$f;->c()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->o0(IIZI)Lkotlinx/coroutines/r;

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$k;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$k;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$k;->a()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$k;->d()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$k;->b()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$k;->e()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$k;->c()Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const/16 v7, 0x8

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v4, 0x0

    .line 111
    move-object v0, p0

    .line 112
    invoke-static/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;IIZILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$l;

    .line 118
    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$l;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$l;->b()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$l;->a()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$l;->c()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->p0(III)Lkotlinx/coroutines/r;

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$g;

    .line 141
    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$g;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$g;->a()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$g;->b()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->q0(II)Lkotlinx/coroutines/r;

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$d;

    .line 159
    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$d;

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$d;->a()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$d;->c()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$d;->b()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->c0(IIZ)V

    .line 177
    .line 178
    .line 179
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$c;

    .line 183
    .line 184
    if-eqz v0, :cond_8

    .line 185
    .line 186
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$c;

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$c;->a()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$c;->b()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->a0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 197
    .line 198
    .line 199
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_8
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$e;

    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$e;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$e;->a()Landroid/content/Context;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$e;->b()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$e;->c()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$e;->d()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->f0(Landroid/content/Context;III)Lkotlinx/coroutines/r;

    .line 225
    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_9
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$h;

    .line 229
    .line 230
    if-eqz v0, :cond_a

    .line 231
    .line 232
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$h;

    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$h;->a()I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->u0(I)Lkotlinx/coroutines/r;

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$i;

    .line 243
    .line 244
    if-eqz v0, :cond_b

    .line 245
    .line 246
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$i;

    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$i;->a()I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->v0(I)Lkotlinx/coroutines/r;

    .line 253
    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_b
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$b;

    .line 257
    .line 258
    if-eqz p1, :cond_c

    .line 259
    .line 260
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->P()Lkotlinx/coroutines/r;

    .line 261
    .line 262
    .line 263
    :goto_0
    return-void

    .line 264
    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 265
    .line 266
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 267
    .line 268
    .line 269
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ImmersionViewModel"

    .line 2
    .line 3
    return-object v0
.end method
