.class public final Lcom/google/android/gms/internal/ads/zzbks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdwf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbks;->zza:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 5
    .line 6
    return-void
.end method

.method private static final zzb(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "request_origin"

    .line 7
    .line 8
    const-string v2, "inspector_ooct"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "networkExtras"

    .line 14
    .line 15
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_6

    .line 20
    .line 21
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/String;

    .line 26
    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_6

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    instance-of v4, v3, Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    .line 65
    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    check-cast v3, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    instance-of v4, v3, Ljava/lang/Boolean;

    .line 79
    .line 80
    if-eqz v4, :cond_3

    .line 81
    .line 82
    check-cast v3, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    instance-of v4, v3, Ljava/lang/Float;

    .line 93
    .line 94
    if-eqz v4, :cond_4

    .line 95
    .line 96
    check-cast v3, Ljava/lang/Float;

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    instance-of v4, v3, Ljava/lang/Double;

    .line 107
    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    check-cast v3, Ljava/lang/Double;

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    instance-of v4, v3, Ljava/lang/Long;

    .line 121
    .line 122
    if-eqz v4, :cond_0

    .line 123
    .line 124
    check-cast v3, Ljava/lang/Long;

    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v3

    .line 130
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :goto_1
    const-string v1, "OutOfContextTestingGmsgHandler.generateNetworkExtras"

    .line 135
    .line 136
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    return-object v0
.end method

.method private static final zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    return-object p0

    .line 31
    :goto_1
    const-string v0, "OutOfContextTestingGmsgHandler.stringArrayToList."

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 9

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzjN:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_b

    .line 20
    .line 21
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdwg;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdwg;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "adUnitId"

    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwg;->zzi(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    const-string v0, "format"

    .line 44
    .line 45
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwg;->zzj(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzjP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 61
    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1f

    .line 77
    .line 78
    const-string v0, "isGamRequest"

    .line 79
    .line 80
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/4 v2, 0x0

    .line 85
    const-string v3, "1"

    .line 86
    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdwg;->zzk(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zzn()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 110
    .line 111
    const-string v2, "requestAgent"

    .line 112
    .line 113
    const-string v4, "contentUrl"

    .line 114
    .line 115
    const-string v5, "customTargeting"

    .line 116
    .line 117
    const-string v6, "neighboringContentUrlStrings"

    .line 118
    .line 119
    const-string v7, "keywords"

    .line 120
    .line 121
    if-eqz v0, :cond_b

    .line 122
    .line 123
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    .line 124
    .line 125
    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_4

    .line 133
    .line 134
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzbks;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-eqz v8, :cond_4

    .line 153
    .line 154
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    check-cast v8, Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v0, v8}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbks;->zzb(Ljava/util/Map;)Landroid/os/Bundle;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 169
    .line 170
    .line 171
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_5

    .line 176
    .line 177
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Ljava/lang/String;

    .line 182
    .line 183
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 184
    .line 185
    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-eqz v7, :cond_5

    .line 197
    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    check-cast v7, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :catch_0
    move-exception v1

    .line 213
    const-string v5, "OutOfContextTestingGmsgHandler.generateAdManagerAdRequest"

    .line 214
    .line 215
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    invoke-virtual {v7, v1, v5}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_5
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_6

    .line 227
    .line 228
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    check-cast v1, Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 235
    .line 236
    .line 237
    :cond_6
    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_7

    .line 242
    .line 243
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzbks;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setNeighboringContentUrls(Ljava/util/List;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 254
    .line 255
    .line 256
    :cond_7
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_8

    .line 261
    .line 262
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    check-cast v1, Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 269
    .line 270
    .line 271
    :cond_8
    const-string v1, "publisherProvidedId"

    .line 272
    .line 273
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_9

    .line 278
    .line 279
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->setPublisherProvidedId(Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    .line 286
    .line 287
    .line 288
    :cond_9
    const-string v1, "categoryExclusions"

    .line 289
    .line 290
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_a

    .line 295
    .line 296
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbks;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_a

    .line 315
    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    check-cast v2, Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCategoryExclusion(Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    .line 323
    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    goto/16 :goto_5

    .line 331
    .line 332
    :cond_b
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 333
    .line 334
    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v8

    .line 341
    if-eqz v8, :cond_c

    .line 342
    .line 343
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    check-cast v8, Ljava/lang/String;

    .line 348
    .line 349
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzbks;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    if-eqz v8, :cond_c

    .line 362
    .line 363
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    check-cast v8, Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v0, v8}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 370
    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_c
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbks;->zzb(Ljava/util/Map;)Landroid/os/Bundle;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 378
    .line 379
    .line 380
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-eqz v1, :cond_d

    .line 385
    .line 386
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    check-cast v1, Ljava/lang/String;

    .line 391
    .line 392
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    .line 393
    .line 394
    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result v7

    .line 405
    if-eqz v7, :cond_d

    .line 406
    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    check-cast v7, Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 418
    .line 419
    .line 420
    goto :goto_4

    .line 421
    :catch_1
    move-exception v1

    .line 422
    const-string v5, "OutOfContextTestingGmsgHandler.generateAdMobAdRequest"

    .line 423
    .line 424
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 425
    .line 426
    .line 427
    move-result-object v7

    .line 428
    invoke-virtual {v7, v1, v5}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    :cond_d
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    if-eqz v1, :cond_e

    .line 436
    .line 437
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    check-cast v1, Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 444
    .line 445
    .line 446
    :cond_e
    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-eqz v1, :cond_f

    .line 451
    .line 452
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    check-cast v1, Ljava/lang/String;

    .line 457
    .line 458
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzbks;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setNeighboringContentUrls(Ljava/util/List;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 463
    .line 464
    .line 465
    :cond_f
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-eqz v1, :cond_10

    .line 470
    .line 471
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    check-cast v1, Ljava/lang/String;

    .line 476
    .line 477
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 478
    .line 479
    .line 480
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    :goto_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwg;->zzg(Lcom/google/android/gms/ads/AdRequest;)V

    .line 485
    .line 486
    .line 487
    const-string v0, "width"

    .line 488
    .line 489
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    check-cast v0, Ljava/lang/String;

    .line 494
    .line 495
    const-string v1, "height"

    .line 496
    .line 497
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    check-cast v1, Ljava/lang/String;

    .line 502
    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    if-nez v2, :cond_12

    .line 508
    .line 509
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    if-eqz v2, :cond_11

    .line 514
    .line 515
    goto :goto_6

    .line 516
    :cond_11
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    .line 525
    .line 526
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 527
    .line 528
    .line 529
    goto :goto_7

    .line 530
    :catch_2
    move-exception v0

    .line 531
    const-string v1, "OutOfContextTestingGmsgHandler.generateAdSize"

    .line 532
    .line 533
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 541
    .line 542
    goto :goto_7

    .line 543
    :cond_12
    :goto_6
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 544
    .line 545
    :goto_7
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdwg;->zzh(Lcom/google/android/gms/ads/AdSize;)V

    .line 546
    .line 547
    .line 548
    const-string v0, "clickToExpandRequested"

    .line 549
    .line 550
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    const-string v2, "startMuted"

    .line 555
    .line 556
    const-string v4, "customControlsRequested"

    .line 557
    .line 558
    if-nez v1, :cond_13

    .line 559
    .line 560
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-nez v1, :cond_13

    .line 565
    .line 566
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    if-eqz v1, :cond_17

    .line 571
    .line 572
    :cond_13
    new-instance v1, Lcom/google/android/gms/ads/VideoOptions$Builder;

    .line 573
    .line 574
    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;-><init>()V

    .line 575
    .line 576
    .line 577
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v5

    .line 581
    if-eqz v5, :cond_14

    .line 582
    .line 583
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    check-cast v2, Ljava/lang/String;

    .line 588
    .line 589
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    .line 594
    .line 595
    .line 596
    :cond_14
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    if-eqz v2, :cond_15

    .line 601
    .line 602
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    check-cast v2, Ljava/lang/String;

    .line 607
    .line 608
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setCustomControlsRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    .line 613
    .line 614
    .line 615
    :cond_15
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    if-eqz v2, :cond_16

    .line 620
    .line 621
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    check-cast v0, Ljava/lang/String;

    .line 626
    .line 627
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setClickToExpandRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    .line 632
    .line 633
    .line 634
    :cond_16
    invoke-virtual {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->build()Lcom/google/android/gms/ads/VideoOptions;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwg;->zzm(Lcom/google/android/gms/ads/VideoOptions;)V

    .line 639
    .line 640
    .line 641
    :cond_17
    const-string v0, "customMuteThisAdRequested"

    .line 642
    .line 643
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    const-string v2, "shouldRequestMultipleImages"

    .line 648
    .line 649
    const-string v4, "preferredAdChoicesPosition"

    .line 650
    .line 651
    const-string v5, "mediaAspectRatio"

    .line 652
    .line 653
    const-string v6, "disableImageLoading"

    .line 654
    .line 655
    if-nez v1, :cond_18

    .line 656
    .line 657
    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    if-nez v1, :cond_18

    .line 662
    .line 663
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-nez v1, :cond_18

    .line 668
    .line 669
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_18

    .line 674
    .line 675
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    if-nez v1, :cond_18

    .line 680
    .line 681
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zzc()Lcom/google/android/gms/ads/VideoOptions;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    if-eqz v1, :cond_1f

    .line 686
    .line 687
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zzf()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    const-string v7, "NATIVE"

    .line 692
    .line 693
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    if-eqz v1, :cond_1f

    .line 698
    .line 699
    :cond_18
    new-instance v1, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 700
    .line 701
    invoke-direct {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    .line 702
    .line 703
    .line 704
    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v7

    .line 708
    if-eqz v7, :cond_19

    .line 709
    .line 710
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    check-cast v6, Ljava/lang/String;

    .line 715
    .line 716
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result v6

    .line 720
    invoke-virtual {v1, v6}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 721
    .line 722
    .line 723
    :cond_19
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v6

    .line 727
    if-eqz v6, :cond_1a

    .line 728
    .line 729
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v5

    .line 733
    check-cast v5, Ljava/lang/String;

    .line 734
    .line 735
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 736
    .line 737
    .line 738
    move-result v6

    .line 739
    if-nez v6, :cond_1a

    .line 740
    .line 741
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 742
    .line 743
    .line 744
    move-result v5

    .line 745
    invoke-virtual {v1, v5}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setMediaAspectRatio(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 746
    .line 747
    .line 748
    goto :goto_8

    .line 749
    :catch_3
    move-exception v5

    .line 750
    const-string v6, "OutOfContextTestingGmsgHandler.generateNativeAdOptionsBuilder.mediaAspectRatio"

    .line 751
    .line 752
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 753
    .line 754
    .line 755
    move-result-object v7

    .line 756
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    :cond_1a
    :goto_8
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    move-result v5

    .line 763
    if-eqz v5, :cond_1b

    .line 764
    .line 765
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    check-cast v2, Ljava/lang/String;

    .line 770
    .line 771
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result v2

    .line 775
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 776
    .line 777
    .line 778
    :cond_1b
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v2

    .line 782
    if-eqz v2, :cond_1c

    .line 783
    .line 784
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    check-cast v2, Ljava/lang/String;

    .line 789
    .line 790
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 791
    .line 792
    .line 793
    move-result v4

    .line 794
    if-nez v4, :cond_1c

    .line 795
    .line 796
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 801
    .line 802
    .line 803
    goto :goto_9

    .line 804
    :catch_4
    move-exception v2

    .line 805
    const-string v4, "OutOfContextTestingGmsgHandler.generateNativeAdOptionsBuilder.preferredAdChoicesPosition"

    .line 806
    .line 807
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 808
    .line 809
    .line 810
    move-result-object v5

    .line 811
    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    :cond_1c
    :goto_9
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v2

    .line 818
    if-eqz v2, :cond_1d

    .line 819
    .line 820
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    check-cast v0, Ljava/lang/String;

    .line 825
    .line 826
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v0

    .line 830
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setRequestCustomMuteThisAd(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 831
    .line 832
    .line 833
    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zzc()Lcom/google/android/gms/ads/VideoOptions;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    if-eqz v0, :cond_1e

    .line 838
    .line 839
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 840
    .line 841
    .line 842
    :cond_1e
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwg;->zzl(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V

    .line 847
    .line 848
    .line 849
    :cond_1f
    const-string v0, "action"

    .line 850
    .line 851
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object p2

    .line 855
    check-cast p2, Ljava/lang/String;

    .line 856
    .line 857
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 858
    .line 859
    .line 860
    move-result v0

    .line 861
    if-nez v0, :cond_22

    .line 862
    .line 863
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zze()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 868
    .line 869
    .line 870
    move-result v0

    .line 871
    if-nez v0, :cond_22

    .line 872
    .line 873
    const-string v0, "load"

    .line 874
    .line 875
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    move-result v0

    .line 879
    if-eqz v0, :cond_21

    .line 880
    .line 881
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zzf()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    if-eqz v0, :cond_20

    .line 890
    .line 891
    goto :goto_a

    .line 892
    :cond_20
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbks;->zza:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 893
    .line 894
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zzh(Lcom/google/android/gms/internal/ads/zzdwg;)V

    .line 895
    .line 896
    .line 897
    return-void

    .line 898
    :cond_21
    :goto_a
    const-string v0, "show"

    .line 899
    .line 900
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    move-result p2

    .line 904
    if-eqz p2, :cond_22

    .line 905
    .line 906
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbks;->zza:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 907
    .line 908
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zze()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object p1

    .line 912
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zzi(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    :cond_22
    :goto_b
    return-void
.end method
