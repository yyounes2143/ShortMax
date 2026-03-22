.class public final Lcom/startshorts/androidplayer/manager/configure/ad/a;
.super Ljava/lang/Object;
.source "AdActionCountConfigure.kt"

# interfaces
.implements Lme/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/configure/ad/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lme/b<",
        "Lcom/startshorts/androidplayer/manager/configure/ad/a$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/configure/ad/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lcom/startshorts/androidplayer/manager/configure/ad/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    const v30, 0xfffffff

    .line 12
    .line 13
    .line 14
    const/16 v31, 0x0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    const/4 v12, 0x0

    .line 27
    const/4 v13, 0x0

    .line 28
    const/4 v14, 0x0

    .line 29
    const/4 v15, 0x0

    .line 30
    const/16 v16, 0x0

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    const/16 v19, 0x0

    .line 37
    .line 38
    const/16 v20, 0x0

    .line 39
    .line 40
    const/16 v21, 0x0

    .line 41
    .line 42
    const/16 v22, 0x0

    .line 43
    .line 44
    const/16 v23, 0x0

    .line 45
    .line 46
    const/16 v24, 0x0

    .line 47
    .line 48
    const/16 v25, 0x0

    .line 49
    .line 50
    const/16 v26, 0x0

    .line 51
    .line 52
    const/16 v27, 0x0

    .line 53
    .line 54
    const/16 v28, 0x0

    .line 55
    .line 56
    const/16 v29, 0x0

    .line 57
    .line 58
    invoke-direct/range {v1 .. v31}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;-><init>(IIIIIIIIIIIZIZIZIZIZIZZZIZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->b:Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 62
    .line 63
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

.method private final g(Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->b:Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 2
    .line 3
    const-string v1, "action"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v4, "exitImmersionPage"

    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->u(I)V

    .line 21
    .line 22
    .line 23
    const-string v4, "noPaidUnlockVideo"

    .line 24
    .line 25
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->H(I)V

    .line 30
    .line 31
    .line 32
    const-string v4, "noPaidAndWatchAdEarnBonus"

    .line 33
    .line 34
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->G(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    const-string v1, "gap"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const-string v5, "interstitial"

    .line 51
    .line 52
    const v6, 0xea60

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {v0, v5}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->F(I)V

    .line 60
    .line 61
    .line 62
    const-string v5, "preloadAppOpen"

    .line 63
    .line 64
    const v6, 0x927c0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v0, v5}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->I(I)V

    .line 72
    .line 73
    .line 74
    const-string v5, "appOpenGapSub"

    .line 75
    .line 76
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {v0, v5}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->s(I)V

    .line 81
    .line 82
    .line 83
    const-string v5, "appOpenSubShowMax"

    .line 84
    .line 85
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-virtual {v0, v5}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->s(I)V

    .line 90
    .line 91
    .line 92
    const-string v5, "appOpenGapCoins"

    .line 93
    .line 94
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-virtual {v0, v5}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->q(I)V

    .line 99
    .line 100
    .line 101
    const-string v5, "appOpenCoinsShowMax"

    .line 102
    .line 103
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {v0, v5}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->q(I)V

    .line 108
    .line 109
    .line 110
    const-string v5, "appOpenGapOther"

    .line 111
    .line 112
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {v0, v5}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->r(I)V

    .line 117
    .line 118
    .line 119
    const-string v5, "appOpenOtherShowMax"

    .line 120
    .line 121
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->r(I)V

    .line 126
    .line 127
    .line 128
    :cond_1
    const-string v1, "scene"

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    const-string v1, "exitImmersionPageEnable"

    .line 137
    .line 138
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->w(Z)V

    .line 143
    .line 144
    .line 145
    const-string v1, "exitImmersionPageCount"

    .line 146
    .line 147
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->v(I)V

    .line 152
    .line 153
    .line 154
    const-string/jumbo v1, "switchTabEnable"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->M(Z)V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v1, "switchTabCount"

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->L(I)V

    .line 172
    .line 173
    .line 174
    const-string/jumbo v1, "unlockVideoEnable"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->O(Z)V

    .line 182
    .line 183
    .line 184
    const-string/jumbo v1, "unlockVideoCount"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->N(I)V

    .line 192
    .line 193
    .line 194
    const-string v1, "homeRewardIconEnable"

    .line 195
    .line 196
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->y(Z)V

    .line 201
    .line 202
    .line 203
    const-string v1, "homeRewardIconCount"

    .line 204
    .line 205
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->x(I)V

    .line 210
    .line 211
    .line 212
    const-string/jumbo v1, "shortsEnable"

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->J(Z)V

    .line 220
    .line 221
    .line 222
    const-string/jumbo v1, "shortsIntervalCount"

    .line 223
    .line 224
    .line 225
    const/4 v2, 0x5

    .line 226
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->K(I)V

    .line 231
    .line 232
    .line 233
    const-string v1, "discoverHorizontalVideoPreviewEnable"

    .line 234
    .line 235
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->t(Z)V

    .line 240
    .line 241
    .line 242
    const-string v1, "immersionFullScreenNativeEnable"

    .line 243
    .line 244
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->z(Z)V

    .line 249
    .line 250
    .line 251
    const-string v1, "immersionPreRollEnable"

    .line 252
    .line 253
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->D(Z)V

    .line 258
    .line 259
    .line 260
    const-string v1, "immersionPreRollUnlockCount"

    .line 261
    .line 262
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->E(I)V

    .line 267
    .line 268
    .line 269
    const-string v1, "immersionPostRollEnable"

    .line 270
    .line 271
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->B(Z)V

    .line 276
    .line 277
    .line 278
    const-string v1, "immersionPostRollUnlockCount"

    .line 279
    .line 280
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->C(I)V

    .line 285
    .line 286
    .line 287
    const-string v1, "immersionMediaVideoLoadTimeout"

    .line 288
    .line 289
    const/16 v2, 0x7d0

    .line 290
    .line 291
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->A(I)V

    .line 296
    .line 297
    .line 298
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 3
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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->g(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p2

    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "init json failed "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "-> "

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "AdActionCountJsonConfigure"

    .line 44
    .line 45
    invoke-virtual {v0, p2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    :goto_0
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public b(Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->a:Lcom/startshorts/androidplayer/manager/ad/AdHelper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p0, p1}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->h(Ljava/lang/String;Lme/b;Lrs/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p1
.end method

.method public c(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/startshorts/androidplayer/manager/configure/ad/a;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public d(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/content/Context;
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
            "Landroid/content/Context;",
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
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->a:Lcom/startshorts/androidplayer/manager/ad/AdHelper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p1, v1, p0, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->g(Landroid/content/Context;Ljava/lang/String;Lme/b;Lrs/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->b:Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->b:Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
