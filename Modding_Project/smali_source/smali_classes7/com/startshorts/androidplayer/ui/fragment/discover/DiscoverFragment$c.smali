.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;
.super Ljava/lang/Object;
.source "DiscoverFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$2$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,1645:1\n15#2,9:1646\n*S KotlinDebug\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$2$1\n*L\n532#1:1646,9\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->b:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->b:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->A1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V
    .locals 3

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->b:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->E1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Lye/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lye/b;->j(Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "onPreviewDetachedFromWindow,mVideoPreviewManager.releaseByInfo failed -> "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->l(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public c(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    const-string v2, "moduleType"

    .line 8
    .line 9
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "module"

    .line 13
    .line 14
    move-object/from16 v15, p4

    .line 15
    .line 16
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v5, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "module_name"

    .line 39
    .line 40
    invoke-virtual {v7, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v2, "module_id"

    .line 44
    .line 45
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v7, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    add-int/lit8 v12, p1, 0x1

    .line 54
    .line 55
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v6, "position_id"

    .line 60
    .line 61
    invoke-virtual {v7, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v3, "subtag_id"

    .line 65
    .line 66
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getSubTagId()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-virtual {v7, v3, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string v3, "module_type"

    .line 74
    .line 75
    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v3, "reel_id"

    .line 79
    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v7, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v3, "type"

    .line 88
    .line 89
    const-string v6, "positive"

    .line 90
    .line 91
    invoke-virtual {v7, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v3, "skip_type"

    .line 95
    .line 96
    const-string v6, "reel"

    .line 97
    .line 98
    invoke-virtual {v7, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getSort()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const/4 v6, 0x0

    .line 106
    if-eqz v3, :cond_1

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    move-object v3, v6

    .line 114
    :goto_0
    const-string v8, "module_list"

    .line 115
    .line 116
    invoke-virtual {v7, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStatus()Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const-string v8, "module_list_type"

    .line 124
    .line 125
    if-nez v3, :cond_2

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    const/4 v10, 0x2

    .line 133
    if-ne v9, v10, :cond_3

    .line 134
    .line 135
    const-string v2, "close"

    .line 136
    .line 137
    invoke-virtual {v7, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-ne v3, v2, :cond_5

    .line 149
    .line 150
    const-string v2, "open"

    .line 151
    .line 152
    invoke-virtual {v7, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    :goto_2
    invoke-virtual {v7, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-eqz v2, :cond_6

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-lez v2, :cond_6

    .line 170
    .line 171
    const-string v3, "audiences_recommend_id"

    .line 172
    .line 173
    invoke-virtual {v7, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_7

    .line 185
    .line 186
    const-string v2, "upack"

    .line 187
    .line 188
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v7, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_7
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 196
    .line 197
    if-eqz v2, :cond_8

    .line 198
    .line 199
    move-object v2, v1

    .line 200
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    if-eqz v2, :cond_8

    .line 207
    .line 208
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v2, v12, v3, v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->toActResource(ILjava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 217
    .line 218
    .line 219
    :cond_8
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 220
    .line 221
    const/4 v10, 0x4

    .line 222
    const/4 v11, 0x0

    .line 223
    const-string v6, "discover_module_click"

    .line 224
    .line 225
    const-wide/16 v8, 0x0

    .line 226
    .line 227
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getSort()Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v13

    .line 256
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStatus()Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v14

    .line 260
    new-instance v11, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 261
    .line 262
    const/16 v16, 0x10

    .line 263
    .line 264
    const/16 v17, 0x0

    .line 265
    .line 266
    const/4 v7, 0x0

    .line 267
    move-object v2, v11

    .line 268
    move-object/from16 v4, p3

    .line 269
    .line 270
    move v6, v12

    .line 271
    move-object v12, v11

    .line 272
    move-object/from16 v11, p5

    .line 273
    .line 274
    move-object/from16 v18, v12

    .line 275
    .line 276
    move-object v12, v14

    .line 277
    move/from16 v14, v16

    .line 278
    .line 279
    move-object/from16 v15, v17

    .line 280
    .line 281
    invoke-direct/range {v2 .. v15}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 282
    .line 283
    .line 284
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->b:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 285
    .line 286
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->formatTitleForEvent()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    move-object/from16 v4, v18

    .line 291
    .line 292
    invoke-static {v2, v3, v4, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->J1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V

    .line 293
    .line 294
    .line 295
    return-void
.end method

.method public d(ILcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 2

    .line 1
    const-string v0, "discoverResource"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isH5BrowserBanner()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "requireContext(...)"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p3, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->b:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->formatBrowserUrl(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p3, v0, p1}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-eqz p3, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->b:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 40
    .line 41
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->B:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "discover_carousel"

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {v0, p1, v1, p3, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    const/4 v5, 0x6

    .line 4
    const/4 v6, 0x0

    .line 5
    const-string v1, "discover_not_close"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lud/a;->a:Lud/a;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lud/a;->h0(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->b:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->G1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public f(ILcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "label"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "moduleType"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "module"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "from"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->b:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 22
    .line 23
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 24
    .line 25
    new-instance v9, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;

    .line 26
    .line 27
    move-object v1, v9

    .line 28
    move-object v2, v0

    .line 29
    move-object v3, p4

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p5

    .line 32
    move v7, p1

    .line 33
    move-object v8, p3

    .line 34
    invoke-direct/range {v1 .. v8}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$b;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$b;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v9, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public g(ILcom/startshorts/androidplayer/bean/discover/DiscoverResource;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getContentUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->b:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v1, "requireContext(...)"

    .line 18
    .line 19
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2, p1}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
