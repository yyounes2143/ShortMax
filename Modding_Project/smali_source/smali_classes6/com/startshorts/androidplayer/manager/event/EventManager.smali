.class public final Lcom/startshorts/androidplayer/manager/event/EventManager;
.super Ljava/lang/Object;
.source "EventManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1804:1\n1#2:1805\n216#3,2:1806\n*S KotlinDebug\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager\n*L\n1483#1:1806,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/event/EventManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laf/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final h:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 73

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    new-instance v0, Laf/e;

    .line 9
    .line 10
    invoke-direct {v0}, Laf/e;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v2, v2, [Laf/h;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v0, v2, v3

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    aput-object v1, v2, v0

    .line 26
    .line 27
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sput-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->b:Ljava/util/List;

    .line 32
    .line 33
    new-instance v1, Laf/a;

    .line 34
    .line 35
    invoke-direct {v1}, Laf/a;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sput-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->c:Lms/i;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/Object;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->d:Ljava/lang/Object;

    .line 50
    .line 51
    new-instance v1, Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;

    .line 52
    .line 53
    const-wide/16 v4, -0x1

    .line 54
    .line 55
    invoke-direct {v1, v4, v5}, Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;-><init>(J)V

    .line 56
    .line 57
    .line 58
    sput-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->e:Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;

    .line 59
    .line 60
    const-string v1, ""

    .line 61
    .line 62
    sput-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->f:Ljava/lang/String;

    .line 63
    .line 64
    sput-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->g:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-static {v3, v0, v1}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->h:Lqt/a;

    .line 72
    .line 73
    const-string v71, "discover_module_show"

    .line 74
    .line 75
    const-string v72, "discover_module_click"

    .line 76
    .line 77
    const-string v1, "ad_placement_show"

    .line 78
    .line 79
    const-string v2, "recharge_show"

    .line 80
    .line 81
    const-string v3, "recharge_show_end"

    .line 82
    .line 83
    const-string v4, "ad_impressions"

    .line 84
    .line 85
    const-string v5, "ad_real_impressions"

    .line 86
    .line 87
    const-string v6, "ad_impressions_duration"

    .line 88
    .line 89
    const-string/jumbo v7, "watch_ad_click"

    .line 90
    .line 91
    .line 92
    const-string/jumbo v8, "task_click"

    .line 93
    .line 94
    .line 95
    const-string v9, "order_show"

    .line 96
    .line 97
    const-string v10, "order_create"

    .line 98
    .line 99
    const-string v11, "pay_success"

    .line 100
    .line 101
    const-string v12, "order_create_fail"

    .line 102
    .line 103
    const-string v13, "order_create_cancel"

    .line 104
    .line 105
    const-string/jumbo v14, "subscribe_thing_show"

    .line 106
    .line 107
    .line 108
    const-string v15, "app_start"

    .line 109
    .line 110
    const-string v16, "push_send"

    .line 111
    .line 112
    const-string v17, "push_open"

    .line 113
    .line 114
    const-string v18, "reel_show"

    .line 115
    .line 116
    const-string v19, "reel_request"

    .line 117
    .line 118
    const-string v20, "initial_loading_time"

    .line 119
    .line 120
    const-string v21, "reward_show"

    .line 121
    .line 122
    const-string v22, "not_permission_success"

    .line 123
    .line 124
    const-string v23, "enter_reel_play"

    .line 125
    .line 126
    const-string v24, "favorite_click"

    .line 127
    .line 128
    const-string/jumbo v25, "share"

    .line 129
    .line 130
    .line 131
    const-string v26, "favorite_hint_show"

    .line 132
    .line 133
    const-string v27, "check_in_click"

    .line 134
    .line 135
    const-string/jumbo v28, "task_finish"

    .line 136
    .line 137
    .line 138
    const-string v29, "batch_thing_show"

    .line 139
    .line 140
    const-string v30, "noti_popup_show"

    .line 141
    .line 142
    const-string v31, "noti_popup_click"

    .line 143
    .line 144
    const-string v32, "noti_select_popup_show"

    .line 145
    .line 146
    const-string v33, "noti_select_popup_click"

    .line 147
    .line 148
    const-string v34, "reward_click"

    .line 149
    .line 150
    const-string v35, "ad_retention_show"

    .line 151
    .line 152
    const-string v36, "ad_retention_click"

    .line 153
    .line 154
    const-string v37, "ad_retention_close"

    .line 155
    .line 156
    const-string v38, "reel_play"

    .line 157
    .line 158
    const-string v39, "reel_cut"

    .line 159
    .line 160
    const-string v40, "playback_progress_track"

    .line 161
    .line 162
    const-string v41, "play_time_real"

    .line 163
    .line 164
    const-string v42, "play_time_schedule"

    .line 165
    .line 166
    const-string v43, "app_launch"

    .line 167
    .line 168
    const-string v44, "active_user"

    .line 169
    .line 170
    const-string v45, "interactive"

    .line 171
    .line 172
    const-string v46, "ad_request"

    .line 173
    .line 174
    const-string v47, "ad_fill"

    .line 175
    .line 176
    const-string v48, "abtest_value_change"

    .line 177
    .line 178
    const-string v49, "clarity"

    .line 179
    .line 180
    const-string v50, "clarity_click"

    .line 181
    .line 182
    const-string/jumbo v51, "speed_click"

    .line 183
    .line 184
    .line 185
    const-string/jumbo v52, "short_menu_click"

    .line 186
    .line 187
    .line 188
    const-string v53, "multi_task_finish"

    .line 189
    .line 190
    const-string v54, "multi_task_fail"

    .line 191
    .line 192
    const-string/jumbo v55, "unlock_with_subscribe_sku_show"

    .line 193
    .line 194
    .line 195
    const-string/jumbo v56, "unlock_now_click"

    .line 196
    .line 197
    .line 198
    const-string/jumbo v57, "watch_ads_to_unlock_click"

    .line 199
    .line 200
    .line 201
    const-string/jumbo v58, "unlock_pay_click"

    .line 202
    .line 203
    .line 204
    const-string v59, "rentention_dialog_show"

    .line 205
    .line 206
    const-string v60, "rentention_dialog_close"

    .line 207
    .line 208
    const-string v61, "return_other_payment"

    .line 209
    .line 210
    const-string v62, "buttonpay_click"

    .line 211
    .line 212
    const-string v63, "button_show"

    .line 213
    .line 214
    const-string v64, "button_click"

    .line 215
    .line 216
    const-string/jumbo v65, "setting_page_show"

    .line 217
    .line 218
    .line 219
    const-string/jumbo v66, "setting_button_click"

    .line 220
    .line 221
    .line 222
    const-string v67, "immersion_back_show"

    .line 223
    .line 224
    const-string v68, "immersion_back_click"

    .line 225
    .line 226
    const-string v69, "immersion_back_close"

    .line 227
    .line 228
    const-string v70, "immersion_back_play"

    .line 229
    .line 230
    filled-new-array/range {v1 .. v72}, [Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    sput-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->i:Ljava/util/List;

    .line 239
    .line 240
    const-string v16, "rentention_dialog_show"

    .line 241
    .line 242
    const-string v17, "rentention_dialog_close"

    .line 243
    .line 244
    const-string v1, "app_start"

    .line 245
    .line 246
    const-string v2, "active_user"

    .line 247
    .line 248
    const-string v3, "recharge_show"

    .line 249
    .line 250
    const-string v4, "order_show"

    .line 251
    .line 252
    const-string v5, "order_click"

    .line 253
    .line 254
    const-string v6, "payment_choose"

    .line 255
    .line 256
    const-string v7, "buttonpay_click"

    .line 257
    .line 258
    const-string v8, "order_create"

    .line 259
    .line 260
    const-string v9, "pay_success"

    .line 261
    .line 262
    const-string v10, "order_create_fail"

    .line 263
    .line 264
    const-string v11, "order_create_cancel"

    .line 265
    .line 266
    const-string/jumbo v12, "unlocked_page_show"

    .line 267
    .line 268
    .line 269
    const-string/jumbo v13, "unlocked_ep_button_click"

    .line 270
    .line 271
    .line 272
    const-string/jumbo v14, "watch_ad_click"

    .line 273
    .line 274
    .line 275
    const-string v15, "episode_unlock_ad_success"

    .line 276
    .line 277
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    sput-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->j:Ljava/util/List;

    .line 286
    .line 287
    const-string v0, "order_create_fail"

    .line 288
    .line 289
    const-string v1, "order_create_cancel"

    .line 290
    .line 291
    const-string v2, "order_create"

    .line 292
    .line 293
    const-string v3, "pay_success"

    .line 294
    .line 295
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    sput-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->k:Ljava/util/List;

    .line 304
    .line 305
    const-string v8, "order_create_fail"

    .line 306
    .line 307
    const-string v9, "order_create_cancel"

    .line 308
    .line 309
    const-string v1, "recharge_show"

    .line 310
    .line 311
    const-string v2, "recharge_show_end"

    .line 312
    .line 313
    const-string v3, "order_show"

    .line 314
    .line 315
    const-string v4, "order_click"

    .line 316
    .line 317
    const-string v5, "buttonpay_click"

    .line 318
    .line 319
    const-string v6, "order_create"

    .line 320
    .line 321
    const-string v7, "pay_success"

    .line 322
    .line 323
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    sput-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->l:Ljava/util/List;

    .line 332
    .line 333
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 334
    .line 335
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 336
    .line 337
    .line 338
    sput-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 339
    .line 340
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

.method public static synthetic B0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 13

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v6, p3

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lud/a;->a:Lud/a;

    .line 17
    .line 18
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v7, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object/from16 v7, p4

    .line 25
    .line 26
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    move-object v8, v2

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move-object/from16 v8, p5

    .line 33
    .line 34
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    move-object v9, v2

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    move-object/from16 v9, p6

    .line 41
    .line 42
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    move-object v10, v2

    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move-object/from16 v10, p7

    .line 49
    .line 50
    :goto_4
    and-int/lit16 v1, v0, 0x80

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    const-string v1, "other"

    .line 55
    .line 56
    move-object v11, v1

    .line 57
    goto :goto_5

    .line 58
    :cond_5
    move-object/from16 v11, p8

    .line 59
    .line 60
    :goto_5
    and-int/lit16 v0, v0, 0x100

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    move-object v12, v2

    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move-object/from16 v12, p9

    .line 67
    .line 68
    :goto_6
    move-object v3, p0

    .line 69
    move-object v4, p1

    .line 70
    move-object v5, p2

    .line 71
    invoke-virtual/range {v3 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->z0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static synthetic C0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 14

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v6, p3

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lud/a;->a:Lud/a;

    .line 17
    .line 18
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v7, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object/from16 v7, p4

    .line 25
    .line 26
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    move v8, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move/from16 v8, p5

    .line 34
    .line 35
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    move-object v9, v2

    .line 40
    goto :goto_3

    .line 41
    :cond_3
    move-object/from16 v9, p6

    .line 42
    .line 43
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    move-object v10, v2

    .line 48
    goto :goto_4

    .line 49
    :cond_4
    move-object/from16 v10, p7

    .line 50
    .line 51
    :goto_4
    and-int/lit16 v1, v0, 0x80

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    move-object v11, v2

    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-object/from16 v11, p8

    .line 58
    .line 59
    :goto_5
    and-int/lit16 v1, v0, 0x100

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    const-string v1, "other"

    .line 64
    .line 65
    move-object v12, v1

    .line 66
    goto :goto_6

    .line 67
    :cond_6
    move-object/from16 v12, p9

    .line 68
    .line 69
    :goto_6
    and-int/lit16 v0, v0, 0x200

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    move-object v13, v2

    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move-object/from16 v13, p10

    .line 76
    .line 77
    :goto_7
    move-object v3, p0

    .line 78
    move-object v4, p1

    .line 79
    move-object/from16 v5, p2

    .line 80
    .line 81
    invoke-virtual/range {v3 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->A0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final F()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lng/e;->a:Lng/e;

    .line 2
    .line 3
    const-string v1, "eventReportBlackList"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lng/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public static synthetic F0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 14

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v6, p3

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lud/a;->a:Lud/a;

    .line 17
    .line 18
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v7, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object/from16 v7, p4

    .line 25
    .line 26
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    move-object v8, v2

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move-object/from16 v8, p5

    .line 33
    .line 34
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    move-object v9, v2

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    move-object/from16 v9, p6

    .line 41
    .line 42
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    move-object v10, v2

    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move-object/from16 v10, p7

    .line 49
    .line 50
    :goto_4
    and-int/lit16 v1, v0, 0x80

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    move-object v11, v2

    .line 55
    goto :goto_5

    .line 56
    :cond_5
    move-object/from16 v11, p8

    .line 57
    .line 58
    :goto_5
    and-int/lit16 v1, v0, 0x100

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    const-string v1, "other"

    .line 63
    .line 64
    move-object v12, v1

    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move-object/from16 v12, p9

    .line 67
    .line 68
    :goto_6
    and-int/lit16 v0, v0, 0x200

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    move-object v13, v2

    .line 73
    goto :goto_7

    .line 74
    :cond_7
    move-object/from16 v13, p10

    .line 75
    .line 76
    :goto_7
    move-object v3, p0

    .line 77
    move-object v4, p1

    .line 78
    move-object/from16 v5, p2

    .line 79
    .line 80
    invoke-virtual/range {v3 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private final G()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic G0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 15

    .line 1
    move/from16 v0, p12

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v6, p3

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lud/a;->a:Lud/a;

    .line 17
    .line 18
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v7, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object/from16 v7, p4

    .line 25
    .line 26
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    move v8, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move/from16 v8, p5

    .line 34
    .line 35
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    move-object v9, v2

    .line 40
    goto :goto_3

    .line 41
    :cond_3
    move-object/from16 v9, p6

    .line 42
    .line 43
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    move-object v10, v2

    .line 48
    goto :goto_4

    .line 49
    :cond_4
    move-object/from16 v10, p7

    .line 50
    .line 51
    :goto_4
    and-int/lit16 v1, v0, 0x80

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    move-object v11, v2

    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-object/from16 v11, p8

    .line 58
    .line 59
    :goto_5
    and-int/lit16 v1, v0, 0x100

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    move-object v12, v2

    .line 64
    goto :goto_6

    .line 65
    :cond_6
    move-object/from16 v12, p9

    .line 66
    .line 67
    :goto_6
    and-int/lit16 v1, v0, 0x200

    .line 68
    .line 69
    if-eqz v1, :cond_7

    .line 70
    .line 71
    const-string v1, "other"

    .line 72
    .line 73
    move-object v13, v1

    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move-object/from16 v13, p10

    .line 76
    .line 77
    :goto_7
    and-int/lit16 v0, v0, 0x400

    .line 78
    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    move-object v14, v2

    .line 82
    goto :goto_8

    .line 83
    :cond_8
    move-object/from16 v14, p11

    .line 84
    .line 85
    :goto_8
    move-object v3, p0

    .line 86
    move-object/from16 v4, p1

    .line 87
    .line 88
    move-object/from16 v5, p2

    .line 89
    .line 90
    invoke-virtual/range {v3 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->E0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private final I(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-string v1, "0"

    .line 13
    .line 14
    const-string v2, "1"

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    move-object p1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p1, v1

    .line 21
    :goto_0
    const-string v3, "is_main"

    .line 22
    .line 23
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->y0()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v1, v2

    .line 36
    :goto_1
    const-string p1, "is_first"

    .line 37
    .line 38
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    :goto_2
    return-object v0
.end method

.method private final J(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    new-instance p1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->y0()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "0"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "1"

    .line 20
    .line 21
    :goto_0
    const-string v1, "is_first"

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    :goto_1
    return-object p1
.end method

.method public static synthetic K0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p3

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v6, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v6, p4

    .line 16
    :goto_1
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v7, p5

    .line 20
    move-object v8, p6

    .line 21
    invoke-virtual/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->H0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic L0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p3

    .line 9
    :goto_0
    and-int/lit8 v0, p8, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v6, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v6, p4

    .line 16
    :goto_1
    and-int/lit8 v0, p8, 0x10

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    move v7, v0

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move v7, p5

    .line 24
    :goto_2
    move-object v2, p0

    .line 25
    move-object v3, p1

    .line 26
    move-object v4, p2

    .line 27
    move-object/from16 v8, p6

    .line 28
    .line 29
    move-object/from16 v9, p7

    .line 30
    .line 31
    invoke-virtual/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->I0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final N()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->f:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string/jumbo v1, "trace_id"

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->f:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0
.end method

.method public static synthetic O0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p3

    .line 9
    :goto_0
    and-int/lit8 v0, p8, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v6, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v6, p4

    .line 16
    :goto_1
    and-int/lit8 v0, p8, 0x10

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v0, "other"

    .line 21
    .line 22
    move-object v7, v0

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move-object v7, p5

    .line 25
    :goto_2
    and-int/lit8 v0, p8, 0x20

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    move-object v8, v1

    .line 30
    goto :goto_3

    .line 31
    :cond_3
    move-object/from16 v8, p6

    .line 32
    .line 33
    :goto_3
    and-int/lit8 v0, p8, 0x40

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    move-object v9, v1

    .line 38
    goto :goto_4

    .line 39
    :cond_4
    move-object/from16 v9, p7

    .line 40
    .line 41
    :goto_4
    move-object v2, p0

    .line 42
    move-object v3, p1

    .line 43
    move-object v4, p2

    .line 44
    invoke-virtual/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->M0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static synthetic P0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p3

    .line 9
    :goto_0
    and-int/lit8 v0, p8, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v6, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v6, p4

    .line 16
    :goto_1
    and-int/lit8 v0, p8, 0x10

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v0, "other"

    .line 21
    .line 22
    move-object v7, v0

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move-object v7, p5

    .line 25
    :goto_2
    and-int/lit8 v0, p8, 0x20

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    move-object v8, v1

    .line 30
    goto :goto_3

    .line 31
    :cond_3
    move-object/from16 v8, p6

    .line 32
    .line 33
    :goto_3
    and-int/lit8 v0, p8, 0x40

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    move-object v9, v1

    .line 38
    goto :goto_4

    .line 39
    :cond_4
    move-object/from16 v9, p7

    .line 40
    .line 41
    :goto_4
    move-object v2, p0

    .line 42
    move-object v3, p1

    .line 43
    move-object v4, p2

    .line 44
    invoke-virtual/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->N0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static synthetic T0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 13

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v6, p3

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v7, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v7, p4

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    move-object v8, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v8, p5

    .line 27
    .line 28
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    sget-object v1, Lud/a;->a:Lud/a;

    .line 33
    .line 34
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v9, v1

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    move-object/from16 v9, p6

    .line 41
    .line 42
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    move-object v10, v1

    .line 49
    goto :goto_4

    .line 50
    :cond_4
    move-object/from16 v10, p7

    .line 51
    .line 52
    :goto_4
    and-int/lit16 v1, v0, 0x80

    .line 53
    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    move-object v11, v2

    .line 57
    goto :goto_5

    .line 58
    :cond_5
    move-object/from16 v11, p8

    .line 59
    .line 60
    :goto_5
    and-int/lit16 v0, v0, 0x100

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    move-object v12, v2

    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move-object/from16 v12, p9

    .line 67
    .line 68
    :goto_6
    move-object v3, p0

    .line 69
    move-object v4, p1

    .line 70
    move-object v5, p2

    .line 71
    invoke-virtual/range {v3 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->R0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static synthetic U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 14

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v6, p3

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v7, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v7, p4

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    move-object v8, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v8, p5

    .line 27
    .line 28
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    move-object v9, v2

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    move-object/from16 v9, p6

    .line 35
    .line 36
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    move-object v10, v1

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-object/from16 v10, p7

    .line 45
    .line 46
    :goto_4
    and-int/lit16 v1, v0, 0x80

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    move-object v11, v2

    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move-object/from16 v11, p8

    .line 53
    .line 54
    :goto_5
    and-int/lit16 v1, v0, 0x100

    .line 55
    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    move-object v12, v2

    .line 59
    goto :goto_6

    .line 60
    :cond_6
    move-object/from16 v12, p9

    .line 61
    .line 62
    :goto_6
    and-int/lit16 v0, v0, 0x200

    .line 63
    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    move-object v13, v2

    .line 67
    goto :goto_7

    .line 68
    :cond_7
    move-object/from16 v13, p10

    .line 69
    .line 70
    :goto_7
    move-object v3, p0

    .line 71
    move-object v4, p1

    .line 72
    move-object/from16 v5, p2

    .line 73
    .line 74
    invoke-virtual/range {v3 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->S0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static synthetic W0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x2

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const-string p2, "other"

    .line 6
    .line 7
    :cond_0
    move-object v2, p2

    .line 8
    and-int/lit8 p2, p7, 0x4

    .line 9
    .line 10
    const/4 p8, 0x0

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    move-object v3, p8

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move-object v3, p3

    .line 16
    :goto_0
    and-int/lit8 p2, p7, 0x8

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    move-object v4, p8

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move-object v4, p4

    .line 23
    :goto_1
    and-int/lit8 p2, p7, 0x10

    .line 24
    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    move-object v5, p8

    .line 28
    goto :goto_2

    .line 29
    :cond_3
    move-object v5, p5

    .line 30
    :goto_2
    and-int/lit8 p2, p7, 0x20

    .line 31
    .line 32
    if-eqz p2, :cond_4

    .line 33
    .line 34
    move-object v6, p8

    .line 35
    goto :goto_3

    .line 36
    :cond_4
    move-object v6, p6

    .line 37
    :goto_3
    move-object v0, p0

    .line 38
    move-object v1, p1

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->V0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static synthetic Y0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-string p2, "other"

    .line 6
    .line 7
    :cond_0
    move-object v2, p2

    .line 8
    and-int/lit8 p2, p6, 0x4

    .line 9
    .line 10
    const/4 p7, 0x0

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    move-object v3, p7

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move-object v3, p3

    .line 16
    :goto_0
    and-int/lit8 p2, p6, 0x8

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    const/4 p4, 0x0

    .line 21
    :cond_2
    move v4, p4

    .line 22
    and-int/lit8 p2, p6, 0x10

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    move-object v5, p7

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    move-object v5, p5

    .line 29
    :goto_1
    move-object v0, p0

    .line 30
    move-object v1, p1

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->X0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/EventManager;->u0()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/EventManager;->v()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b1(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p3

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v6, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v6, p4

    .line 16
    :goto_1
    and-int/lit8 v0, p7, 0x20

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move-object v8, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v8, p6

    .line 23
    :goto_2
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    move-object v4, p2

    .line 26
    move v7, p5

    .line 27
    invoke-virtual/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Z0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic c()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/EventManager;->j1()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/event/EventManager;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->y()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic e0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 13
    .line 14
    if-eqz p7, :cond_2

    .line 15
    .line 16
    move-object p3, v0

    .line 17
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 18
    .line 19
    if-eqz p7, :cond_3

    .line 20
    .line 21
    move-object p4, v0

    .line 22
    :cond_3
    and-int/lit8 p6, p6, 0x10

    .line 23
    .line 24
    if-eqz p6, :cond_4

    .line 25
    .line 26
    move-object p5, v0

    .line 27
    :cond_4
    invoke-virtual/range {p0 .. p5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->d0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic e1(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p3

    .line 9
    :goto_0
    and-int/lit8 v0, p8, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v6, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v6, p4

    .line 16
    :goto_1
    and-int/lit8 v0, p8, 0x20

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move-object v8, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object/from16 v8, p6

    .line 23
    .line 24
    :goto_2
    and-int/lit8 v0, p8, 0x40

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    move-object v9, v1

    .line 29
    goto :goto_3

    .line 30
    :cond_3
    move-object/from16 v9, p7

    .line 31
    .line 32
    :goto_3
    move-object v2, p0

    .line 33
    move-object v3, p1

    .line 34
    move-object v4, p2

    .line 35
    move v7, p5

    .line 36
    invoke-virtual/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->d1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/Integer;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/manager/event/EventManager;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->z()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->l:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic h0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v6, p3

    .line 11
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object v7, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object/from16 v7, p4

    .line 18
    .line 19
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    move-object v8, v2

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-object/from16 v8, p5

    .line 26
    .line 27
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    move-object v9, v2

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-object/from16 v9, p6

    .line 34
    .line 35
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    const-string v1, "other"

    .line 40
    .line 41
    move-object v10, v1

    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object/from16 v10, p7

    .line 44
    .line 45
    :goto_4
    and-int/lit16 v0, v0, 0x80

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    move-object v11, v2

    .line 50
    goto :goto_5

    .line 51
    :cond_5
    move-object/from16 v11, p8

    .line 52
    .line 53
    :goto_5
    move-object v3, p0

    .line 54
    move v4, p1

    .line 55
    move-object v5, p2

    .line 56
    invoke-virtual/range {v3 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->f0(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static final synthetic i()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 13

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v6, p3

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v7, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v7, p4

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    move v8, v1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move/from16 v8, p5

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    move-object v9, v2

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v9, p6

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    move-object v10, v2

    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object/from16 v10, p7

    .line 44
    .line 45
    :goto_4
    and-int/lit16 v1, v0, 0x80

    .line 46
    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    const-string v1, "other"

    .line 50
    .line 51
    move-object v11, v1

    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move-object/from16 v11, p8

    .line 54
    .line 55
    :goto_5
    and-int/lit16 v0, v0, 0x100

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    move-object v12, v2

    .line 60
    goto :goto_6

    .line 61
    :cond_6
    move-object/from16 v12, p9

    .line 62
    .line 63
    :goto_6
    move-object v3, p0

    .line 64
    move v4, p1

    .line 65
    move-object v5, p2

    .line 66
    invoke-virtual/range {v3 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->g0(ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static synthetic i1(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic j()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final j1()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic k()Lqt/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->h:Lqt/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic k0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 13
    .line 14
    if-eqz p6, :cond_2

    .line 15
    .line 16
    move-object p3, v0

    .line 17
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 18
    .line 19
    if-eqz p5, :cond_3

    .line 20
    .line 21
    move-object p4, v0

    .line 22
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->j0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic l()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic m(Lcom/startshorts/androidplayer/manager/event/EventManager;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->N()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final p(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "push_send"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->E()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->F()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_1

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->F()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x2

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_1
    return v1
.end method

.method public static synthetic s(Lcom/startshorts/androidplayer/manager/event/EventManager;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->r(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const-wide/16 p3, -0x1

    .line 11
    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->q0(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic t0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;[IJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x2

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    move-object v2, p2

    .line 7
    and-int/lit8 p2, p7, 0x8

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    const-wide/16 p4, -0x1

    .line 12
    .line 13
    :cond_1
    move-wide v4, p4

    .line 14
    and-int/lit8 p2, p7, 0x10

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    new-instance p6, Laf/c;

    .line 19
    .line 20
    invoke-direct {p6}, Laf/c;-><init>()V

    .line 21
    .line 22
    .line 23
    :cond_2
    move-object v6, p6

    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v3, p3

    .line 27
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->r0(Ljava/lang/String;Landroid/os/Bundle;[IJLkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic u(Lcom/startshorts/androidplayer/manager/event/EventManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Laf/b;

    .line 6
    .line 7
    invoke-direct {p1}, Laf/b;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->t(Lkotlin/jvm/functions/Function0;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static final u0()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->p()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private static final v()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->p()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->w(Lcom/startshorts/androidplayer/bean/act/ActResource;Z)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final y()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->g:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "action"

    .line 15
    .line 16
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->g:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method private final z()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->d0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "audience_group_ids"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public final A(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    const-string v2, "ranking_list_child_id"

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v1, "ranking_list_child_name"

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    return-object v0
.end method

.method public final A0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->L(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x2

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p0, p4, v2, p3, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0, p5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->M(I)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz p8, :cond_0

    .line 41
    .line 42
    const-string p1, "from"

    .line 43
    .line 44
    invoke-virtual {p2, p1, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    sget-object p1, Lve/h;->a:Lve/h;

    .line 48
    .line 49
    invoke-virtual {p1}, Lve/h;->m()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string/jumbo p3, "style_id"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-eqz p6, :cond_1

    .line 60
    .line 61
    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const-string p3, "payment_method"

    .line 66
    .line 67
    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    :cond_1
    if-eqz p7, :cond_2

    .line 71
    .line 72
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :cond_2
    const-string p1, "password_free"

    .line 77
    .line 78
    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    const-string p1, "action"

    .line 82
    .line 83
    invoke-virtual {p2, p1, p9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    if-eqz p10, :cond_3

    .line 87
    .line 88
    const-string p1, "second_from"

    .line 89
    .line 90
    invoke-virtual {p2, p1, p10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    const/4 p9, 0x4

    .line 96
    const/4 p10, 0x0

    .line 97
    const-string p5, "order_click"

    .line 98
    .line 99
    const-wide/16 p7, 0x0

    .line 100
    .line 101
    move-object p4, p0

    .line 102
    move-object p6, p2

    .line 103
    invoke-static/range {p4 .. p10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabId()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    const-string/jumbo v2, "tab_id"

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabDisplayName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabDisplayName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const-string p1, ""

    .line 50
    .line 51
    :cond_2
    const-string/jumbo v1, "tab_name"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_0
    return-object v0
.end method

.method public final C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;
    .locals 11
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->n:Z

    .line 4
    .line 5
    const-string v1, "episode_id"

    .line 6
    .line 7
    const-string v2, "episode"

    .line 8
    .line 9
    const-string v3, "reel_id"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v4, 0x2710

    .line 24
    .line 25
    if-le v0, v4, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->n:Z

    .line 29
    .line 30
    new-instance v6, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v6, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v6, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v6, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    const/4 v9, 0x4

    .line 59
    const/4 v10, 0x0

    .line 60
    const-string/jumbo v5, "video_type_error"

    .line 61
    .line 62
    .line 63
    const-wide/16 v7, 0x0

    .line 64
    .line 65
    move-object v4, p0

    .line 66
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    invoke-static {v4, v5, v0, v5}, Lcom/startshorts/androidplayer/log/Logger;->m(Lcom/startshorts/androidplayer/log/Logger;Lyd/f;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const-string/jumbo v5, "type"

    .line 85
    .line 86
    .line 87
    if-eqz v4, :cond_1

    .line 88
    .line 89
    const-string/jumbo v4, "trailer"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const-string v4, "positive"

    .line 108
    .line 109
    invoke-virtual {v0, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-nez v3, :cond_2

    .line 128
    .line 129
    const-string/jumbo v3, "upack"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v1, "customShortsName"

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getLockBegin()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-lez v1, :cond_3

    .line 171
    .line 172
    const-string v1, "lock_begin"

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getLockBegin()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    :cond_3
    const-string v1, "encrypted"

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    .line 189
    .line 190
    const-string v1, "episode_time"

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 193
    .line 194
    .line 195
    move-result-wide v2

    .line 196
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    .line 201
    .line 202
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    .line 204
    .line 205
    :goto_1
    return-object v0
.end method

.method public final D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/exception/ResponseException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "throwable"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getErrorExtra()Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->getRealCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_1
    const-string v2, "err_code"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getErrorExtra()Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->getRealMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_3
    const-string p1, "err_msg"

    .line 62
    .line 63
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public final D0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object/from16 v3, p7

    .line 5
    .line 6
    move-object/from16 v4, p8

    .line 7
    .line 8
    move-object/from16 v5, p10

    .line 9
    .line 10
    const-string v6, "scene"

    .line 11
    .line 12
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    sput-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->f:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    move-object v8, p3

    .line 30
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-static {v7, v8}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const/4 v8, 0x2

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v10, 0x0

    .line 41
    move-object/from16 v11, p4

    .line 42
    .line 43
    invoke-static {p0, v11, v10, v8, v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-static {v7, v8}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v7, v6, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    instance-of v1, v2, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    move-object v1, v2

    .line 59
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->getUnlockingEpisodes()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const-string/jumbo v2, "unlock_in_batch"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    :cond_0
    if-eqz v3, :cond_1

    .line 72
    .line 73
    const-string v1, "second_from"

    .line 74
    .line 75
    invoke-virtual {v7, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    sget-object v1, Lve/h;->a:Lve/h;

    .line 79
    .line 80
    invoke-virtual {v1}, Lve/h;->m()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string/jumbo v2, "style_id"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    if-eqz p5, :cond_2

    .line 91
    .line 92
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Number;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    const-string v2, "payment_method"

    .line 97
    .line 98
    invoke-virtual {v7, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    if-eqz p6, :cond_3

    .line 102
    .line 103
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    :cond_3
    const-string v1, "password_free"

    .line 108
    .line 109
    invoke-virtual {v7, v1, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    const-string v1, "action"

    .line 113
    .line 114
    move-object/from16 v2, p9

    .line 115
    .line 116
    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    if-eqz v5, :cond_4

    .line 120
    .line 121
    const-string v1, "adpurchase_scene"

    .line 122
    .line 123
    invoke-virtual {v7, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    if-eqz v4, :cond_5

    .line 127
    .line 128
    const-string v1, "from"

    .line 129
    .line 130
    invoke-virtual {v7, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    const/4 v1, 0x4

    .line 136
    const/4 v2, 0x0

    .line 137
    const-string v3, "order_create"

    .line 138
    .line 139
    const-wide/16 v4, 0x0

    .line 140
    .line 141
    move-object p1, p0

    .line 142
    move-object p2, v3

    .line 143
    move-object p3, v7

    .line 144
    move-wide/from16 p4, v4

    .line 145
    .line 146
    move/from16 p6, v1

    .line 147
    .line 148
    move-object/from16 p7, v2

    .line 149
    .line 150
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final E()Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->e:Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sput-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->f:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->L(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p2, v1}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 v1, 0x2

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {p0, p4, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    invoke-static {p2, p4}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p0, p5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->M(I)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    invoke-static {p2, p4}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p3, :cond_0

    .line 48
    .line 49
    const-string p4, "customShortsName"

    .line 50
    .line 51
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p2, p4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    if-eqz p8, :cond_1

    .line 62
    .line 63
    const-string p1, "second_from"

    .line 64
    .line 65
    invoke-virtual {p2, p1, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    sget-object p1, Lve/h;->a:Lve/h;

    .line 69
    .line 70
    invoke-virtual {p1}, Lve/h;->m()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string/jumbo p3, "style_id"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    if-eqz p6, :cond_2

    .line 81
    .line 82
    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const-string p3, "payment_method"

    .line 87
    .line 88
    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    :cond_2
    if-eqz p7, :cond_3

    .line 92
    .line 93
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    :cond_3
    const-string p1, "password_free"

    .line 98
    .line 99
    invoke-virtual {p2, p1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    const-string p1, "action"

    .line 103
    .line 104
    invoke-virtual {p2, p1, p10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    if-eqz p11, :cond_4

    .line 108
    .line 109
    const-string p1, "adpurchase_scene"

    .line 110
    .line 111
    invoke-virtual {p2, p1, p11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    if-eqz p9, :cond_5

    .line 115
    .line 116
    const-string p1, "from"

    .line 117
    .line 118
    invoke-virtual {p2, p1, p9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 122
    .line 123
    const/4 p10, 0x4

    .line 124
    const/4 p11, 0x0

    .line 125
    const-string p6, "order_create"

    .line 126
    .line 127
    const-wide/16 p8, 0x0

    .line 128
    .line 129
    move-object p5, p0

    .line 130
    move-object p7, p2

    .line 131
    invoke-static/range {p5 .. p11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final H(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getTab()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getRanking()Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->A(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz p1, :cond_9

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const-string v1, "module_id"

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleType()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-lez v1, :cond_4

    .line 61
    .line 62
    const-string v1, "module_type"

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleType()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-lez v1, :cond_5

    .line 80
    .line 81
    const-string v1, "module_name"

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getPositionId()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-lez v1, :cond_6

    .line 95
    .line 96
    const-string v1, "position_id"

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getPositionId()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getRecommendId()Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getRecommendId()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-lez v1, :cond_7

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getRecommendId()Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const-string v2, "audiences_recommend_id"

    .line 130
    .line 131
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    :cond_7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getTab()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_9

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabId()Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_8

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    goto :goto_2

    .line 151
    :cond_8
    const/4 p1, 0x0

    .line 152
    :goto_2
    const-string/jumbo v1, "tab_id"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    :cond_9
    return-object v0
.end method

.method public final H0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "errType"

    .line 7
    .line 8
    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "errMsg"

    .line 12
    .line 13
    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 p3, 0x2

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {p0, p4, v2, p3, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lqf/e;->a:Lqf/e;

    .line 43
    .line 44
    invoke-virtual {p1}, Lqf/e;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "platform"

    .line 49
    .line 50
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo p1, "sort"

    .line 54
    .line 55
    .line 56
    const-string p2, "inapp"

    .line 57
    .line 58
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo p1, "type"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p1, "err_msg"

    .line 68
    .line 69
    invoke-virtual {v3, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    const/4 v6, 0x4

    .line 75
    const/4 v7, 0x0

    .line 76
    const-string v2, "order_create_fail"

    .line 77
    .line 78
    const-wide/16 v4, 0x0

    .line 79
    .line 80
    move-object v1, p0

    .line 81
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final I0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "errType"

    .line 7
    .line 8
    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "errMsg"

    .line 12
    .line 13
    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->L(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 p3, 0x2

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {p0, p4, v2, p3, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p0, p5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->M(I)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lqf/e;->a:Lqf/e;

    .line 51
    .line 52
    invoke-virtual {p1}, Lqf/e;->b()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, "platform"

    .line 57
    .line 58
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo p1, "sort"

    .line 62
    .line 63
    .line 64
    const-string/jumbo p2, "subscription"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo p1, "type"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p1, "err_msg"

    .line 77
    .line 78
    invoke-virtual {v3, p1, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    const/4 v6, 0x4

    .line 84
    const/4 v7, 0x0

    .line 85
    const-string v2, "order_create_fail"

    .line 86
    .line 87
    const-wide/16 v4, 0x0

    .line 88
    .line 89
    move-object v1, p0

    .line 90
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final J0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    const-string v5, "scene"

    .line 12
    .line 13
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v6, "sort"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v7, "errType"

    .line 23
    .line 24
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v7, "errMsg"

    .line 28
    .line 29
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v10, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v10, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lqf/e;->a:Lqf/e;

    .line 41
    .line 42
    invoke-virtual {v0}, Lqf/e;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v7, "platform"

    .line 47
    .line 48
    invoke-virtual {v10, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v5, "payment_method"

    .line 55
    .line 56
    invoke-virtual {v0}, Lqf/e;->a()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {v10, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v0, "type"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "err_msg"

    .line 70
    .line 71
    invoke-virtual {v10, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-eqz v4, :cond_0

    .line 75
    .line 76
    invoke-static {v10, v4}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    :cond_0
    const-string/jumbo v0, "subscription"

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 89
    .line 90
    move/from16 v1, p3

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->M(I)Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v10, v0}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    const/4 v13, 0x4

    .line 102
    const/4 v14, 0x0

    .line 103
    const-string v9, "order_create_fail"

    .line 104
    .line 105
    const-wide/16 v11, 0x0

    .line 106
    .line 107
    move-object v8, p0

    .line 108
    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final K(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_d

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "sku"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    const-string v3, "amount"

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getActivityPrice()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 41
    .line 42
    .line 43
    :goto_0
    const-string v1, "product_id"

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getActivityName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string/jumbo v2, "template_id"

    .line 57
    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getActivitySkuConfigId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuModelConfigId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getActivityId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_3

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    const-string v1, "activity_id"

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getActivityId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getActivityName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_5

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_5
    const-string v1, "activity_name"

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getActivityName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuModelId()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_7

    .line 136
    .line 137
    const-string v1, "in_purchase_id"

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuModelId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCampaignTemplateId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_8

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuModelId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_9

    .line 165
    .line 166
    const-string v1, "inapp_template_id"

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuModelId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_8
    const-string v1, "campaign_template_id"

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCampaignTemplateId()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_9
    :goto_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_a

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-eqz v1, :cond_a

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    goto :goto_6

    .line 202
    :cond_a
    sget-object v1, Lqf/e;->a:Lqf/e;

    .line 203
    .line 204
    invoke-virtual {v1}, Lqf/e;->a()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    :goto_6
    const-string v2, "payment_method"

    .line 209
    .line 210
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    sget-object v1, Lqf/e;->a:Lqf/e;

    .line 214
    .line 215
    invoke-virtual {v1}, Lqf/e;->b()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const-string v2, "platform"

    .line 220
    .line 221
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string/jumbo v1, "sort"

    .line 225
    .line 226
    .line 227
    const-string v2, "inapp"

    .line 228
    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoins()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    const-string v2, "coins"

    .line 241
    .line 242
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    const/4 v2, 0x7

    .line 250
    const/4 v3, 0x0

    .line 251
    if-ne v1, v2, :cond_b

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    if-eqz p1, :cond_c

    .line 258
    .line 259
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    goto :goto_8

    .line 264
    :cond_b
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    if-eqz p1, :cond_c

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_c
    :goto_8
    const-string/jumbo p1, "tickets"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_d
    new-instance v0, Landroid/os/Bundle;

    .line 279
    .line 280
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 281
    .line 282
    .line 283
    :goto_9
    return-object v0
.end method

.method public final L(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "sku"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "amount"

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getActivityId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string v1, "activity_id"

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getActivityId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getActivityName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const-string v1, "activity_name"

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getActivityName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSubscriptionId()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-lez v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSubscriptionId()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string/jumbo v2, "subscribe_product_list_id"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    const-string v1, "product_id"

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    sget-object v1, Lqf/e;->a:Lqf/e;

    .line 132
    .line 133
    invoke-virtual {v1}, Lqf/e;->a()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    :goto_3
    const-string v2, "payment_method"

    .line 138
    .line 139
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getCampaignTemplateId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_7

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSubTemplateId()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_8

    .line 161
    .line 162
    const-string/jumbo v1, "sub_template_id"

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSubTemplateId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_7
    const-string v1, "campaign_template_id"

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getCampaignTemplateId()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    :goto_4
    sget-object v1, Lqf/e;->a:Lqf/e;

    .line 183
    .line 184
    invoke-virtual {v1}, Lqf/e;->b()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v2, "platform"

    .line 189
    .line 190
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string/jumbo v1, "sort"

    .line 194
    .line 195
    .line 196
    const-string/jumbo v2, "subscription"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getCoins()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const-string v2, "coins"

    .line 211
    .line 212
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getBonus()Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_9

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    goto :goto_5

    .line 226
    :cond_9
    const/4 p1, 0x0

    .line 227
    :goto_5
    const-string/jumbo v1, "tickets"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_a
    new-instance v0, Landroid/os/Bundle;

    .line 235
    .line 236
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .line 238
    .line 239
    :goto_6
    return-object v0
.end method

.method public final M(I)Landroid/os/Bundle;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "replacement_method"

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq p1, v2, :cond_0

    .line 12
    .line 13
    const-string p1, "none"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo p1, "upgrade"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string p1, "downgrade"

    .line 27
    .line 28
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object v0
.end method

.method public final M0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-static {v1, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p0, p4, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    invoke-static {p3, p4}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "action"

    .line 33
    .line 34
    invoke-virtual {v3, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    instance-of p1, p2, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    check-cast p2, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->getUnlockingEpisodes()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const-string/jumbo p2, "unlock_in_batch"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    sget-object p1, Lve/h;->a:Lve/h;

    .line 54
    .line 55
    invoke-virtual {p1}, Lve/h;->m()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string/jumbo p2, "style_id"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-eqz p6, :cond_1

    .line 66
    .line 67
    const-string p1, "from"

    .line 68
    .line 69
    invoke-virtual {v3, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    if-eqz p7, :cond_2

    .line 73
    .line 74
    const-string p1, "second_from"

    .line 75
    .line 76
    invoke-virtual {v3, p1, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    const/4 v6, 0x4

    .line 82
    const/4 v7, 0x0

    .line 83
    const-string v2, "order_show"

    .line 84
    .line 85
    const-wide/16 v4, 0x0

    .line 86
    .line 87
    move-object v1, p0

    .line 88
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final N0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->L(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x2

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p0, p4, v2, p3, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "action"

    .line 33
    .line 34
    invoke-virtual {v3, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lve/h;->a:Lve/h;

    .line 38
    .line 39
    invoke-virtual {p1}, Lve/h;->m()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string/jumbo p2, "style_id"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-eqz p6, :cond_0

    .line 50
    .line 51
    const-string p1, "from"

    .line 52
    .line 53
    invoke-virtual {v3, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    if-eqz p7, :cond_1

    .line 57
    .line 58
    const-string p1, "second_from"

    .line 59
    .line 60
    invoke-virtual {v3, p1, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    const/4 v6, 0x4

    .line 66
    const/4 v7, 0x0

    .line 67
    const-string v2, "order_show"

    .line 68
    .line 69
    const-wide/16 v4, 0x0

    .line 70
    .line 71
    move-object v1, p0

    .line 72
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "action"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v4, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v7, 0x4

    .line 25
    const/4 v8, 0x0

    .line 26
    const-string v3, "account_recovery_click"

    .line 27
    .line 28
    const-wide/16 v5, 0x0

    .line 29
    .line 30
    move-object v2, p0

    .line 31
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    const/4 v6, 0x4

    .line 17
    const/4 v7, 0x0

    .line 18
    const-string v2, "account_recovery_close"

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    move-object v1, p0

    .line 23
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final Q(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    const/4 v6, 0x4

    .line 17
    const/4 v7, 0x0

    .line 18
    const-string v2, "account_recovery_show"

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    move-object v1, p0

    .line 23
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final Q0()V
    .locals 7

    .line 1
    const/4 v5, 0x6

    .line 2
    const/4 v6, 0x0

    .line 3
    const-string/jumbo v1, "setting_page_show"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final R(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "button_name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    const/4 v6, 0x4

    .line 17
    const/4 v7, 0x0

    .line 18
    const-string v2, "account_switch_click"

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    move-object v1, p0

    .line 23
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final R0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p5

    .line 5
    const-string v4, "scene"

    .line 6
    .line 7
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->I(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    invoke-static {v5, v6}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const/4 v6, 0x2

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    move-object/from16 v9, p6

    .line 26
    .line 27
    invoke-static {p0, v9, v8, v6, v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v5, v6}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p0, p5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v5, v6}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    const-string v1, "currencyCode"

    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpCurrencyCode()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v5, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpPrice()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/lang/Float;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 73
    :goto_0
    const-string v4, "price"

    .line 74
    .line 75
    invoke-virtual {v5, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 76
    .line 77
    .line 78
    :cond_1
    const-string v1, "order_no"

    .line 79
    .line 80
    move-object v4, p4

    .line 81
    invoke-virtual {v5, v1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    instance-of v1, v2, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    move-object v1, v2

    .line 89
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->getUnlockingEpisodes()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const-string/jumbo v2, "unlock_in_batch"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "gp_delay_callback"

    .line 106
    .line 107
    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    const-string v1, "customShortsName"

    .line 113
    .line 114
    invoke-virtual {p5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isUnlockTypeIaspUser()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/4 v2, 0x1

    .line 134
    if-ne v1, v2, :cond_4

    .line 135
    .line 136
    const-string v1, "Put_on_type"

    .line 137
    .line 138
    const-string v2, "IASP"

    .line 139
    .line 140
    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    sget-object v1, Lve/h;->a:Lve/h;

    .line 144
    .line 145
    invoke-virtual {v1}, Lve/h;->m()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string/jumbo v2, "style_id"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    if-eqz p8, :cond_5

    .line 156
    .line 157
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Number;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    const-string v2, "payment_method"

    .line 162
    .line 163
    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    :cond_5
    if-eqz p9, :cond_6

    .line 167
    .line 168
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    :cond_6
    const-string v1, "password_free"

    .line 173
    .line 174
    invoke-virtual {v5, v1, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 178
    .line 179
    const/4 v1, 0x4

    .line 180
    const/4 v2, 0x0

    .line 181
    const-string v3, "pay_success"

    .line 182
    .line 183
    const-wide/16 v6, 0x0

    .line 184
    .line 185
    move-object p1, p0

    .line 186
    move-object p2, v3

    .line 187
    move-object p3, v5

    .line 188
    move-wide p4, v6

    .line 189
    move/from16 p6, v1

    .line 190
    .line 191
    move-object/from16 p7, v2

    .line 192
    .line 193
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public final S(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "resource"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p0, p2, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    invoke-virtual {v6, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    const/4 v9, 0x4

    .line 24
    const/4 v10, 0x0

    .line 25
    const-string v5, "bf_act_entry_click_all"

    .line 26
    .line 27
    const-wide/16 v7, 0x0

    .line 28
    .line 29
    move-object v4, p0

    .line 30
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final S0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p5

    .line 5
    const-string v4, "scene"

    .line 6
    .line 7
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->L(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->J(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v5, v2}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x2

    .line 25
    move-object v8, p6

    .line 26
    invoke-static {p0, p6, v6, v7, v5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {v2, v5}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz p8, :cond_0

    .line 35
    .line 36
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    :cond_0
    invoke-virtual {p0, v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->M(I)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v2, v5}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p0, p5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v2, v5}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    const-string v1, "currencyCode"

    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpCurrencyCode()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpPrice()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const/4 v1, 0x0

    .line 86
    :goto_0
    const-string v4, "price"

    .line 87
    .line 88
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 89
    .line 90
    .line 91
    :cond_2
    const-string v1, "order_no"

    .line 92
    .line 93
    move-object v4, p4

    .line 94
    invoke-virtual {v2, v1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v4, "gp_delay_callback"

    .line 102
    .line 103
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    const-string v1, "customShortsName"

    .line 109
    .line 110
    invoke-virtual {p5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isUnlockTypeIaspUser()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const/4 v3, 0x1

    .line 130
    if-ne v1, v3, :cond_4

    .line 131
    .line 132
    const-string v1, "Put_on_type"

    .line 133
    .line 134
    const-string v3, "IASP"

    .line 135
    .line 136
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    if-eqz p9, :cond_5

    .line 140
    .line 141
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Number;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    const-string v3, "payment_method"

    .line 146
    .line 147
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    :cond_5
    if-eqz p10, :cond_6

    .line 151
    .line 152
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    :cond_6
    const-string v1, "password_free"

    .line 157
    .line 158
    invoke-virtual {v2, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    const/4 v1, 0x4

    .line 164
    const/4 v3, 0x0

    .line 165
    const-string v4, "pay_success"

    .line 166
    .line 167
    const-wide/16 v5, 0x0

    .line 168
    .line 169
    move-object p1, p0

    .line 170
    move-object p2, v4

    .line 171
    move-object p3, v2

    .line 172
    move-wide p4, v5

    .line 173
    move p6, v1

    .line 174
    move-object/from16 p7, v3

    .line 175
    .line 176
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final T(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "resource"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p0, p2, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    invoke-virtual {v6, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    const/4 v9, 0x4

    .line 24
    const/4 v10, 0x0

    .line 25
    const-string v5, "bf_act_entry_show_all"

    .line 26
    .line 27
    const-wide/16 v7, 0x0

    .line 28
    .line 29
    move-object v4, p0

    .line 30
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final U()Lkotlinx/coroutines/r;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/event/EventManager$logActiveUser$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager$logActiveUser$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "logActiveUser"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final V(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "popupName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "from"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "adPurchaseScene"

    .line 12
    .line 13
    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 17
    .line 18
    invoke-virtual {v2, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, "popup_name"

    .line 26
    .line 27
    invoke-virtual {v4, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo p1, "sku_id"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "adpurchase_scene"

    .line 37
    .line 38
    invoke-virtual {v4, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "popup_type"

    .line 42
    .line 43
    const-string p2, "modal"

    .line 44
    .line 45
    invoke-virtual {v4, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "click_target"

    .line 49
    .line 50
    const-string p2, "confirm_btn"

    .line 51
    .line 52
    invoke-virtual {v4, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    const/4 v7, 0x4

    .line 58
    const/4 v8, 0x0

    .line 59
    const-string v3, "popup_click"

    .line 60
    .line 61
    const-wide/16 v5, 0x0

    .line 62
    .line 63
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final V0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "action"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    sput-object p2, Lcom/startshorts/androidplayer/manager/event/EventManager;->g:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {p0, p4, v4, v2, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    invoke-static {p3, p4}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lve/h;->a:Lve/h;

    .line 35
    .line 36
    invoke-virtual {p1}, Lve/h;->m()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string/jumbo p2, "style_id"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-eqz p5, :cond_0

    .line 47
    .line 48
    const-string p1, "from"

    .line 49
    .line 50
    invoke-virtual {v4, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    if-eqz p6, :cond_1

    .line 54
    .line 55
    const-string p1, "second_from"

    .line 56
    .line 57
    invoke-virtual {v4, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    const/4 v7, 0x4

    .line 63
    const/4 v8, 0x0

    .line 64
    const-string v3, "recharge_show"

    .line 65
    .line 66
    const-wide/16 v5, 0x0

    .line 67
    .line 68
    move-object v2, p0

    .line 69
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final W(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "popupName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "from"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "adPurchaseScene"

    .line 12
    .line 13
    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, "popup_name"

    .line 26
    .line 27
    invoke-virtual {v4, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo p1, "sku_id"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "adpurchase_scene"

    .line 37
    .line 38
    invoke-virtual {v4, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "popup_type"

    .line 42
    .line 43
    const-string p2, "modal"

    .line 44
    .line 45
    invoke-virtual {v4, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    const/4 v8, 0x0

    .line 52
    const-string v3, "popup_close"

    .line 53
    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final X(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "popupName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "from"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "adPurchaseScene"

    .line 12
    .line 13
    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p2, "popup_name"

    .line 24
    .line 25
    invoke-virtual {v4, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo p1, "sku_id"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "adpurchase_scene"

    .line 35
    .line 36
    invoke-virtual {v4, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "popup_type"

    .line 40
    .line 41
    const-string p2, "modal"

    .line 42
    .line 43
    invoke-virtual {v4, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    const/4 v7, 0x4

    .line 49
    const/4 v8, 0x0

    .line 50
    const-string v3, "popup_show"

    .line 51
    .line 52
    const-wide/16 v5, 0x0

    .line 53
    .line 54
    move-object v2, p0

    .line 55
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final X0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    sput-object p2, Lcom/startshorts/androidplayer/manager/event/EventManager;->g:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    const-string p4, "1"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p4, "0"

    .line 18
    .line 19
    :goto_0
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {p0, p5, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    invoke-static {p3, p5}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "action"

    .line 34
    .line 35
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "is_third_payment"

    .line 39
    .line 40
    invoke-virtual {v3, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lve/h;->a:Lve/h;

    .line 44
    .line 45
    invoke-virtual {p1}, Lve/h;->m()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string/jumbo p2, "style_id"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    const/4 v6, 0x4

    .line 58
    const/4 v7, 0x0

    .line 59
    const-string v2, "recharge_show_end"

    .line 60
    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    move-object v1, p0

    .line 64
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final Y()Lkotlinx/coroutines/r;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/event/EventManager$logAppActive$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager$logAppActive$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "logAppActive"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final Z(Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/event/EventManager$logAppActiveForeground$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p1, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager$logAppActiveForeground$1;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "logAppActiveForeground"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final Z0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-static {v1, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p0, p4, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    invoke-static {p3, p4}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    instance-of p1, p2, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    check-cast p2, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->getUnlockingEpisodes()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const-string/jumbo p2, "unlock_in_batch"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    if-eqz p5, :cond_1

    .line 49
    .line 50
    const-string/jumbo p1, "task"

    .line 51
    .line 52
    .line 53
    const-string/jumbo p2, "task_center"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object p1, Lve/h;->a:Lve/h;

    .line 61
    .line 62
    invoke-virtual {p1}, Lve/h;->m()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string/jumbo p2, "style_id"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    if-eqz p6, :cond_3

    .line 73
    .line 74
    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const-string/jumbo p1, "third_sku_id"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    const/4 v6, 0x4

    .line 90
    const/4 v7, 0x0

    .line 91
    const-string v2, "rentention_dialog_close"

    .line 92
    .line 93
    const-wide/16 v4, 0x0

    .line 94
    .line 95
    move-object v1, p0

    .line 96
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final a0(Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/event/EventManager$logAppActiveForegroundAgain$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p1, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager$logAppActiveForegroundAgain$1;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "logAppActiveForegroundAgain"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final a1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Z)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->L(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x2

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p0, p4, v2, p3, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-eqz p5, :cond_0

    .line 33
    .line 34
    const-string/jumbo p1, "task"

    .line 35
    .line 36
    .line 37
    const-string/jumbo p2, "task_center"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lve/h;->a:Lve/h;

    .line 45
    .line 46
    invoke-virtual {p1}, Lve/h;->m()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string/jumbo p2, "style_id"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    const/4 v6, 0x4

    .line 59
    const/4 v7, 0x0

    .line 60
    const-string v2, "rentention_dialog_close"

    .line 61
    .line 62
    const-wide/16 v4, 0x0

    .line 63
    .line 64
    move-object v1, p0

    .line 65
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final b0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "isFirstLaunch"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v4, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "is_first"

    .line 20
    .line 21
    invoke-virtual {v4, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "is_login"

    .line 31
    .line 32
    if-eqz p1, :cond_5

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getType()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x2

    .line 39
    if-ne v0, v1, :cond_5

    .line 40
    .line 41
    const-string v0, "1"

    .line 42
    .line 43
    invoke-virtual {v4, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getFirebaseSource()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string/jumbo v0, "type"

    .line 51
    .line 52
    .line 53
    if-nez p2, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/16 v1, 0xa

    .line 61
    .line 62
    if-ne p2, v1, :cond_1

    .line 63
    .line 64
    const-string p1, "google"

    .line 65
    .line 66
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getFirebaseSource()Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-nez p2, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    const/16 v1, 0x14

    .line 82
    .line 83
    if-ne p2, v1, :cond_3

    .line 84
    .line 85
    const-string p1, "facebook"

    .line 86
    .line 87
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getTripartiteCode()Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    const/16 p2, 0x3c

    .line 103
    .line 104
    if-ne p1, p2, :cond_6

    .line 105
    .line 106
    const-string p1, "phone"

    .line 107
    .line 108
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    const-string p1, "0"

    .line 113
    .line 114
    invoke-virtual {v4, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    const/4 v7, 0x4

    .line 120
    const/4 v8, 0x0

    .line 121
    const-string v3, "app_launch"

    .line 122
    .line 123
    const-wide/16 v5, 0x0

    .line 124
    .line 125
    move-object v2, p0

    .line 126
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final c0(Ljava/lang/String;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "red_click"

    .line 13
    .line 14
    const-string v3, "0"

    .line 15
    .line 16
    const-string v4, "country"

    .line 17
    .line 18
    const-string v5, "is_login"

    .line 19
    .line 20
    if-eqz v1, :cond_7

    .line 21
    .line 22
    new-instance v8, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->k()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v8, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getType()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v0, 0x2

    .line 44
    if-ne p1, v0, :cond_5

    .line 45
    .line 46
    const-string p1, "1"

    .line 47
    .line 48
    invoke-virtual {v8, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getFirebaseSource()Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string/jumbo v0, "type"

    .line 56
    .line 57
    .line 58
    if-nez p1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/16 v3, 0xa

    .line 66
    .line 67
    if-ne p1, v3, :cond_1

    .line 68
    .line 69
    const-string p1, "google"

    .line 70
    .line 71
    invoke-virtual {v8, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getFirebaseSource()Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const/16 v3, 0x14

    .line 87
    .line 88
    if-ne p1, v3, :cond_3

    .line 89
    .line 90
    const-string p1, "facebook"

    .line 91
    .line 92
    invoke-virtual {v8, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getTripartiteCode()Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-nez p1, :cond_4

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    const/16 v1, 0x3c

    .line 108
    .line 109
    if-ne p1, v1, :cond_6

    .line 110
    .line 111
    const-string p1, "phone"

    .line 112
    .line 113
    invoke-virtual {v8, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {v8, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    :goto_2
    sget-object p1, Lud/b;->a:Lud/b;

    .line 121
    .line 122
    invoke-virtual {p1}, Lud/b;->B()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {v8, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    const/4 v11, 0x4

    .line 132
    const/4 v12, 0x0

    .line 133
    const-string v7, "app_start"

    .line 134
    .line 135
    const-wide/16 v9, 0x0

    .line 136
    .line 137
    move-object v6, p0

    .line 138
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->G()Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    sget-object v6, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 147
    .line 148
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 149
    .line 150
    .line 151
    move-result-wide v7

    .line 152
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    new-instance v8, Landroid/os/Bundle;

    .line 157
    .line 158
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->k()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v8, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget-object p1, Lud/b;->a:Lud/b;

    .line 175
    .line 176
    invoke-virtual {p1}, Lud/b;->B()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-virtual {v8, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    new-instance p1, Lkotlin/Pair;

    .line 184
    .line 185
    const-string v0, "app_start"

    .line 186
    .line 187
    invoke-direct {p1, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v1, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    :goto_3
    return-void
.end method

.method public final c1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Z)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-static {v1, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p0, p4, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    invoke-static {p3, p4}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    instance-of p1, p2, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    check-cast p2, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->getUnlockingEpisodes()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const-string/jumbo p2, "unlock_in_batch"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    if-eqz p5, :cond_1

    .line 49
    .line 50
    const-string/jumbo p1, "task"

    .line 51
    .line 52
    .line 53
    const-string/jumbo p2, "task_center"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object p1, Lve/h;->a:Lve/h;

    .line 61
    .line 62
    invoke-virtual {p1}, Lve/h;->m()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string/jumbo p2, "style_id"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    const/4 v6, 0x4

    .line 75
    const/4 v7, 0x0

    .line 76
    const-string v2, "rentention_dialog_show"

    .line 77
    .line 78
    const-wide/16 v4, 0x0

    .line 79
    .line 80
    move-object v1, p0

    .line 81
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final d0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "page"

    .line 7
    .line 8
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "button_name"

    .line 12
    .line 13
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const-string p2, "reel_id"

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "episode"

    .line 54
    .line 55
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    if-eqz p4, :cond_2

    .line 59
    .line 60
    const-string/jumbo p1, "status"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    if-eqz p5, :cond_3

    .line 67
    .line 68
    const-string/jumbo p1, "sku_id"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    const/4 v5, 0x4

    .line 77
    const/4 v6, 0x0

    .line 78
    const-string v1, "button_click"

    .line 79
    .line 80
    const-wide/16 v3, 0x0

    .line 81
    .line 82
    move-object v0, p0

    .line 83
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final d1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/Integer;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->L(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x2

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p0, p4, v2, p3, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-eqz p5, :cond_0

    .line 33
    .line 34
    const-string/jumbo p1, "task"

    .line 35
    .line 36
    .line 37
    const-string/jumbo p2, "task_center"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lve/h;->a:Lve/h;

    .line 45
    .line 46
    invoke-virtual {p1}, Lve/h;->m()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string/jumbo p2, "style_id"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    if-eqz p6, :cond_1

    .line 57
    .line 58
    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const-string p2, "is_third_payment"

    .line 63
    .line 64
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    :cond_1
    if-eqz p7, :cond_3

    .line 68
    .line 69
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const-string/jumbo p1, "third_sku_id"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p1, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    const/4 v6, 0x4

    .line 85
    const/4 v7, 0x0

    .line 86
    const-string v2, "rentention_dialog_show"

    .line 87
    .line 88
    const-wide/16 v4, 0x0

    .line 89
    .line 90
    move-object v1, p0

    .line 91
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final f0(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 p3, 0x2

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p0, p4, v1, p3, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-static {p2, p3}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz p6, :cond_0

    .line 25
    .line 26
    const-string p2, "from"

    .line 27
    .line 28
    invoke-virtual {v2, p2, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz p5, :cond_1

    .line 32
    .line 33
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const-string p3, "payment_method"

    .line 38
    .line 39
    invoke-virtual {v2, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    sget-object p2, Lve/h;->a:Lve/h;

    .line 43
    .line 44
    invoke-virtual {p2}, Lve/h;->m()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string/jumbo p3, "style_id"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p2, "action"

    .line 55
    .line 56
    invoke-virtual {v2, p2, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p2, "button_type"

    .line 60
    .line 61
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    if-eqz p8, :cond_2

    .line 65
    .line 66
    const-string p1, "second_from"

    .line 67
    .line 68
    invoke-virtual {v2, p1, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    const/4 v5, 0x4

    .line 74
    const/4 v6, 0x0

    .line 75
    const-string v1, "buttonpay_click"

    .line 76
    .line 77
    const-wide/16 v3, 0x0

    .line 78
    .line 79
    move-object v0, p0

    .line 80
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final f1(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "button_name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    const/4 v6, 0x4

    .line 17
    const/4 v7, 0x0

    .line 18
    const-string/jumbo v2, "setting_button_click"

    .line 19
    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    move-object v1, p0

    .line 24
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final g0(ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p7

    .line 3
    move-object v2, p2

    .line 4
    move-object/from16 v3, p9

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->L(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    move-object v4, p3

    .line 11
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {v2, v4}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v7, p4

    .line 23
    invoke-static {p0, p4, v6, v4, v5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v2, v4}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move v4, p5

    .line 32
    invoke-virtual {p0, p5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->M(I)Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v2, v4}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const-string v4, "from"

    .line 43
    .line 44
    invoke-virtual {v2, v4, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    if-eqz p6, :cond_1

    .line 48
    .line 49
    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const-string v4, "payment_method"

    .line 54
    .line 55
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    sget-object v1, Lve/h;->a:Lve/h;

    .line 59
    .line 60
    invoke-virtual {v1}, Lve/h;->m()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string/jumbo v4, "style_id"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, "action"

    .line 71
    .line 72
    move-object/from16 v4, p8

    .line 73
    .line 74
    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v1, "button_type"

    .line 78
    .line 79
    move v4, p1

    .line 80
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    const-string v1, "second_from"

    .line 86
    .line 87
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    const/4 v1, 0x4

    .line 93
    const/4 v3, 0x0

    .line 94
    const-string v4, "buttonpay_click"

    .line 95
    .line 96
    const-wide/16 v5, 0x0

    .line 97
    .line 98
    move-object p1, p0

    .line 99
    move-object p2, v4

    .line 100
    move-object p3, v2

    .line 101
    move-wide p4, v5

    .line 102
    move p6, v1

    .line 103
    move-object p7, v3

    .line 104
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final g1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "sku"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v4, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "amount"

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const-string v1, "product_id"

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v4, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    const/4 v7, 0x4

    .line 55
    const/4 v8, 0x0

    .line 56
    const-string/jumbo v3, "subscribe_thing_show"

    .line 57
    .line 58
    .line 59
    const-wide/16 v5, 0x0

    .line 60
    .line 61
    move-object v2, p0

    .line 62
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "payResult"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "payment_result"

    .line 12
    .line 13
    invoke-virtual {v3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p2, Lqf/e;->a:Lqf/e;

    .line 24
    .line 25
    invoke-virtual {p2}, Lqf/e;->a()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    :goto_0
    const-string p3, "payment_method"

    .line 30
    .line 31
    invoke-virtual {v3, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    const-string p2, "password_free"

    .line 35
    .line 36
    invoke-virtual {v3, p2, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo p2, "sku_id"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    const/4 v7, 0x0

    .line 49
    const-string v2, "return_other_payment"

    .line 50
    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    move-object v1, p0

    .line 54
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final j0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "page"

    .line 7
    .line 8
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "button_name"

    .line 12
    .line 13
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const-string p2, "reel_id"

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "episode"

    .line 54
    .line 55
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    if-eqz p4, :cond_2

    .line 59
    .line 60
    const-string/jumbo p1, "sku_id"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    const/4 v5, 0x4

    .line 69
    const/4 v6, 0x0

    .line 70
    const-string v1, "button_show"

    .line 71
    .line 72
    const-wide/16 v3, 0x0

    .line 73
    .line 74
    move-object v0, p0

    .line 75
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final k1(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p1, "3"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string p1, "2"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const-string p1, "1"

    .line 20
    .line 21
    :goto_0
    return-object p1
.end method

.method public final l0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/exception/ResponseException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "throwable"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "deeplink"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isNetworkError()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const-string/jumbo v0, "type"

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const-string p1, "net_error"

    .line 29
    .line 30
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getErrorExtra()Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->getRealCode()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getCode()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :cond_2
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    const/4 v5, 0x4

    .line 68
    const/4 v6, 0x0

    .line 69
    const-string v1, "drama_cannot_played"

    .line 70
    .line 71
    const-wide/16 v3, 0x0

    .line 72
    .line 73
    move-object v0, p0

    .line 74
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public final l1(J)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->e:Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;->setDiffTimeLong(J)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/jiuzhou/cdn/repo/CdnRepo;->g(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final m0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;Ljava/lang/String;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/exception/ResponseException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "throwable"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "from"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isNetworkError()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    const/4 v7, 0x4

    .line 28
    const/4 v8, 0x0

    .line 29
    const-string/jumbo v3, "unable_connect_server"

    .line 30
    .line 31
    .line 32
    const-wide/16 v5, 0x0

    .line 33
    .line 34
    move-object v2, p0

    .line 35
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    const-string v5, "from"

    .line 12
    .line 13
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v6, "popup_name"

    .line 17
    .line 18
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v7, "discount"

    .line 22
    .line 23
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v8, "sku_id"

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v9, "clickTarget"

    .line 33
    .line 34
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v12, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v12, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v12, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v12, v7, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "reel_id"

    .line 52
    .line 53
    move-object/from16 v1, p4

    .line 54
    .line 55
    invoke-virtual {v12, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v12, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "popup_type"

    .line 62
    .line 63
    const-string v1, "modal"

    .line 64
    .line 65
    invoke-virtual {v12, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "click_target"

    .line 69
    .line 70
    invoke-virtual {v12, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    const/4 v15, 0x4

    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    const-string v11, "popup_click"

    .line 79
    .line 80
    const-wide/16 v13, 0x0

    .line 81
    .line 82
    move-object/from16 v10, p0

    .line 83
    .line 84
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final o()V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 5
    .line 6
    const-string v2, "EventManager"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v4, "find pending AppStartEvent size -> "

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 19
    .line 20
    invoke-direct {v4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->G()Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->G()Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/util/Map$Entry;

    .line 61
    .line 62
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lkotlin/Pair;

    .line 69
    .line 70
    invoke-virtual {v4}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lkotlin/Pair;

    .line 81
    .line 82
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Landroid/os/Bundle;

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->q0(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 105
    .line 106
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->G()Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 111
    .line 112
    .line 113
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 117
    :goto_1
    monitor-exit v0

    .line 118
    throw v1
.end method

.method public final o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    const-string v4, "from"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v5, "popup_name"

    .line 15
    .line 16
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v6, "discount"

    .line 20
    .line 21
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v7, "sku_id"

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v10, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v10, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v10, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v10, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "reel_id"

    .line 45
    .line 46
    move-object/from16 v1, p4

    .line 47
    .line 48
    invoke-virtual {v10, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "popup_type"

    .line 55
    .line 56
    const-string v1, "modal"

    .line 57
    .line 58
    invoke-virtual {v10, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    const/4 v13, 0x4

    .line 64
    const/4 v14, 0x0

    .line 65
    const-string v9, "popup_close"

    .line 66
    .line 67
    const-wide/16 v11, 0x0

    .line 68
    .line 69
    move-object v8, p0

    .line 70
    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    const-string v4, "from"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v5, "popup_name"

    .line 15
    .line 16
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v6, "discount"

    .line 20
    .line 21
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v7, "sku_id"

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v10, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v10, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v10, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v10, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "reel_id"

    .line 45
    .line 46
    move-object/from16 v1, p4

    .line 47
    .line 48
    invoke-virtual {v10, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "popup_type"

    .line 55
    .line 56
    const-string v1, "modal"

    .line 57
    .line 58
    invoke-virtual {v10, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    const/4 v13, 0x4

    .line 64
    const/4 v14, 0x0

    .line 65
    const-string v9, "popup_show"

    .line 66
    .line 67
    const-wide/16 v11, 0x0

    .line 68
    .line 69
    move-object v8, p0

    .line 70
    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final q(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->b:Ljava/util/List;

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
    check-cast v1, Laf/h;

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p3}, Laf/h;->e(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final q0(Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "eventName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x1

    .line 8
    filled-new-array {v0, v1}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    const/16 v9, 0x10

    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-wide v6, p3

    .line 20
    invoke-static/range {v2 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->t0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;[IJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final r(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->b:Ljava/util/List;

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
    check-cast v1, Laf/h;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Laf/h;->b(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final r0(Ljava/lang/String;Landroid/os/Bundle;[IJLkotlin/jvm/functions/Function0;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "[IJ",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    move-object v2, p1

    .line 2
    move-object v4, p3

    .line 3
    const-string v0, "eventName"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "loggerTypes"

    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "getRemoteConfigs"

    .line 14
    .line 15
    move-object/from16 v3, p6

    .line 16
    .line 17
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    array-length v0, v4

    .line 21
    const-string v1, "EventManager"

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 26
    .line 27
    const-string v2, "logEvent failed -> loggerTypes is empty"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->p(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "logEvent eventName:"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, " in blacklist:"

    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->F()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ", not report}"

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    sget-object v8, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 80
    .line 81
    new-instance v9, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    move-object v0, v9

    .line 85
    move-object v1, p2

    .line 86
    move-object v2, p1

    .line 87
    move-object/from16 v3, p6

    .line 88
    .line 89
    move-object v4, p3

    .line 90
    move-wide v5, p4

    .line 91
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;-><init>(Landroid/os/Bundle;Ljava/lang/String;Lkotlin/jvm/functions/Function0;[IJLrs/c;)V

    .line 92
    .line 93
    .line 94
    const-string v0, "logEvent"

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    invoke-virtual {v8, v0, v1, v9}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->j(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final t(Lkotlin/jvm/functions/Function0;)Landroid/os/Bundle;
    .locals 14
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, ") value("

    .line 2
    .line 3
    const-string v1, "key("

    .line 4
    .line 5
    const-string v2, "EventManager"

    .line 6
    .line 7
    const-string v3, "getRemoteConfigs"

    .line 8
    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/4 v6, 0x0

    .line 41
    if-eqz v5, :cond_6

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    move-object v8, v7

    .line 54
    check-cast v8, Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 61
    .line 62
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->getValue()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-string v7, "and_"

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x2

    .line 77
    invoke-static {v8, v7, v9, v10, v6}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_0

    .line 82
    .line 83
    const-string v7, "_test"

    .line 84
    .line 85
    invoke-static {v8, v7, v9, v10, v6}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_0

    .line 90
    .line 91
    const/4 v12, 0x4

    .line 92
    const/4 v13, 0x0

    .line 93
    const-string v9, "and_"

    .line 94
    .line 95
    const-string v10, ""

    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_2

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    .line 111
    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Ljava/lang/Boolean;

    .line 116
    .line 117
    if-nez v7, :cond_3

    .line 118
    .line 119
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 120
    .line 121
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    .line 122
    .line 123
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->getValue()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v8, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 131
    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->getValue()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v10, ") is JsonValue"

    .line 154
    .line 155
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-virtual {v8, v2, v9}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_1
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 167
    .line 168
    sget-object v8, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 169
    .line 170
    new-instance v9, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->getValue()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v10, ") not JsonValue"

    .line 192
    .line 193
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-virtual {v8, v2, v9}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :goto_1
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 204
    .line 205
    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-eqz v7, :cond_5

    .line 213
    .line 214
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    .line 215
    .line 216
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->getValue()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string/jumbo v5, "test_code"

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    if-eqz v5, :cond_0

    .line 231
    .line 232
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-nez v7, :cond_4

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_4
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_5
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->getValue()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_6
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-nez p1, :cond_8

    .line 265
    .line 266
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_8

    .line 271
    .line 272
    const/16 v11, 0x3e

    .line 273
    .line 274
    const/4 v12, 0x0

    .line 275
    const-string v5, ","

    .line 276
    .line 277
    const/4 v6, 0x0

    .line 278
    const/4 v7, 0x0

    .line 279
    const/4 v8, 0x0

    .line 280
    const/4 v9, 0x0

    .line 281
    const/4 v10, 0x0

    .line 282
    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    const/16 v12, 0x3e

    .line 287
    .line 288
    const/4 v13, 0x0

    .line 289
    const-string v6, ","

    .line 290
    .line 291
    const/4 v8, 0x0

    .line 292
    const/4 v9, 0x0

    .line 293
    const/4 v11, 0x0

    .line 294
    move-object v5, v3

    .line 295
    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    new-instance v1, Landroid/os/Bundle;

    .line 300
    .line 301
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v2, "level_type"

    .line 305
    .line 306
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string p1, "level"

    .line 310
    .line 311
    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    sget-object p1, Lud/b;->a:Lud/b;

    .line 315
    .line 316
    invoke-virtual {p1}, Lud/b;->f0()Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    if-eqz p1, :cond_7

    .line 321
    .line 322
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getABTestIds()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    if-eqz p1, :cond_7

    .line 327
    .line 328
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-lez v0, :cond_7

    .line 333
    .line 334
    const-string v0, "ab_test_id"

    .line 335
    .line 336
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :cond_7
    return-object v1

    .line 340
    :cond_8
    return-object v6
.end method

.method public final v0(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/event/EventInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "events"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x1

    .line 8
    filled-new-array {v0, v1}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->w0(Ljava/util/List;[I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final w(Lcom/startshorts/androidplayer/bean/act/ActResource;Z)Landroid/os/Bundle;
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getRecommendId()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "audiences_recommend_id"

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getRecommendId()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, -0x1

    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    const-string v1, "resource_bit_id"

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getId()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getUpack()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    const-string/jumbo v1, "upack"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getUpack()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getSkipTypeForEvent()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-lez v1, :cond_4

    .line 74
    .line 75
    const-string/jumbo v1, "skip_type"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getSkipTypeForEvent()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isShorts()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    if-eqz p2, :cond_5

    .line 92
    .line 93
    const-string p2, "reel_id"

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getSkipValue()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceType()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-nez p2, :cond_6

    .line 111
    .line 112
    const-string p2, "resource_bit_name"

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceType()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    const/4 v1, 0x0

    .line 126
    if-eqz p2, :cond_7

    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getCampaignId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    goto :goto_0

    .line 133
    :cond_7
    move-object p2, v1

    .line 134
    :goto_0
    if-eqz p2, :cond_9

    .line 135
    .line 136
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-nez p2, :cond_8

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getCampaignId()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    const-string v2, "activity_id"

    .line 152
    .line 153
    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getCampaignId()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    const-string v2, "new_activity_id"

    .line 165
    .line 166
    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    if-eqz p2, :cond_a

    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getCampaignName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    goto :goto_2

    .line 180
    :cond_a
    move-object p2, v1

    .line 181
    :goto_2
    if-eqz p2, :cond_c

    .line 182
    .line 183
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-nez p2, :cond_b

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_b
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getCampaignName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    const-string v2, "activity_name"

    .line 199
    .line 200
    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getCampaignName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    const-string v2, "new_activity_name"

    .line 212
    .line 213
    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_c
    :goto_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    if-eqz p2, :cond_d

    .line 221
    .line 222
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getCampaignType()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    :cond_d
    if-eqz v1, :cond_f

    .line 227
    .line 228
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-nez p2, :cond_e

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_e
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getCampaignType()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    const-string v1, "activity_type"

    .line 244
    .line 245
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_f
    :goto_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getModuleId()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    if-eqz p2, :cond_11

    .line 253
    .line 254
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    if-nez p2, :cond_10

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_10
    const-string p2, "module_id"

    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getModuleId()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_11
    :goto_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getModuleName()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    if-eqz p2, :cond_13

    .line 275
    .line 276
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    if-nez p2, :cond_12

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_12
    const-string p2, "module_name"

    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getModuleName()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_13
    :goto_6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getPosition()I

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    if-ltz p2, :cond_14

    .line 297
    .line 298
    const-string p2, "position_id"

    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getPosition()I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    :cond_14
    return-object v0
.end method

.method public final varargs w0(Ljava/util/List;[I)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/event/EventInfo;",
            ">;[I)V"
        }
    .end annotation

    .line 1
    const-string v0, "events"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "loggerTypes"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 19
    .line 20
    new-instance v1, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, p2, p1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;-><init>([ILjava/util/List;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "logEvents"

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    invoke-virtual {v0, p1, p2, v1}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->j(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final x0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "taskName"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v3, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "from"

    .line 13
    .line 14
    invoke-virtual {v3, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo p3, "type"

    .line 18
    .line 19
    .line 20
    const-string v0, "newbie_task"

    .line 21
    .line 22
    invoke-virtual {v3, p3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo p3, "task_name"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo p1, "tickets"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    const/4 v6, 0x4

    .line 40
    const/4 v7, 0x0

    .line 41
    const-string/jumbo v2, "task_click"

    .line 42
    .line 43
    .line 44
    const-wide/16 v4, 0x0

    .line 45
    .line 46
    move-object v1, p0

    .line 47
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final y0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "taskName"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
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
    const-string v0, "from"

    .line 15
    .line 16
    invoke-virtual {v3, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo p3, "type"

    .line 20
    .line 21
    .line 22
    const-string v0, "newbie_task"

    .line 23
    .line 24
    invoke-virtual {v3, p3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo p3, "task_name"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo p1, "tickets"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    const/4 v7, 0x0

    .line 43
    const-string/jumbo v2, "task_finish"

    .line 44
    .line 45
    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final z0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object/from16 v3, p7

    .line 5
    .line 6
    move-object/from16 v4, p9

    .line 7
    .line 8
    const-string v5, "scene"

    .line 9
    .line 10
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    move-object v7, p3

    .line 18
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-static {v6, v7}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const/4 v7, 0x2

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    move-object v10, p4

    .line 30
    invoke-static {p0, p4, v9, v7, v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-static {v6, v7}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v6, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    instance-of v1, v2, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    move-object v1, v2

    .line 46
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->getUnlockingEpisodes()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const-string/jumbo v2, "unlock_in_batch"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    sget-object v1, Lve/h;->a:Lve/h;

    .line 59
    .line 60
    invoke-virtual {v1}, Lve/h;->m()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string/jumbo v2, "style_id"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    const-string v1, "from"

    .line 73
    .line 74
    invoke-virtual {v6, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    if-eqz p5, :cond_2

    .line 78
    .line 79
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Number;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const-string v2, "payment_method"

    .line 84
    .line 85
    invoke-virtual {v6, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    :cond_2
    if-eqz p6, :cond_3

    .line 89
    .line 90
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    :cond_3
    const-string v1, "password_free"

    .line 95
    .line 96
    invoke-virtual {v6, v1, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    const-string v1, "action"

    .line 100
    .line 101
    move-object/from16 v2, p8

    .line 102
    .line 103
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    const-string v1, "second_from"

    .line 109
    .line 110
    invoke-virtual {v6, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    const/4 v1, 0x4

    .line 116
    const/4 v2, 0x0

    .line 117
    const-string v3, "order_click"

    .line 118
    .line 119
    const-wide/16 v4, 0x0

    .line 120
    .line 121
    move-object p1, p0

    .line 122
    move-object p2, v3

    .line 123
    move-object p3, v6

    .line 124
    move-wide p4, v4

    .line 125
    move/from16 p6, v1

    .line 126
    .line 127
    move-object/from16 p7, v2

    .line 128
    .line 129
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method
