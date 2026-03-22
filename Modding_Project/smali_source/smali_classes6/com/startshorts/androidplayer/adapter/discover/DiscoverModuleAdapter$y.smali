.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;
.super Lyd/d;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->G0(ILandroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

.field final synthetic g:Landroid/widget/TextView;

.field final synthetic h:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->g:Landroid/widget/TextView;

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->h:I

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    const/4 p2, 0x0

    .line 11
    const-wide/16 p3, 0x0

    .line 12
    .line 13
    invoke-direct {p0, p3, p4, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final b(I)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0xf

    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "v"

    .line 4
    .line 5
    .line 6
    move-object/from16 v2, p1

    .line 7
    .line 8
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getContentModuleStyle()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v3, 0xb

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const-string v5, "getContext(...)"

    .line 21
    .line 22
    if-eq v1, v3, :cond_b

    .line 23
    .line 24
    const/16 v3, 0xf

    .line 25
    .line 26
    if-eq v1, v3, :cond_1

    .line 27
    .line 28
    sget-object v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->G:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$a;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->g:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 40
    .line 41
    iget-object v5, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getBannerId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    sget-object v5, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 48
    .line 49
    iget-object v6, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getContentModuleStyle()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    iget-object v5, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getTitle()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    iget-object v5, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getContentModuleStyle()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    iget-object v5, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShorts()Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-eqz v5, :cond_0

    .line 82
    .line 83
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    :cond_0
    move-object v12, v4

    .line 88
    iget-object v4, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v13

    .line 94
    iget-object v4, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    const/16 v18, 0x700

    .line 101
    .line 102
    const/16 v19, 0x0

    .line 103
    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v15, 0x0

    .line 106
    const/16 v16, 0x0

    .line 107
    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    move-object v6, v3

    .line 111
    invoke-direct/range {v6 .. v19}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    .line 113
    .line 114
    iget-object v4, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->formatTitleForEvent()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v1, v2, v3, v4}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_9

    .line 124
    .line 125
    :cond_1
    iget v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->h:I

    .line 126
    .line 127
    add-int/lit8 v1, v1, 0x1

    .line 128
    .line 129
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->b(I)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-nez v1, :cond_2

    .line 134
    .line 135
    return-void

    .line 136
    :cond_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Ljava/util/Collection;

    .line 141
    .line 142
    const/4 v4, 0x0

    .line 143
    if-eqz v3, :cond_5

    .line 144
    .line 145
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_3

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-eqz v3, :cond_4

    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryTabSelectedPos()I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 167
    .line 168
    if-eqz v3, :cond_4

    .line 169
    .line 170
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    if-eqz v3, :cond_4

    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    goto :goto_0

    .line 181
    :cond_4
    move v3, v4

    .line 182
    :goto_0
    move v10, v3

    .line 183
    goto :goto_2

    .line 184
    :cond_5
    :goto_1
    move v10, v4

    .line 185
    :goto_2
    sget-object v6, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->u:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;

    .line 186
    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    if-eqz v2, :cond_6

    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    move v8, v2

    .line 205
    goto :goto_3

    .line 206
    :cond_6
    move v8, v4

    .line 207
    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-eqz v1, :cond_7

    .line 217
    .line 218
    :goto_4
    check-cast v1, Ljava/util/Collection;

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    goto :goto_4

    .line 226
    :goto_5
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    .line 228
    .line 229
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 230
    .line 231
    iget-object v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-eqz v1, :cond_8

    .line 238
    .line 239
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabId()Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    if-eqz v1, :cond_8

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    :cond_8
    move v11, v4

    .line 250
    iget-object v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 251
    .line 252
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    if-eqz v1, :cond_a

    .line 257
    .line 258
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabDisplayName()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    if-nez v1, :cond_9

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_9
    :goto_6
    move-object v12, v1

    .line 266
    goto :goto_8

    .line 267
    :cond_a
    :goto_7
    const-string v1, ""

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :goto_8
    sget-object v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 271
    .line 272
    iget-object v2, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 273
    .line 274
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getContentModuleStyle()I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    iget-object v2, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 283
    .line 284
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getBannerId()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    iget-object v2, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 289
    .line 290
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getTitle()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v15

    .line 294
    invoke-virtual/range {v6 .. v15}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;->e(Landroid/content/Context;ILjava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 298
    .line 299
    iget-object v3, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 300
    .line 301
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    iget-object v4, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 310
    .line 311
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getTitle()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    const-string v6, "module_name"

    .line 316
    .line 317
    invoke-virtual {v3, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const-string v5, "module_id"

    .line 321
    .line 322
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getBannerId()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getContentModuleStyle()I

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    const-string v4, "module_type"

    .line 338
    .line 339
    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const/16 v21, 0x4

    .line 343
    .line 344
    const/16 v22, 0x0

    .line 345
    .line 346
    const-string v17, "discover_more_click"

    .line 347
    .line 348
    const-wide/16 v19, 0x0

    .line 349
    .line 350
    move-object/from16 v16, v2

    .line 351
    .line 352
    move-object/from16 v18, v3

    .line 353
    .line 354
    invoke-static/range {v16 .. v22}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    goto :goto_9

    .line 358
    :cond_b
    sget-object v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;->p:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$a;

    .line 359
    .line 360
    iget-object v2, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->g:Landroid/widget/TextView;

    .line 361
    .line 362
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    new-instance v3, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 370
    .line 371
    iget-object v5, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 372
    .line 373
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getBannerId()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    sget-object v5, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 378
    .line 379
    iget-object v6, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 380
    .line 381
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getContentModuleStyle()I

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    iget-object v5, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 390
    .line 391
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getTitle()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v9

    .line 395
    iget-object v5, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 396
    .line 397
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getContentModuleStyle()I

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v11

    .line 405
    iget-object v5, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 406
    .line 407
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShorts()Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    if-eqz v5, :cond_c

    .line 412
    .line 413
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    :cond_c
    move-object v12, v4

    .line 418
    iget-object v4, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 419
    .line 420
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v13

    .line 424
    iget-object v4, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 425
    .line 426
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 427
    .line 428
    .line 429
    move-result-object v14

    .line 430
    const/16 v18, 0x700

    .line 431
    .line 432
    const/16 v19, 0x0

    .line 433
    .line 434
    const/4 v10, 0x0

    .line 435
    const/4 v15, 0x0

    .line 436
    const/16 v16, 0x0

    .line 437
    .line 438
    const/16 v17, 0x0

    .line 439
    .line 440
    move-object v6, v3

    .line 441
    invoke-direct/range {v6 .. v19}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 442
    .line 443
    .line 444
    iget-object v4, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 445
    .line 446
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryVOList()Ljava/util/List;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    if-nez v4, :cond_d

    .line 451
    .line 452
    new-instance v4, Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .line 456
    .line 457
    :cond_d
    iget-object v5, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$y;->f:Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 458
    .line 459
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->formatTitleForEvent()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Ljava/util/List;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    :goto_9
    return-void
.end method
