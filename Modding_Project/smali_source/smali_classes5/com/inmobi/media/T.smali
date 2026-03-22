.class public final Lcom/inmobi/media/T;
.super Lcom/inmobi/media/N9;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/util/Map;

.field public final y:Lcom/inmobi/media/Z;

.field public final z:Lcom/inmobi/media/X9;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/ue;Ljava/lang/String;Lcom/inmobi/media/Z;Lcom/inmobi/media/X9;Lcom/inmobi/media/z5;Z)V
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    move-object v9, p3

    .line 3
    move-object v10, p4

    .line 4
    const-string v0, "adPlacement"

    .line 5
    .line 6
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v6, "application/x-www-form-urlencoded"

    .line 11
    .line 12
    const-string v1, "POST"

    .line 13
    .line 14
    move-object v0, p0

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move-object/from16 v5, p6

    .line 18
    .line 19
    move/from16 v7, p7

    .line 20
    .line 21
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/ue;ZLcom/inmobi/media/z5;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iput-object v10, v8, Lcom/inmobi/media/T;->y:Lcom/inmobi/media/Z;

    .line 25
    .line 26
    move-object/from16 v0, p5

    .line 27
    .line 28
    iput-object v0, v8, Lcom/inmobi/media/T;->z:Lcom/inmobi/media/X9;

    .line 29
    .line 30
    const-string v0, "json"

    .line 31
    .line 32
    iput-object v0, v8, Lcom/inmobi/media/T;->A:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, v8, Lcom/inmobi/media/N9;->m:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v0, v8, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-static {}, Lcom/inmobi/media/U3;->c()Ljava/util/HashMap;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lcom/inmobi/media/e1;->b:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    const-string v2, "u-appIS"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    :cond_0
    invoke-virtual {p4}, Lcom/inmobi/media/Z;->d()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "client-request-id"

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    if-eqz v9, :cond_1

    .line 73
    .line 74
    const-string v1, "u-appcache"

    .line 75
    .line 76
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_1
    const-string v1, "sdk-flavor"

    .line 80
    .line 81
    const-string v2, "row"

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    const-string v0, "adType"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "banner"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/inmobi/media/v5;->c:Lcom/inmobi/media/v5;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/inmobi/media/v5;->a()Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string v0, "audio"

    .line 22
    .line 23
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_4

    .line 28
    .line 29
    sget-object p0, Lcom/inmobi/media/r5;->c:Lcom/inmobi/media/r5;

    .line 30
    .line 31
    new-instance v0, Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, Lcom/inmobi/media/S1;->a:J

    .line 37
    .line 38
    const-wide/16 v3, 0x3e8

    .line 39
    .line 40
    div-long/2addr v1, v3

    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    cmp-long v3, v1, v3

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    const-string v3, "a-lastAudioPlayedTs"

    .line 48
    .line 49
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    :cond_1
    iget p0, p0, Lcom/inmobi/media/S1;->b:I

    .line 57
    .line 58
    if-lez p0, :cond_2

    .line 59
    .line 60
    const-string v1, "a-audioFreq"

    .line 61
    .line 62
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    const-string v1, "audio_pref_file"

    .line 78
    .line 79
    invoke-static {p0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string v1, "key"

    .line 84
    .line 85
    const-string v2, "user_mute_count"

    .line 86
    .line 87
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 91
    .line 92
    const/4 v1, -0x1

    .line 93
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-lez p0, :cond_3

    .line 98
    .line 99
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string v1, "a-umc"

    .line 104
    .line 105
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    :cond_3
    return-object v0

    .line 109
    :cond_4
    new-instance p0, Lorg/json/JSONObject;

    .line 110
    .line 111
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .line 113
    .line 114
    return-object p0
.end method


# virtual methods
.method public final f()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/N9;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 5
    .line 6
    if-eqz v0, :cond_29

    .line 7
    .line 8
    invoke-static {}, Lcom/inmobi/media/ze;->a()Lcom/inmobi/media/Ae;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, v1, Lcom/inmobi/media/Ae;->a:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v3, "ufid"

    .line 17
    .line 18
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    :cond_0
    iget-boolean v1, v1, Lcom/inmobi/media/Ae;->b:Z

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "is-unifid-service-used"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/inmobi/media/T;->A:Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "format"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/inmobi/media/T;->B:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const-string v2, "adtype"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    :cond_1
    sget-object v1, Lcom/inmobi/media/X6;->a:Lcom/inmobi/media/X6;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/inmobi/media/X6;->b()Ljava/util/HashMap;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/inmobi/media/X6;->c()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const-string v3, "DENIED"

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-static {}, Lcom/inmobi/media/X6;->e()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    const-string v3, "AUTHORISED"

    .line 83
    .line 84
    :cond_2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 85
    .line 86
    const-string v4, "ENGLISH"

    .line 87
    .line 88
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v3, "this as java.lang.String).toLowerCase(locale)"

    .line 96
    .line 97
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v3, "loc-consent-status"

    .line 101
    .line 102
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/inmobi/media/h2;->a()Ljava/util/HashMap;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/inmobi/media/h2;->b()Ljava/util/HashMap;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lcom/inmobi/media/h2;->c()Ljava/util/HashMap;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/inmobi/media/T;->z:Lcom/inmobi/media/X9;

    .line 130
    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    iget-object v1, v1, Lcom/inmobi/media/X9;->a:Ljava/util/Map;

    .line 134
    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 138
    .line 139
    .line 140
    :cond_3
    sget-object v1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/inmobi/media/N9;->m:Ljava/lang/String;

    .line 143
    .line 144
    const-string v2, "signals"

    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    invoke-static {v2, v1, v3}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    instance-of v4, v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 152
    .line 153
    if-eqz v4, :cond_4

    .line 154
    .line 155
    check-cast v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_4
    move-object v1, v3

    .line 159
    :goto_0
    const/4 v4, 0x0

    .line 160
    const-string v5, "toString(...)"

    .line 161
    .line 162
    const/4 v6, 0x1

    .line 163
    if-eqz v1, :cond_5

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getPublisherConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-eqz v1, :cond_5

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->getEnableMCO()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-ne v1, v6, :cond_5

    .line 176
    .line 177
    sget-object v1, Lcom/inmobi/media/Ya;->a:Lcom/inmobi/media/Ya;

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    sget-object v7, Lcom/inmobi/media/Ya;->d:Lcom/inmobi/media/x1;

    .line 183
    .line 184
    sget-object v8, Lcom/inmobi/media/Ya;->b:[Lkotlin/reflect/KProperty;

    .line 185
    .line 186
    aget-object v8, v8, v4

    .line 187
    .line 188
    invoke-virtual {v7, v1, v8}, Lcom/inmobi/media/x1;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Lorg/json/JSONObject;

    .line 193
    .line 194
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-lez v7, :cond_5

    .line 199
    .line 200
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v7, "extData"

    .line 208
    .line 209
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    .line 213
    .line 214
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 215
    .line 216
    .line 217
    sget-object v7, Lcom/inmobi/media/F2;->a:Ljava/util/HashMap;

    .line 218
    .line 219
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lcom/inmobi/media/T;->C:Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v1, :cond_6

    .line 228
    .line 229
    const-string v7, "p-keywords"

    .line 230
    .line 231
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Ljava/lang/String;

    .line 236
    .line 237
    :cond_6
    iget-object v1, p0, Lcom/inmobi/media/T;->y:Lcom/inmobi/media/Z;

    .line 238
    .line 239
    invoke-virtual {v1}, Lcom/inmobi/media/Z;->j()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    const-string v7, "others"

    .line 244
    .line 245
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_7

    .line 250
    .line 251
    const-string v1, "M10N_CONTEXT_OTHER"

    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_7
    const-string v1, "M10N_CONTEXT_ACTIVITY"

    .line 255
    .line 256
    :goto_1
    const-string v7, "m10n_context"

    .line 257
    .line 258
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/inmobi/media/T;->y:Lcom/inmobi/media/Z;

    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/inmobi/media/Z;->f()Ljava/util/Map;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    if-eqz v1, :cond_9

    .line 268
    .line 269
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    if-eqz v7, :cond_9

    .line 282
    .line 283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    check-cast v7, Ljava/util/Map$Entry;

    .line 288
    .line 289
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    check-cast v8, Ljava/lang/String;

    .line 294
    .line 295
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    check-cast v7, Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    if-nez v9, :cond_8

    .line 306
    .line 307
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_9
    iget-object v1, p0, Lcom/inmobi/media/T;->D:Ljava/util/Map;

    .line 312
    .line 313
    if-eqz v1, :cond_a

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 316
    .line 317
    .line 318
    :cond_a
    iget-object v1, p0, Lcom/inmobi/media/T;->y:Lcom/inmobi/media/Z;

    .line 319
    .line 320
    invoke-virtual {v1}, Lcom/inmobi/media/Z;->g()J

    .line 321
    .line 322
    .line 323
    move-result-wide v7

    .line 324
    const-wide/high16 v9, -0x8000000000000000L

    .line 325
    .line 326
    cmp-long v1, v7, v9

    .line 327
    .line 328
    if-eqz v1, :cond_b

    .line 329
    .line 330
    iget-object v1, p0, Lcom/inmobi/media/T;->y:Lcom/inmobi/media/Z;

    .line 331
    .line 332
    invoke-virtual {v1}, Lcom/inmobi/media/Z;->g()J

    .line 333
    .line 334
    .line 335
    move-result-wide v7

    .line 336
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    const-string v7, "im-plid"

    .line 341
    .line 342
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    :cond_b
    iget-object v1, p0, Lcom/inmobi/media/T;->y:Lcom/inmobi/media/Z;

    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/inmobi/media/Z;->h()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    const-string v7, "int-origin"

    .line 352
    .line 353
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    sget-object v1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 357
    .line 358
    iget-object v1, p0, Lcom/inmobi/media/N9;->m:Ljava/lang/String;

    .line 359
    .line 360
    invoke-static {v2, v1, v3}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    instance-of v2, v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 365
    .line 366
    if-eqz v2, :cond_c

    .line 367
    .line 368
    check-cast v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_c
    move-object v1, v3

    .line 372
    :goto_3
    if-eqz v1, :cond_d

    .line 373
    .line 374
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getExt()Lorg/json/JSONObject;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    goto :goto_4

    .line 379
    :cond_d
    move-object v1, v3

    .line 380
    :goto_4
    if-eqz v1, :cond_e

    .line 381
    .line 382
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    if-lez v2, :cond_e

    .line 387
    .line 388
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    const-string v2, "im-ext"

    .line 396
    .line 397
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    :cond_e
    sget-object v1, Lcom/inmobi/media/db;->a:Ljava/lang/String;

    .line 401
    .line 402
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 403
    .line 404
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 405
    .line 406
    .line 407
    sget-object v2, Lcom/inmobi/media/db;->a:Ljava/lang/String;

    .line 408
    .line 409
    if-eqz v2, :cond_f

    .line 410
    .line 411
    const-string v7, "u-nip"

    .line 412
    .line 413
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    goto :goto_5

    .line 417
    :cond_f
    move-object v1, v3

    .line 418
    :goto_5
    if-eqz v1, :cond_10

    .line 419
    .line 420
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 421
    .line 422
    .line 423
    :cond_10
    sget-object v1, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 424
    .line 425
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->y()Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-eqz v2, :cond_11

    .line 430
    .line 431
    invoke-static {}, Lcom/inmobi/media/U3;->e()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    if-eqz v2, :cond_11

    .line 436
    .line 437
    const-string v7, "d-device-gesture-margins"

    .line 438
    .line 439
    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    :cond_11
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-static {v2}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    if-eqz v2, :cond_13

    .line 451
    .line 452
    iget-object v2, p0, Lcom/inmobi/media/N9;->m:Ljava/lang/String;

    .line 453
    .line 454
    const-string v7, "ads"

    .line 455
    .line 456
    invoke-static {v7, v2, v3}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    instance-of v7, v2, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 461
    .line 462
    if-eqz v7, :cond_12

    .line 463
    .line 464
    check-cast v2, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 465
    .line 466
    goto :goto_6

    .line 467
    :cond_12
    move-object v2, v3

    .line 468
    :goto_6
    if-eqz v2, :cond_13

    .line 469
    .line 470
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig;->isCCTEnabled()Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-ne v2, v6, :cond_13

    .line 475
    .line 476
    move v2, v6

    .line 477
    goto :goto_7

    .line 478
    :cond_13
    move v2, v4

    .line 479
    :goto_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    const-string v7, "cct-enabled"

    .line 484
    .line 485
    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    sget-object v2, Lcom/inmobi/media/f0;->c:Lms/i;

    .line 489
    .line 490
    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v7

    .line 494
    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 495
    .line 496
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 497
    .line 498
    .line 499
    move-result v7

    .line 500
    if-nez v7, :cond_14

    .line 501
    .line 502
    new-instance v7, Lorg/json/JSONArray;

    .line 503
    .line 504
    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 509
    .line 510
    invoke-direct {v7, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    const-string v7, "u-r-crid"

    .line 521
    .line 522
    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    :cond_14
    iget-object v2, p0, Lcom/inmobi/media/T;->B:Ljava/lang/String;

    .line 526
    .line 527
    if-eqz v2, :cond_15

    .line 528
    .line 529
    invoke-static {v2}, Lcom/inmobi/media/T;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 530
    .line 531
    .line 532
    move-result-object v7

    .line 533
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    .line 534
    .line 535
    .line 536
    move-result v7

    .line 537
    if-lez v7, :cond_15

    .line 538
    .line 539
    invoke-static {v2}, Lcom/inmobi/media/T;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    const-string v7, "audioObject"

    .line 551
    .line 552
    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    :cond_15
    invoke-static {}, Lcom/inmobi/media/ab;->a()Ljava/util/HashMap;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 560
    .line 561
    .line 562
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    const-string v7, ""

    .line 567
    .line 568
    if-eqz v2, :cond_18

    .line 569
    .line 570
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    new-instance v8, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .line 578
    .line 579
    if-eqz v2, :cond_16

    .line 580
    .line 581
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v9

    .line 585
    goto :goto_8

    .line 586
    :cond_16
    move-object v9, v3

    .line 587
    :goto_8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v9, "_preferences"

    .line 591
    .line 592
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v8

    .line 599
    if-eqz v2, :cond_17

    .line 600
    .line 601
    invoke-virtual {v2, v8, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    :cond_17
    if-eqz v3, :cond_18

    .line 606
    .line 607
    const-string v2, "IABGPP_HDR_GppString"

    .line 608
    .line 609
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    if-ne v4, v6, :cond_18

    .line 614
    .line 615
    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    goto :goto_9

    .line 624
    :cond_18
    move-object v2, v7

    .line 625
    :goto_9
    invoke-static {v2}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    .line 626
    .line 627
    .line 628
    move-result v3

    .line 629
    if-eqz v3, :cond_19

    .line 630
    .line 631
    const-string v3, "gpp"

    .line 632
    .line 633
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    :cond_19
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->i()Lkotlin/Pair;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    const-string v3, "<this>"

    .line 641
    .line 642
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    if-eqz v2, :cond_1a

    .line 646
    .line 647
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v4

    .line 651
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    :cond_1a
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->k()Lkotlin/Pair;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    if-eqz v2, :cond_1b

    .line 666
    .line 667
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    :cond_1b
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->c()Lkotlin/Pair;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    if-eqz v2, :cond_1c

    .line 686
    .line 687
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v4

    .line 691
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    :cond_1c
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->f()Lkotlin/Pair;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    if-eqz v2, :cond_1d

    .line 706
    .line 707
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v4

    .line 711
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    :cond_1d
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->t()Lkotlin/Pair;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    if-eqz v2, :cond_1e

    .line 726
    .line 727
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    :cond_1e
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->d()Lkotlin/Pair;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    if-eqz v2, :cond_1f

    .line 746
    .line 747
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v4

    .line 751
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    :cond_1f
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->u()Lkotlin/Pair;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    if-eqz v2, :cond_20

    .line 766
    .line 767
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    :cond_20
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->g()Lkotlin/Pair;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    if-eqz v2, :cond_21

    .line 786
    .line 787
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    :cond_21
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->h()Lkotlin/Pair;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    if-eqz v2, :cond_22

    .line 806
    .line 807
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v4

    .line 811
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v2

    .line 815
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    :cond_22
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->b()Lkotlin/Pair;

    .line 819
    .line 820
    .line 821
    move-result-object v2

    .line 822
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    if-eqz v2, :cond_23

    .line 826
    .line 827
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v4

    .line 831
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v2

    .line 835
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    :cond_23
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->j()Lkotlin/Pair;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    if-eqz v1, :cond_24

    .line 846
    .line 847
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    :cond_24
    sget-object v1, Lcom/inmobi/media/g1;->a:Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 859
    .line 860
    const-string v1, "mutableMap"

    .line 861
    .line 862
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-static {}, Lcom/inmobi/media/g1;->a()Z

    .line 866
    .line 867
    .line 868
    move-result v1

    .line 869
    if-nez v1, :cond_25

    .line 870
    .line 871
    goto :goto_a

    .line 872
    :cond_25
    sget-object v1, Lcom/inmobi/media/g1;->a:Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 873
    .line 874
    if-eqz v1, :cond_26

    .line 875
    .line 876
    invoke-virtual {v1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    const-string v3, "getId(...)"

    .line 881
    .line 882
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    const-string v3, "d-app-set-id"

    .line 886
    .line 887
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    .line 891
    .line 892
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    .line 896
    .line 897
    .line 898
    move-result v1

    .line 899
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    const-string v2, "d-app-set-scope"

    .line 907
    .line 908
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    check-cast v1, Ljava/lang/String;

    .line 913
    .line 914
    :cond_26
    :goto_a
    invoke-static {}, Lcom/inmobi/media/h3;->d()Z

    .line 915
    .line 916
    .line 917
    move-result v1

    .line 918
    if-eqz v1, :cond_28

    .line 919
    .line 920
    const-string v1, "ik"

    .line 921
    .line 922
    sget-object v2, Lcom/inmobi/media/h3;->g:Ljava/lang/String;

    .line 923
    .line 924
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    invoke-static {}, Lcom/inmobi/media/h3;->c()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    const-string v2, "c_data"

    .line 932
    .line 933
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    .line 937
    .line 938
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 942
    .line 943
    .line 944
    move-result-object v2

    .line 945
    if-eqz v2, :cond_27

    .line 946
    .line 947
    sget-object v3, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 948
    .line 949
    const-string v3, "c_data_store"

    .line 950
    .line 951
    invoke-static {v2, v3}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 952
    .line 953
    .line 954
    move-result-object v2

    .line 955
    const-string v3, "key"

    .line 956
    .line 957
    const-string v4, "akv"

    .line 958
    .line 959
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    iget-object v2, v2, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 963
    .line 964
    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 965
    .line 966
    .line 967
    move-result v6

    .line 968
    :cond_27
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    const-string v2, "aKV"

    .line 976
    .line 977
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    :cond_28
    sget-object v1, Lcom/inmobi/media/Zc;->a:Lcom/inmobi/media/Zc;

    .line 981
    .line 982
    invoke-virtual {v1}, Lcom/inmobi/media/Zc;->b()Lorg/json/JSONObject;

    .line 983
    .line 984
    .line 985
    move-result-object v1

    .line 986
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 987
    .line 988
    .line 989
    move-result v2

    .line 990
    if-lez v2, :cond_29

    .line 991
    .line 992
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v1

    .line 996
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    const-string v2, "sData"

    .line 1000
    .line 1001
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    :cond_29
    return-void
.end method
