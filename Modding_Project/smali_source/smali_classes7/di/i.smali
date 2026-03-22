.class public final Ldi/i;
.super Ljava/lang/Object;
.source "TestRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Ldi/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldi/i;

    .line 2
    .line 3
    invoke-direct {v0}, Ldi/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldi/i;->a:Ldi/i;

    .line 7
    .line 8
    new-instance v0, Ldi/g;

    .line 9
    .line 10
    invoke-direct {v0}, Ldi/g;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Ldi/i;->b:Lms/i;

    .line 18
    .line 19
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

.method public static synthetic a(Landroidx/appcompat/app/AppCompatActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Ldi/i;->e(Landroidx/appcompat/app/AppCompatActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Ldi/i;->d()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final d()Ljava/util/List;
    .locals 27

    .line 1
    new-instance v6, Ldi/f;

    .line 2
    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "gitCode:nogit"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    move-object v0, v6

    .line 10
    invoke-direct/range {v0 .. v5}, Ldi/f;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/test/Type;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ldi/f;

    .line 14
    .line 15
    const/4 v11, 0x6

    .line 16
    const/4 v12, 0x0

    .line 17
    const-string v8, "buildTime:20260312_151615"

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    move-object v7, v1

    .line 22
    invoke-direct/range {v7 .. v12}, Ldi/f;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/test/Type;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Ldi/f;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "deviceId:\n"

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->n()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v14

    .line 50
    const/16 v17, 0x6

    .line 51
    .line 52
    const/16 v18, 0x0

    .line 53
    .line 54
    const/4 v15, 0x0

    .line 55
    const/16 v16, 0x0

    .line 56
    .line 57
    move-object v13, v2

    .line 58
    invoke-direct/range {v13 .. v18}, Ldi/f;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/test/Type;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Ldi/f;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "adSdkV:1.9.1.0-max\nadLoader:"

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    sget-object v4, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->B()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    new-instance v10, Ldi/h;

    .line 87
    .line 88
    invoke-direct {v10}, Ldi/h;-><init>()V

    .line 89
    .line 90
    .line 91
    const/4 v11, 0x2

    .line 92
    move-object v7, v3

    .line 93
    invoke-direct/range {v7 .. v12}, Ldi/f;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/test/Type;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    .line 95
    .line 96
    new-instance v5, Ldi/f;

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v7, "adConfig:\n"

    .line 104
    .line 105
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    sget-object v7, Lud/a;->a:Lud/a;

    .line 109
    .line 110
    invoke-virtual {v7}, Lud/a;->a()Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    move-object v13, v5

    .line 122
    invoke-direct/range {v13 .. v18}, Ldi/f;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/test/Type;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    .line 124
    .line 125
    new-instance v14, Ldi/f;

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v8, "and_ad_close_test \u5b9e\u9a8c\u63d2\u5c4f\u5173\u95ed:"

    .line 133
    .line 134
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    sget-object v8, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 138
    .line 139
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->D0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isTestGroup()Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    const/4 v12, 0x6

    .line 155
    const/4 v13, 0x0

    .line 156
    const/4 v10, 0x0

    .line 157
    const/4 v11, 0x0

    .line 158
    move-object v8, v14

    .line 159
    invoke-direct/range {v8 .. v13}, Ldi/f;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/test/Type;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    .line 161
    .line 162
    new-instance v8, Ldi/f;

    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v9, "\u8ba2\u9605\u6216\u8005\u91d1\u5e01\u63a7\u5236\u662f\u5426\u5f00\u542f\u5e7f\u544a:"

    .line 170
    .line 171
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    sget-object v9, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 175
    .line 176
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a()Z

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v16

    .line 187
    const/16 v19, 0x6

    .line 188
    .line 189
    const/16 v20, 0x0

    .line 190
    .line 191
    const/16 v17, 0x0

    .line 192
    .line 193
    move-object v15, v8

    .line 194
    invoke-direct/range {v15 .. v20}, Ldi/f;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/test/Type;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 195
    .line 196
    .line 197
    new-instance v9, Ldi/f;

    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v10, "\u5f00\u5c4f\u5e7f\u544a:\n\u51b7\u542f\u52a8\u5f00\u5c4f\u5224\u5b9a:"

    .line 205
    .line 206
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->A()Z

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v10, "\n\u70ed\u542f\u52a8\u5f00\u5c4f\u5224\u5b9a:"

    .line 217
    .line 218
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->H()Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v4, "\n\u4eca\u5929\u6700\u5927\u663e\u793a\u6570\u662f\u5426\u7b26\u5408:"

    .line 229
    .line 230
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    sget-object v4, Lfk/b;->a:Lfk/b;

    .line 234
    .line 235
    invoke-virtual {v4}, Lfk/b;->c()Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v10, "\n\u95f4\u9694\u8981\u6c42\u662f\u5426\u7b26\u5408:"

    .line 243
    .line 244
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4}, Lfk/b;->b()Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v4, "\n\n\u4e0a\u9762\u7684\u4e09\u4e2a\u5224\u5b9a\u51b3\u5b9a\u4e86\u662f\u5426\u5f00\u542f\u5f00\u5c4f\uff0c\u4e0b\u9762\u662f\u5176\u4ed6\u53c2\u8003\u7ec6\u8282HotSplash\u5f00\u5173:"

    .line 255
    .line 256
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Lud/a;->a()Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    if-eqz v4, :cond_0

    .line 264
    .line 265
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;->getAdConfig()Lcom/startshorts/androidplayer/bean/ad/AdConfig;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    if-eqz v4, :cond_0

    .line 270
    .line 271
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/ad/AdConfig;->getHotSplash()Lcom/startshorts/androidplayer/bean/ad/HotSplash;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    if-eqz v4, :cond_0

    .line 276
    .line 277
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/ad/HotSplash;->isEnableShow()Z

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    goto :goto_0

    .line 286
    :cond_0
    const/4 v4, 0x0

    .line 287
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v4, "\nand_ad_load_close_test\u5b9e\u9a8c\u5f00\u5173:"

    .line 291
    .line 292
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    sget-object v4, Lde/r;->a:Lde/r;

    .line 296
    .line 297
    invoke-virtual {v4}, Lde/r;->d()Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const/16 v4, 0xa

    .line 305
    .line 306
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v22

    .line 313
    const/16 v25, 0x6

    .line 314
    .line 315
    const/16 v26, 0x0

    .line 316
    .line 317
    const/16 v23, 0x0

    .line 318
    .line 319
    const/16 v24, 0x0

    .line 320
    .line 321
    move-object/from16 v21, v9

    .line 322
    .line 323
    invoke-direct/range {v21 .. v26}, Ldi/f;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/test/Type;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 324
    .line 325
    .line 326
    move-object v0, v6

    .line 327
    move-object v4, v5

    .line 328
    move-object v5, v14

    .line 329
    move-object v6, v8

    .line 330
    move-object v7, v9

    .line 331
    filled-new-array/range {v0 .. v7}, [Ldi/f;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    return-object v0
.end method

.method private static final e(Landroidx/appcompat/app/AppCompatActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lca/k;->a:Lca/k;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lca/k;->q(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldi/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Ldi/i;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method
