.class public final Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;
.super Ljava/lang/Object;
.source "TesterConfigFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTesterConfigFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TesterConfigFactory.kt\ncom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,174:1\n1#2:175\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TesterConfigFactory"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final actLoadingTimeConfig:Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final adLoadingTimeConfig:Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final mConfigsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static preloadAdEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->INSTANCE:Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->mConfigsList:Ljava/util/List;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    sput-boolean v1, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->preloadAdEnable:Z

    .line 17
    .line 18
    new-instance v1, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;

    .line 19
    .line 20
    const-string/jumbo v2, "test_config_ad_min_loading_time"

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->adLoadingTimeConfig:Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;

    .line 27
    .line 28
    new-instance v1, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;

    .line 29
    .line 30
    const-string/jumbo v2, "test_config_act_min_loading_time"

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->actLoadingTimeConfig:Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;

    .line 37
    .line 38
    const-string v1, "noflow"

    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v3, "gray"

    .line 47
    .line 48
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "api"

    .line 53
    .line 54
    invoke-static {v4, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    filled-new-array {v1, v3, v4}, [Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v3, Ltd/a;

    .line 67
    .line 68
    invoke-direct {v3}, Ltd/a;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v4, "URL_API"

    .line 72
    .line 73
    invoke-direct {v0, v4, v1, v3}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->createOptionsForTester(Ljava/lang/String;Ljava/util/Map;Lat/n;)Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 74
    .line 75
    .line 76
    const-string/jumbo v1, "\u542f\u7528"

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string/jumbo v3, "\u7981\u7528"

    .line 84
    .line 85
    .line 86
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    filled-new-array {v1, v3}, [Lkotlin/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v3, Ltd/b;

    .line 99
    .line 100
    invoke-direct {v3}, Ltd/b;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string/jumbo v4, "\u5e7f\u544a\u9884\u52a0\u8f7d"

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v4, v1, v3}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->createOptionsForTester(Ljava/lang/String;Ljava/util/Map;Lat/n;)Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 107
    .line 108
    .line 109
    const-string/jumbo v1, "\u5207\u6362"

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string/jumbo v3, "\u53d6\u6d88"

    .line 117
    .line 118
    .line 119
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    filled-new-array {v1, v4}, [Lkotlin/Pair;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    new-instance v4, Ltd/c;

    .line 132
    .line 133
    invoke-direct {v4}, Ltd/c;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string/jumbo v5, "\u5207\u6362\u6210\u65b0\u8d26\u53f7"

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, v5, v1, v4}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->createOptionsForTester(Ljava/lang/String;Ljava/util/Map;Lat/n;)Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 140
    .line 141
    .line 142
    const-string/jumbo v1, "\u6e05\u9664"

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    filled-new-array {v4, v5}, [Lkotlin/Pair;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v4}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    new-instance v5, Ltd/d;

    .line 162
    .line 163
    invoke-direct {v5}, Ltd/d;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string/jumbo v6, "\u6e05\u9664\u6240\u6709\u4e0b\u8f7d\u6570\u636e"

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v6, v4, v5}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->createOptionsForTester(Ljava/lang/String;Ljava/util/Map;Lat/n;)Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    filled-new-array {v1, v2}, [Lkotlin/Pair;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {v1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    new-instance v2, Ltd/e;

    .line 189
    .line 190
    invoke-direct {v2}, Ltd/e;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string/jumbo v3, "\u6e05\u9664\u6240\u6709\u7684\u5b57\u5e55\u6587\u4ef6"

    .line 194
    .line 195
    .line 196
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->createOptionsForTester(Ljava/lang/String;Ljava/util/Map;Lat/n;)Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 197
    .line 198
    .line 199
    const-string v1, "expiring_soon"

    .line 200
    .line 201
    const-string v2, "bonunsWillExpiry:\u5956\u52b1\u5373\u5c06\u8fc7\u671f"

    .line 202
    .line 203
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    const-string v1, "check_in_alert"

    .line 208
    .line 209
    const-string v2, "CheckIn:\u7b7e\u5230\u63d0\u9192"

    .line 210
    .line 211
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    const-string v1, "customer:H5"

    .line 216
    .line 217
    const-string v2, "Customer:\u81ea\u5b9a\u4e49H5"

    .line 218
    .line 219
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    const-string v1, "customer:Short"

    .line 224
    .line 225
    const-string v2, "Customer:\u81ea\u5b9a\u4e49\u77ed\u5267"

    .line 226
    .line 227
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    const-string v1, "miss_check_in"

    .line 232
    .line 233
    const-string v2, "MissingCheckIn\uff1a\u9519\u8fc7\u81ea\u52a8\u7b7e\u5230"

    .line 234
    .line 235
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    const-string v1, "reel_update"

    .line 240
    .line 241
    const-string v2, "NewShort\uff1a\u65b0\u5267\u4e0a\u65b0"

    .line 242
    .line 243
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    const-string v1, "active_push"

    .line 248
    .line 249
    const-string v2, "RecommendShort\uff1a\u56fa\u5b9a\u63a8\u9001"

    .line 250
    .line 251
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    const-string/jumbo v1, "start_charging"

    .line 256
    .line 257
    .line 258
    const-string v2, "StartRecharging\uff1a\u8bf1\u5bfc\u6536\u8d39"

    .line 259
    .line 260
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    const-string/jumbo v1, "subscribe"

    .line 265
    .line 266
    .line 267
    const-string v2, "SubBonus\uff1a\u8ba2\u9605\u767b\u5f55"

    .line 268
    .line 269
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    filled-new-array/range {v3 .. v11}, [Lkotlin/Pair;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-static {v1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    new-instance v2, Ltd/f;

    .line 282
    .line 283
    invoke-direct {v2}, Ltd/f;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string/jumbo v3, "\u6d4b\u8bd5push"

    .line 287
    .line 288
    .line 289
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->createOptionsForTester(Ljava/lang/String;Ljava/util/Map;Lat/n;)Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 290
    .line 291
    .line 292
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

.method private static final _init_$lambda$1(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "selectedValue"

    .line 12
    .line 13
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p0, "api"

    .line 17
    .line 18
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    sget-object p1, Lud/b;->a:Lud/b;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lud/b;->I2(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "gray"

    .line 31
    .line 32
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    sget-object p0, Lud/b;->a:Lud/b;

    .line 39
    .line 40
    const-string p1, "api-gray"

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lud/b;->I2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object p0, Lud/b;->a:Lud/b;

    .line 47
    .line 48
    const-string p1, "api-noflow"

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lud/b;->I2(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method private static final _init_$lambda$2(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "selectedValue"

    .line 12
    .line 13
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo p0, "\u542f\u7528"

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    sput-boolean p0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->preloadAdEnable:Z

    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final _init_$lambda$4(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "selectedValue"

    .line 12
    .line 13
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo p1, "\u5207\u6362"

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 26
    .line 27
    new-instance p2, Ltd/g;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Ltd/g;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->T(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method private static final _init_$lambda$5(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "selectedValue"

    .line 12
    .line 13
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo p0, "\u6e05\u9664"

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    sget-object p0, Luh/i0;->a:Luh/i0;

    .line 26
    .line 27
    invoke-virtual {p0}, Luh/i0;->b()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    sget-object p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->t()V

    .line 36
    .line 37
    .line 38
    sget-object p0, Luh/l1;->a:Luh/l1;

    .line 39
    .line 40
    invoke-virtual {p0}, Luh/l1;->g()V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method private static final _init_$lambda$6(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "selectedValue"

    .line 12
    .line 13
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo p0, "\u6e05\u9664"

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    sget-object p0, Luh/i0;->a:Luh/i0;

    .line 26
    .line 27
    invoke-virtual {p0}, Luh/i0;->b()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    sget-object p0, Luh/l1;->a:Luh/l1;

    .line 34
    .line 35
    invoke-virtual {p0}, Luh/l1;->g()V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private static final _init_$lambda$7(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "selectedValue"

    .line 12
    .line 13
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const-string p1, ""

    .line 21
    .line 22
    sparse-switch p0, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :sswitch_0
    const-string p0, "reel_update"

    .line 28
    .line 29
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    sget-object p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 38
    .line 39
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->NEW_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 40
    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->b(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :sswitch_1
    const-string p0, "customer:Short"

    .line 47
    .line 48
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_1

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_1
    sget-object p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 57
    .line 58
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/task/PushType;->CUSTOM:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 59
    .line 60
    const-string/jumbo p2, "short"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->b(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :sswitch_2
    const-string/jumbo p0, "subscribe"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_2

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_2
    sget-object p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 80
    .line 81
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->SUBS_BONUS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 82
    .line 83
    invoke-virtual {p0, p2, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->b(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :sswitch_3
    const-string p0, "expiring_soon"

    .line 89
    .line 90
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    sget-object p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 98
    .line 99
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->BONUS_WILL_EXPIRED:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 100
    .line 101
    invoke-virtual {p0, p2, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->b(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :sswitch_4
    const-string p0, "check_in_alert"

    .line 106
    .line 107
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_4

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    sget-object p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 115
    .line 116
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 117
    .line 118
    invoke-virtual {p0, p2, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->b(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :sswitch_5
    const-string/jumbo p0, "start_charging"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_5

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    sget-object p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 133
    .line 134
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->START_RECHARGING:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 135
    .line 136
    invoke-virtual {p0, p2, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->b(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :sswitch_6
    const-string p0, "active_push"

    .line 141
    .line 142
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-nez p0, :cond_6

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_6
    sget-object p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 150
    .line 151
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->RECOMMEND_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 152
    .line 153
    invoke-virtual {p0, p2, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->b(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :sswitch_7
    const-string p0, "miss_check_in"

    .line 158
    .line 159
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-nez p0, :cond_7

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_7
    sget-object p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 167
    .line 168
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->MISS_CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 169
    .line 170
    invoke-virtual {p0, p2, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->b(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :sswitch_8
    const-string p0, "customer:H5"

    .line 175
    .line 176
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-nez p0, :cond_8

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_8
    sget-object p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 184
    .line 185
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/task/PushType;->CUSTOM:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 186
    .line 187
    const-string p2, "h5"

    .line 188
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->b(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 193
    .line 194
    return-object p0

    .line 195
    :sswitch_data_0
    .sparse-switch
        -0x69a011f7 -> :sswitch_8
        -0x499f0861 -> :sswitch_7
        -0x3eaba34d -> :sswitch_6
        -0x31926252 -> :sswitch_5
        -0x672c0e7 -> :sswitch_4
        0x1d1ad17e -> :sswitch_3
        0x1eafdd4a -> :sswitch_2
        0x462949c0 -> :sswitch_1
        0x70402a8e -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->_init_$lambda$5(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->_init_$lambda$6(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->_init_$lambda$1(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final createOptionsForTester(Ljava/lang/String;Ljava/util/Map;Lat/n;)Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lat/n<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->setTitle(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->setOptions(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->mConfigsList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    new-instance p1, Ltd/h;

    .line 18
    .line 19
    invoke-direct {p1, p3, v0}, Ltd/h;-><init>(Lat/n;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->setAfterNotABSelected(Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method private static final createOptionsForTester$lambda$10$lambda$9(Lat/n;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Landroid/content/Context;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->getSelectedValue()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    :cond_0
    invoke-interface {p0, p2, p1, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static synthetic d(Lat/n;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Landroid/content/Context;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->createOptionsForTester$lambda$10$lambda$9(Lat/n;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Landroid/content/Context;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->lambda$4$lambda$3(Landroid/content/Context;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->_init_$lambda$7(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->_init_$lambda$4(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->_init_$lambda$2(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final lambda$4$lambda$3(Landroid/content/Context;)Lkotlin/Unit;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public final allConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->mConfigsList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getActLoadingTimeConfig()Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->actLoadingTimeConfig:Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdLoadingTimeConfig()Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->adLoadingTimeConfig:Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory$LoadingTimeConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConfigByTitle(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string/jumbo v0, "title"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->mConfigsList:Ljava/util/List;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->getTitle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 41
    .line 42
    return-object v1
.end method

.method public final getPreloadAdEnable()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->preloadAdEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setPreloadAdEnable(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->preloadAdEnable:Z

    .line 2
    .line 3
    return-void
.end method
