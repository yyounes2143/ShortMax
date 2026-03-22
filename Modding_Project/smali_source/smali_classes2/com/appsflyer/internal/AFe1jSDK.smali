.class public abstract Lcom/appsflyer/internal/AFe1jSDK;
.super Lcom/appsflyer/internal/AFe1fSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1fSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final component2:Lcom/appsflyer/internal/AFe1pSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final copy:Lcom/appsflyer/internal/AFc1qSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final copydefault:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final equals:Lcom/appsflyer/internal/AFc1oSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hashCode:Lcom/appsflyer/internal/AFg1nSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final toString:Lcom/appsflyer/internal/AFf1fSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFe1pSDK;[Lcom/appsflyer/internal/AFe1pSDK;Lcom/appsflyer/internal/AFd1zSDK;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFe1pSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lcom/appsflyer/internal/AFe1pSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1pSDK;",
            "[",
            "Lcom/appsflyer/internal/AFe1pSDK;",
            "Lcom/appsflyer/internal/AFd1zSDK;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p4, ""

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/appsflyer/internal/AFe1fSDK;-><init>(Lcom/appsflyer/internal/AFe1pSDK;[Lcom/appsflyer/internal/AFe1pSDK;Lcom/appsflyer/internal/AFd1zSDK;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1jSDK;->component2:Lcom/appsflyer/internal/AFe1pSDK;

    .line 20
    .line 21
    iput-object p5, p0, Lcom/appsflyer/internal/AFe1jSDK;->copydefault:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1jSDK;->equals:Lcom/appsflyer/internal/AFc1oSDK;

    .line 31
    .line 32
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1zSDK;->component4()Lcom/appsflyer/internal/AFc1qSDK;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1jSDK;->copy:Lcom/appsflyer/internal/AFc1qSDK;

    .line 40
    .line 41
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1zSDK;->component3()Lcom/appsflyer/internal/AFg1nSDK;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1jSDK;->hashCode:Lcom/appsflyer/internal/AFg1nSDK;

    .line 49
    .line 50
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1zSDK;->afDebugLog()Lcom/appsflyer/internal/AFf1fSDK;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1jSDK;->toString:Lcom/appsflyer/internal/AFf1fSDK;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method protected final AFAdRevenueData(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1jSDK;->copydefault:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFe1jSDK;->getCurrencyIso4217Code(Ljava/util/Map;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFe1jSDK;->getMonetizationNetwork(Ljava/util/Map;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v1}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v1, v2}, Lcom/appsflyer/internal/AFe1jSDK;->getMonetizationNetwork(Ljava/util/Map;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v5, p0, Lcom/appsflyer/internal/AFe1jSDK;->equals:Lcom/appsflyer/internal/AFc1oSDK;

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/appsflyer/internal/AFc1oSDK;->areAllFieldsValid()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    invoke-static {v5}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v6, "advertising_id"

    .line 48
    .line 49
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/appsflyer/internal/AFe1jSDK;->equals:Lcom/appsflyer/internal/AFc1oSDK;

    .line 53
    .line 54
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1hSDK;

    .line 55
    .line 56
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v5}, Lcom/appsflyer/internal/AFb1lSDK;->getMediationNetwork(Landroid/content/Context;)Lcom/appsflyer/internal/AFb1jSDK;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/4 v6, 0x0

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    iget-object v5, v5, Lcom/appsflyer/internal/AFb1jSDK;->getRevenue:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v5, v6

    .line 69
    :goto_1
    if-eqz v5, :cond_4

    .line 70
    .line 71
    invoke-static {v5}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const-string v7, "oaid"

    .line 79
    .line 80
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/appsflyer/internal/AFe1jSDK;->equals:Lcom/appsflyer/internal/AFc1oSDK;

    .line 84
    .line 85
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1hSDK;

    .line 86
    .line 87
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v5}, Lcom/appsflyer/internal/AFb1lSDK;->l_(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFb1jSDK;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-eqz v5, :cond_5

    .line 98
    .line 99
    iget-object v5, v5, Lcom/appsflyer/internal/AFb1jSDK;->getRevenue:Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    move-object v5, v6

    .line 103
    :goto_3
    if-eqz v5, :cond_7

    .line 104
    .line 105
    invoke-static {v5}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_6

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_6
    const-string v7, "amazon_aid"

    .line 113
    .line 114
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_4
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    const/4 v7, 0x0

    .line 122
    const-string v8, "deviceTrackingDisabled"

    .line 123
    .line 124
    invoke-virtual {v5, v8, v7}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_9

    .line 129
    .line 130
    iget-object v5, p0, Lcom/appsflyer/internal/AFe1fSDK;->component1:Lcom/appsflyer/internal/AFf1eSDK;

    .line 131
    .line 132
    iget-object v7, p0, Lcom/appsflyer/internal/AFe1jSDK;->copy:Lcom/appsflyer/internal/AFc1qSDK;

    .line 133
    .line 134
    invoke-virtual {v5, v7}, Lcom/appsflyer/internal/AFf1eSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFc1qSDK;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    if-eqz v5, :cond_a

    .line 139
    .line 140
    invoke-static {v5}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_8

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_8
    const-string v7, "imei"

    .line 148
    .line 149
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_9
    const-string/jumbo v5, "true"

    .line 154
    .line 155
    .line 156
    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    :cond_a
    :goto_5
    iget-object v5, p0, Lcom/appsflyer/internal/AFe1jSDK;->equals:Lcom/appsflyer/internal/AFc1oSDK;

    .line 160
    .line 161
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    .line 162
    .line 163
    invoke-static {v5}, Lcom/appsflyer/internal/AFb1kSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1qSDK;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    if-nez v5, :cond_b

    .line 168
    .line 169
    move-object v5, v0

    .line 170
    :cond_b
    const-string v7, "appsflyer_id"

    .line 171
    .line 172
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 176
    .line 177
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    const-string v7, "os_version"

    .line 182
    .line 183
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-string v5, "sdk_version"

    .line 187
    .line 188
    const-string v7, "6.17.5"

    .line 189
    .line 190
    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    if-eqz v3, :cond_d

    .line 194
    .line 195
    invoke-static {v3}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_c

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_c
    const-string v5, "sdk_connector_version"

    .line 203
    .line 204
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    :cond_d
    :goto_6
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1jSDK;->hashCode:Lcom/appsflyer/internal/AFg1nSDK;

    .line 208
    .line 209
    iget-object v5, p0, Lcom/appsflyer/internal/AFe1jSDK;->component2:Lcom/appsflyer/internal/AFe1pSDK;

    .line 210
    .line 211
    invoke-interface {v3, v4, v5}, Lcom/appsflyer/internal/AFg1nSDK;->getMediationNetwork(Ljava/util/Map;Lcom/appsflyer/internal/AFe1pSDK;)V

    .line 212
    .line 213
    .line 214
    const-string v3, "device_data"

    .line 215
    .line 216
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1jSDK;->toString:Lcom/appsflyer/internal/AFf1fSDK;

    .line 220
    .line 221
    iget-object v4, p0, Lcom/appsflyer/internal/AFe1jSDK;->component2:Lcom/appsflyer/internal/AFe1pSDK;

    .line 222
    .line 223
    invoke-interface {v3, v1, v4}, Lcom/appsflyer/internal/AFf1fSDK;->getCurrencyIso4217Code(Ljava/util/Map;Lcom/appsflyer/internal/AFe1pSDK;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v1, p1, v2}, Lcom/appsflyer/internal/AFe1jSDK;->getRevenue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-eqz p1, :cond_e

    .line 231
    .line 232
    iget-object v2, p1, Lcom/appsflyer/internal/AFd1hSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFd1bSDK;

    .line 233
    .line 234
    if-eqz v2, :cond_e

    .line 235
    .line 236
    iget-object v6, v2, Lcom/appsflyer/internal/AFd1bSDK;->getMediationNetwork:Ljava/lang/String;

    .line 237
    .line 238
    :cond_e
    if-eqz v6, :cond_f

    .line 239
    .line 240
    new-instance v2, Lorg/json/JSONObject;

    .line 241
    .line 242
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v1, ": preparing data: "

    .line 258
    .line 259
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFg1aSDK;->getRevenue(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1fSDK;->component3:Lcom/appsflyer/internal/AFd1oSDK;

    .line 270
    .line 271
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-interface {v1, v6, v2}, Lcom/appsflyer/internal/AFd1oSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :cond_f
    return-object p1
.end method

.method protected final component2()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected component3()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected final copydefault()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected getCurrencyIso4217Code(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method protected getMonetizationNetwork(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getMonetizationNetwork(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1jSDK;->equals:Lcom/appsflyer/internal/AFc1oSDK;

    .line 3
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1hSDK;

    .line 4
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v1, "app_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    const-string v1, "cuid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1jSDK;->equals:Lcom/appsflyer/internal/AFc1oSDK;

    .line 10
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1oSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 11
    const-string v1, "app_version_name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1jSDK;->component3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1jSDK;->hashCode:Lcom/appsflyer/internal/AFg1nSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFg1nSDK;->getCurrencyIso4217Code()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "event_timestamp"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    .line 14
    const-string v0, "billing_lib_version"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public abstract getRevenue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
