.class public final Lze/c;
.super Ljava/lang/Object;
.source "ComingSoonHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lze/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lze/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lze/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lze/c;->a:Lze/c;

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

.method public static synthetic a(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lze/c;->g(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;ZLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lze/c;->h(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lze/c;Landroidx/fragment/app/FragmentManager;Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroid/widget/TextView;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ZILjava/lang/Object;)V
    .locals 14

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x40

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v10, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v10, p7

    .line 11
    .line 12
    :goto_0
    and-int/lit16 v1, v0, 0x80

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v11, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v11, p8

    .line 19
    .line 20
    :goto_1
    and-int/lit16 v1, v0, 0x100

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    move-object v12, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v12, p9

    .line 27
    .line 28
    :goto_2
    and-int/lit16 v0, v0, 0x200

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    move v13, v0

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move/from16 v13, p10

    .line 36
    .line 37
    :goto_3
    move-object v3, p0

    .line 38
    move-object v4, p1

    .line 39
    move-object/from16 v5, p2

    .line 40
    .line 41
    move-object/from16 v6, p3

    .line 42
    .line 43
    move-object/from16 v7, p4

    .line 44
    .line 45
    move-object/from16 v8, p5

    .line 46
    .line 47
    move-object/from16 v9, p6

    .line 48
    .line 49
    invoke-virtual/range {v3 .. v13}, Lze/c;->c(Landroidx/fragment/app/FragmentManager;Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroid/widget/TextView;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static synthetic f(Lze/c;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroid/widget/TextView;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ZILjava/lang/Object;)V
    .locals 13

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v9, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v9, p6

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x40

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v10, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v10, p7

    .line 19
    .line 20
    :goto_1
    and-int/lit16 v1, v0, 0x80

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    move-object v11, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v11, p8

    .line 27
    .line 28
    :goto_2
    and-int/lit16 v0, v0, 0x100

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    move v12, v0

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move/from16 v12, p9

    .line 36
    .line 37
    :goto_3
    move-object v3, p0

    .line 38
    move-object v4, p1

    .line 39
    move-object v5, p2

    .line 40
    move-object/from16 v6, p3

    .line 41
    .line 42
    move-object/from16 v7, p4

    .line 43
    .line 44
    move-object/from16 v8, p5

    .line 45
    .line 46
    invoke-virtual/range {v3 .. v12}, Lze/c;->d(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroid/widget/TextView;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private static final g(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;ZLandroid/view/View;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getModuleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v5, "module_name"

    .line 16
    .line 17
    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "module_id"

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getModuleId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v3, v9

    .line 38
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v5, "position_id"

    .line 43
    .line 44
    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v3, "module_type"

    .line 48
    .line 49
    const-string v5, "coming_soon"

    .line 50
    .line 51
    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    if-eqz p4, :cond_1

    .line 55
    .line 56
    const-string v3, "scene"

    .line 57
    .line 58
    const-string v5, "discover_more"

    .line 59
    .line 60
    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    const-string/jumbo v3, "upack"

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getTrailerId()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-lez v3, :cond_3

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getTrailerId()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const-string v5, "reel_id"

    .line 98
    .line 99
    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string/jumbo v3, "type"

    .line 103
    .line 104
    .line 105
    const-string/jumbo v5, "trailer"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    const-string/jumbo v3, "skip_type"

    .line 112
    .line 113
    .line 114
    const-string v5, "reel"

    .line 115
    .line 116
    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getRecommendId()Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-eqz v3, :cond_4

    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-lez v3, :cond_4

    .line 130
    .line 131
    const-string v5, "audiences_recommend_id"

    .line 132
    .line 133
    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    :cond_4
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 137
    .line 138
    const/4 v7, 0x4

    .line 139
    const/4 v8, 0x0

    .line 140
    const-string v3, "discover_module_click"

    .line 141
    .line 142
    const-wide/16 v5, 0x0

    .line 143
    .line 144
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getTrailerId()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_5

    .line 152
    .line 153
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->t:Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment$a;

    .line 154
    .line 155
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    move-object/from16 v3, p2

    .line 159
    .line 160
    invoke-virtual {v2, v3, v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment$a;->a(Landroidx/fragment/app/FragmentManager;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_5
    sget-object v0, Lze/c;->a:Lze/c;

    .line 165
    .line 166
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-string v3, "getContext(...)"

    .line 171
    .line 172
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->formatTitleForEvent()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getModuleId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    const-string v5, ""

    .line 184
    .line 185
    if-nez v4, :cond_6

    .line 186
    .line 187
    move-object v11, v5

    .line 188
    goto :goto_1

    .line 189
    :cond_6
    move-object v11, v4

    .line 190
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getModuleName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    if-nez v4, :cond_7

    .line 195
    .line 196
    move-object v13, v5

    .line 197
    goto :goto_2

    .line 198
    :cond_7
    move-object v13, v4

    .line 199
    :goto_2
    if-eqz p3, :cond_8

    .line 200
    .line 201
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    :cond_8
    move v14, v9

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getTrailerId()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v16

    .line 214
    new-instance v4, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 215
    .line 216
    const/16 v22, 0x7d0

    .line 217
    .line 218
    const/16 v23, 0x0

    .line 219
    .line 220
    const-string v12, "coming_soon"

    .line 221
    .line 222
    const/4 v15, 0x0

    .line 223
    const/16 v17, 0x0

    .line 224
    .line 225
    const/16 v18, 0x0

    .line 226
    .line 227
    const/16 v19, 0x0

    .line 228
    .line 229
    const/16 v20, 0x0

    .line 230
    .line 231
    const/16 v21, 0x0

    .line 232
    .line 233
    move-object v10, v4

    .line 234
    invoke-direct/range {v10 .. v23}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 235
    .line 236
    .line 237
    invoke-direct {v0, v2, v3, v4, v1}, Lze/c;->i(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 238
    .line 239
    .line 240
    :goto_3
    return-void
.end method

.method private static final h(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setReservation(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final i(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 16
    .line 17
    invoke-direct {p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    invoke-virtual {p2, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setVideoType(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getTrailerId()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p2, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getTrailerId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p2, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p2, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setBindShortsId(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p2, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p2, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    invoke-virtual {p2, p4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setModuleInfo(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V

    .line 74
    .line 75
    .line 76
    const/4 p2, 0x0

    .line 77
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEnableLoadMore(Z)V

    .line 78
    .line 79
    .line 80
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final c(Landroidx/fragment/app/FragmentManager;Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroid/widget/TextView;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Z)V
    .locals 16
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    move-object/from16 v1, p4

    .line 6
    .line 7
    move-object/from16 v2, p5

    .line 8
    .line 9
    move-object/from16 v3, p7

    .line 10
    .line 11
    const-string/jumbo v4, "shorts"

    .line 12
    .line 13
    .line 14
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v4, "shortsNameTv"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "dateTv"

    .line 24
    .line 25
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v4, "comingSoonCp"

    .line 29
    .line 30
    move-object/from16 v8, p6

    .line 31
    .line 32
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getReleaseTime()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getReleaseTime()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget v4, Lcom/startshorts/androidplayer/R$string;->discover_fragment_coming_soon:I

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    if-eqz v0, :cond_3

    .line 83
    .line 84
    new-instance v9, Lze/a;

    .line 85
    .line 86
    move-object v1, v9

    .line 87
    move-object/from16 v2, p9

    .line 88
    .line 89
    move-object/from16 v3, p3

    .line 90
    .line 91
    move-object/from16 v4, p1

    .line 92
    .line 93
    move-object/from16 v5, p8

    .line 94
    .line 95
    move/from16 v6, p10

    .line 96
    .line 97
    invoke-direct/range {v1 .. v6}, Lze/a;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    if-eqz p1, :cond_4

    .line 104
    .line 105
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->isReservation()Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    new-instance v10, Lze/b;

    .line 118
    .line 119
    invoke-direct {v10, v7}, Lze/b;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 120
    .line 121
    .line 122
    const/16 v14, 0xe0

    .line 123
    .line 124
    const/4 v15, 0x0

    .line 125
    const/4 v11, 0x0

    .line 126
    const/4 v12, 0x0

    .line 127
    const/4 v13, 0x0

    .line 128
    move-object/from16 v5, p6

    .line 129
    .line 130
    move-object/from16 v6, p1

    .line 131
    .line 132
    move v7, v0

    .line 133
    move-object v8, v1

    .line 134
    invoke-static/range {v5 .. v15}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->J(Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    return-void
.end method

.method public final d(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroid/widget/TextView;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Z)V
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "shorts"

    .line 2
    .line 3
    .line 4
    move-object v4, p1

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "shortsNameTv"

    .line 9
    .line 10
    .line 11
    move-object v5, p3

    .line 12
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "dateTv"

    .line 16
    .line 17
    move-object/from16 v6, p4

    .line 18
    .line 19
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "comingSoonCp"

    .line 23
    .line 24
    move-object/from16 v7, p5

    .line 25
    .line 26
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v0, v2

    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v2, v0

    .line 49
    :cond_1
    move-object v1, p0

    .line 50
    move-object v3, p2

    .line 51
    move-object v4, p1

    .line 52
    move-object v5, p3

    .line 53
    move-object/from16 v6, p4

    .line 54
    .line 55
    move-object/from16 v7, p5

    .line 56
    .line 57
    move-object/from16 v8, p6

    .line 58
    .line 59
    move-object/from16 v9, p7

    .line 60
    .line 61
    move-object/from16 v10, p8

    .line 62
    .line 63
    move/from16 v11, p9

    .line 64
    .line 65
    invoke-virtual/range {v1 .. v11}, Lze/c;->c(Landroidx/fragment/app/FragmentManager;Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroid/widget/TextView;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Z)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
