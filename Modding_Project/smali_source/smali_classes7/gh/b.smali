.class public final Lgh/b;
.super Ljava/lang/Object;
.source "SettingsLocalDS.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgh/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSettingsLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsLocalDS.kt\ncom/startshorts/androidplayer/repo/settings/SettingsLocalDS\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1863#2,2:84\n774#2:86\n865#2,2:87\n1053#2:89\n1863#2,2:90\n*S KotlinDebug\n*F\n+ 1 SettingsLocalDS.kt\ncom/startshorts/androidplayer/repo/settings/SettingsLocalDS\n*L\n70#1:84,2\n73#1:86\n73#1:87,2\n73#1:89\n73#1:90,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lgh/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Boolean;",
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
    new-instance v0, Lgh/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgh/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgh/b;->a:Lgh/b$a;

    .line 8
    .line 9
    new-instance v0, Lgh/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lgh/a;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lgh/b;->b:Lms/i;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    .line 1
    invoke-static {}, Lgh/b;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static final b()Z
    .locals 2

    .line 1
    sget-object v0, Lid/a;->a:Lid/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lid/a;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "release"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "gray"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public static final synthetic c()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lgh/b;->b:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final d(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/settings/AppSettings;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 14
    .line 15
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-virtual {v2, v3, v4}, Lcom/startshorts/androidplayer/utils/TimeUtil;->i(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v9, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 26
    .line 27
    sget v3, Lcom/startshorts/androidplayer/R$string;->settings_fragment_personal:I

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v10, "getString(...)"

    .line 34
    .line 35
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v7, 0x4

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v4, -0x2

    .line 41
    const/4 v6, 0x0

    .line 42
    move-object v3, v9

    .line 43
    invoke-direct/range {v3 .. v8}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 50
    .line 51
    sget v4, Lcom/startshorts/androidplayer/R$string;->settings_fragment_account_info:I

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v15, 0x4

    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    const/4 v12, 0x1

    .line 64
    const/4 v14, 0x0

    .line 65
    move-object v11, v3

    .line 66
    invoke-direct/range {v11 .. v16}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    sget-object v3, Lud/a;->a:Lud/a;

    .line 73
    .line 74
    invoke-virtual {v3}, Lud/a;->k()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    const/4 v4, 0x1

    .line 79
    if-ne v3, v4, :cond_0

    .line 80
    .line 81
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 82
    .line 83
    sget v4, Lcom/startshorts/androidplayer/R$string;->settings_fragment_account_switching:I

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v15, 0x4

    .line 93
    const/16 v16, 0x0

    .line 94
    .line 95
    const/16 v12, 0x8

    .line 96
    .line 97
    const/4 v14, 0x0

    .line 98
    move-object v11, v3

    .line 99
    invoke-direct/range {v11 .. v16}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_0
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 106
    .line 107
    const/4 v8, 0x6

    .line 108
    const/4 v9, 0x0

    .line 109
    const/4 v5, -0x1

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v7, 0x0

    .line 112
    move-object v4, v3

    .line 113
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 120
    .line 121
    sget v4, Lcom/startshorts/androidplayer/R$string;->settings_fragment_permissions:I

    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/4 v15, 0x4

    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    const/4 v12, -0x2

    .line 134
    const/4 v14, 0x0

    .line 135
    move-object v11, v3

    .line 136
    invoke-direct/range {v11 .. v16}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 143
    .line 144
    sget v4, Lcom/startshorts/androidplayer/R$string;->settings_fragment_automatic_episode_unlock:I

    .line 145
    .line 146
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 v8, 0x4

    .line 154
    const/4 v5, 0x2

    .line 155
    move-object v4, v3

    .line 156
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    sget-object v3, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->o1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_1

    .line 183
    .line 184
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 185
    .line 186
    sget v4, Lcom/startshorts/androidplayer/R$string;->settings_fragment_pip_mode:I

    .line 187
    .line 188
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/4 v8, 0x4

    .line 196
    const/4 v9, 0x0

    .line 197
    const/4 v5, 0x7

    .line 198
    const/4 v7, 0x0

    .line 199
    move-object v4, v3

    .line 200
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_1
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 207
    .line 208
    const/4 v15, 0x6

    .line 209
    const/16 v16, 0x0

    .line 210
    .line 211
    const/4 v12, -0x1

    .line 212
    const/4 v13, 0x0

    .line 213
    const/4 v14, 0x0

    .line 214
    move-object v11, v3

    .line 215
    invoke-direct/range {v11 .. v16}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 222
    .line 223
    sget v4, Lcom/startshorts/androidplayer/R$string;->settings_fragment_else:I

    .line 224
    .line 225
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const/4 v8, 0x4

    .line 233
    const/4 v9, 0x0

    .line 234
    const/4 v5, -0x2

    .line 235
    const/4 v7, 0x0

    .line 236
    move-object v4, v3

    .line 237
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 244
    .line 245
    sget v4, Lcom/startshorts/androidplayer/R$string;->settings_fragment_privacy_policy:I

    .line 246
    .line 247
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const/4 v15, 0x4

    .line 255
    const/4 v12, 0x4

    .line 256
    move-object v11, v3

    .line 257
    invoke-direct/range {v11 .. v16}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 264
    .line 265
    sget v4, Lcom/startshorts/androidplayer/R$string;->settings_fragment_user_agreement:I

    .line 266
    .line 267
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const/4 v5, 0x5

    .line 275
    move-object v4, v3

    .line 276
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 277
    .line 278
    .line 279
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 283
    .line 284
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_2

    .line 289
    .line 290
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 291
    .line 292
    sget v4, Lcom/startshorts/androidplayer/R$string;->settings_fragment_delete_account:I

    .line 293
    .line 294
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const/4 v8, 0x4

    .line 302
    const/4 v9, 0x0

    .line 303
    const/4 v5, 0x6

    .line 304
    const/4 v7, 0x0

    .line 305
    move-object v4, v3

    .line 306
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 307
    .line 308
    .line 309
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    :cond_2
    sget-object v0, Lgh/b;->a:Lgh/b$a;

    .line 313
    .line 314
    invoke-virtual {v0}, Lgh/b$a;->a()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_7

    .line 319
    .line 320
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 321
    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string v4, "\u6c89\u6d78\u9875 A \u770b\u5e7f\u544a\u6b21\u6570: "

    .line 328
    .line 329
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    sget-object v9, Lud/b;->a:Lud/b;

    .line 333
    .line 334
    const-string v4, "A"

    .line 335
    .line 336
    invoke-virtual {v9, v4, v2}, Lud/b;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    const/4 v7, 0x4

    .line 348
    const/4 v8, 0x0

    .line 349
    const/16 v4, 0x2713

    .line 350
    .line 351
    const/4 v6, 0x0

    .line 352
    move-object v3, v0

    .line 353
    invoke-direct/range {v3 .. v8}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 354
    .line 355
    .line 356
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 360
    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    const-string v4, "\u6c89\u6d78\u9875 C \u770b\u5e7f\u544a\u6b21\u6570: "

    .line 367
    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v4, "C"

    .line 372
    .line 373
    invoke-virtual {v9, v4, v2}, Lud/b;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v12

    .line 384
    const/4 v14, 0x4

    .line 385
    const/4 v15, 0x0

    .line 386
    const/16 v11, 0x2714

    .line 387
    .line 388
    const/4 v13, 0x0

    .line 389
    move-object v10, v0

    .line 390
    invoke-direct/range {v10 .. v15}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 391
    .line 392
    .line 393
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 397
    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    const-string v4, "\u6c89\u6d78\u9875 B \u5df2\u5f39\u7a97\u6b21\u6570: "

    .line 404
    .line 405
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const-string v4, "B"

    .line 409
    .line 410
    invoke-virtual {v9, v4, v2}, Lud/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    const/16 v4, 0x2715

    .line 422
    .line 423
    move-object v3, v0

    .line 424
    invoke-direct/range {v3 .. v8}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 425
    .line 426
    .line 427
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 431
    .line 432
    const/4 v13, 0x4

    .line 433
    const/4 v14, 0x0

    .line 434
    const/16 v10, 0x2712

    .line 435
    .line 436
    const-string v11, "DEBUG INFO"

    .line 437
    .line 438
    const/4 v12, 0x0

    .line 439
    move-object v9, v0

    .line 440
    invoke-direct/range {v9 .. v14}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 441
    .line 442
    .line 443
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 447
    .line 448
    const/4 v6, 0x4

    .line 449
    const/4 v7, 0x0

    .line 450
    const/16 v3, 0x2710

    .line 451
    .line 452
    const-string v4, "Firebase crash \u6d4b\u8bd5"

    .line 453
    .line 454
    const/4 v5, 0x0

    .line 455
    move-object v2, v0

    .line 456
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 457
    .line 458
    .line 459
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 463
    .line 464
    const/4 v12, 0x4

    .line 465
    const/4 v13, 0x0

    .line 466
    const/16 v9, 0x2711

    .line 467
    .line 468
    const-string v10, "RoutingActivity \u6d4b\u8bd5"

    .line 469
    .line 470
    const/4 v11, 0x0

    .line 471
    move-object v8, v0

    .line 472
    invoke-direct/range {v8 .. v13}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 473
    .line 474
    .line 475
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 479
    .line 480
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->B()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    new-instance v8, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 485
    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    const-string v0, ":V"

    .line 495
    .line 496
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    sget-object v0, Lca/k;->a:Lca/k;

    .line 500
    .line 501
    invoke-virtual {v0}, Lca/k;->c()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    const-string v0, " tools"

    .line 509
    .line 510
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    const/16 v3, 0x7530

    .line 518
    .line 519
    move-object v2, v8

    .line 520
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 521
    .line 522
    .line 523
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 527
    .line 528
    const/4 v13, 0x4

    .line 529
    const/16 v10, 0x7531

    .line 530
    .line 531
    const-string v11, "\u6253\u5f00\u67d0\u4e00\u90e8\u5267"

    .line 532
    .line 533
    const/4 v12, 0x0

    .line 534
    move-object v9, v0

    .line 535
    invoke-direct/range {v9 .. v14}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 536
    .line 537
    .line 538
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    sget-object v0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->INSTANCE:Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;

    .line 542
    .line 543
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->allConfigs()Ljava/util/List;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    check-cast v0, Ljava/lang/Iterable;

    .line 548
    .line 549
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    if-eqz v2, :cond_3

    .line 558
    .line 559
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    check-cast v2, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 564
    .line 565
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 566
    .line 567
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->settingListItemTitle()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->getTitle()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    const/16 v5, 0x4e21

    .line 576
    .line 577
    invoke-direct {v3, v5, v4, v2}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    goto :goto_0

    .line 584
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 585
    .line 586
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->x0()Ljava/util/Collection;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    check-cast v0, Ljava/lang/Iterable;

    .line 591
    .line 592
    new-instance v2, Ljava/util/ArrayList;

    .line 593
    .line 594
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .line 596
    .line 597
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 602
    .line 603
    .line 604
    move-result v3

    .line 605
    if-eqz v3, :cond_5

    .line 606
    .line 607
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    move-object v4, v3

    .line 612
    check-cast v4, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 613
    .line 614
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->getOptionsForTester()Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 615
    .line 616
    .line 617
    move-result-object v4

    .line 618
    if-eqz v4, :cond_4

    .line 619
    .line 620
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    goto :goto_1

    .line 624
    :cond_5
    new-instance v0, Lgh/b$b;

    .line 625
    .line 626
    invoke-direct {v0}, Lgh/b$b;-><init>()V

    .line 627
    .line 628
    .line 629
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    check-cast v0, Ljava/lang/Iterable;

    .line 634
    .line 635
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 640
    .line 641
    .line 642
    move-result v2

    .line 643
    if-eqz v2, :cond_6

    .line 644
    .line 645
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    check-cast v2, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 650
    .line 651
    new-instance v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 652
    .line 653
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->settingListItemTitle()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->getAbTestKey()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    const/16 v5, 0x4e20

    .line 662
    .line 663
    invoke-direct {v3, v5, v4, v2}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    goto :goto_2

    .line 670
    :cond_6
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 671
    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .line 676
    .line 677
    const-string v3, "\u4e0a\u62a5\u6240\u6709\u70b9\u4f4d(\u5f53\u524d\u5ba2\u6237\u7aef\u672a\u4e0a\u62a5\u70b9\u4f4d"

    .line 678
    .line 679
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    sget-object v3, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 683
    .line 684
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->H()I

    .line 685
    .line 686
    .line 687
    move-result v3

    .line 688
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    const/16 v3, 0x29

    .line 692
    .line 693
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v8

    .line 700
    const/4 v10, 0x4

    .line 701
    const/4 v11, 0x0

    .line 702
    const/16 v7, 0x4e23

    .line 703
    .line 704
    const/4 v9, 0x0

    .line 705
    move-object v6, v0

    .line 706
    invoke-direct/range {v6 .. v11}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 707
    .line 708
    .line 709
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    :cond_7
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 713
    .line 714
    const/16 v16, 0x6

    .line 715
    .line 716
    const/16 v17, 0x0

    .line 717
    .line 718
    const/4 v13, -0x1

    .line 719
    const/4 v14, 0x0

    .line 720
    const/4 v15, 0x0

    .line 721
    move-object v12, v0

    .line 722
    invoke-direct/range {v12 .. v17}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 723
    .line 724
    .line 725
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    return-object v1
.end method
