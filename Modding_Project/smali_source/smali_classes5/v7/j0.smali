.class public final Lv7/j0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/SharedPreferences;

.field private d:Lcom/google/android/gms/common/logging/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lv7/j0;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lv7/j0;->a:Landroid/content/Context;

    .line 18
    .line 19
    iget-object p1, p0, Lv7/j0;->b:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "com.google.firebase.auth.api.Store.%s"

    .line 26
    .line 27
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lv7/j0;->a:Landroid/content/Context;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lv7/j0;->c:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    new-instance p1, Lcom/google/android/gms/common/logging/Logger;

    .line 41
    .line 42
    const-string p2, "StorageHelpers"

    .line 43
    .line 44
    new-array v0, v0, [Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lv7/j0;->d:Lcom/google/android/gms/common/logging/Logger;

    .line 50
    .line 51
    return-void
.end method

.method private final c(Lorg/json/JSONObject;)Lcom/google/firebase/auth/internal/zzaf;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "passkeyInfo"

    .line 2
    .line 3
    const-string v1, "userMultiFactorInfo"

    .line 4
    .line 5
    const-string v2, "userMetadata"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    const-string v4, "cachedTokenState"

    .line 9
    .line 10
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const-string v5, "applicationName"

    .line 15
    .line 16
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const-string v6, "anonymous"

    .line 21
    .line 22
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const-string v7, "2"

    .line 27
    .line 28
    const-string v8, "version"

    .line 29
    .line 30
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    if-eqz v8, :cond_0

    .line 35
    .line 36
    move-object v7, v8

    .line 37
    :cond_0
    const-string v8, "userInfos"

    .line 38
    .line 39
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-nez v9, :cond_1

    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    move v12, v11

    .line 57
    :goto_0
    if-ge v12, v9, :cond_2

    .line 58
    .line 59
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    invoke-static {v13}, Lcom/google/firebase/auth/internal/zzab;->p(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzab;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    add-int/lit8 v12, v12, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :catch_1
    move-exception p1

    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :catch_2
    move-exception p1

    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :catch_3
    move-exception p1

    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_2
    invoke-static {v5}, Lcom/google/firebase/f;->n(Ljava/lang/String;)Lcom/google/firebase/f;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    new-instance v8, Lcom/google/firebase/auth/internal/zzaf;

    .line 90
    .line 91
    invoke-direct {v8, v5, v10}, Lcom/google/firebase/auth/internal/zzaf;-><init>(Lcom/google/firebase/f;Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_3

    .line 99
    .line 100
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v8, v4}, Lcom/google/firebase/auth/FirebaseUser;->c0(Lcom/google/android/gms/internal/firebase-auth-api/zzahv;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    if-nez v6, :cond_4

    .line 108
    .line 109
    invoke-virtual {v8}, Lcom/google/firebase/auth/FirebaseUser;->d0()Lcom/google/firebase/auth/FirebaseUser;

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-virtual {v8, v7}, Lcom/google/firebase/auth/internal/zzaf;->i0(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzaf;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_5

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v2}, Lcom/google/firebase/auth/internal/zzah;->c(Lorg/json/JSONObject;)Lcom/google/firebase/auth/internal/zzah;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    invoke-virtual {v8, v2}, Lcom/google/firebase/auth/internal/zzaf;->j0(Lcom/google/firebase/auth/internal/zzah;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_9

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    new-instance v2, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    move v4, v11

    .line 152
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-ge v4, v5, :cond_8

    .line 157
    .line 158
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    new-instance v6, Lorg/json/JSONObject;

    .line 163
    .line 164
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v5, "factorIdKey"

    .line 168
    .line 169
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    const-string v7, "phone"

    .line 174
    .line 175
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_6

    .line 180
    .line 181
    invoke-static {v6}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;->w(Lorg/json/JSONObject;)Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    goto :goto_2

    .line 186
    :cond_6
    const-string v7, "totp"

    .line 187
    .line 188
    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_7

    .line 193
    .line 194
    invoke-static {v6}, Lcom/google/firebase/auth/TotpMultiFactorInfo;->w(Lorg/json/JSONObject;)Lcom/google/firebase/auth/TotpMultiFactorInfo;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    goto :goto_2

    .line 199
    :cond_7
    move-object v5, v3

    .line 200
    :goto_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    add-int/lit8 v4, v4, 0x1

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_8
    invoke-virtual {v8, v2}, Lcom/google/firebase/auth/FirebaseUser;->g0(Ljava/util/List;)V

    .line 207
    .line 208
    .line 209
    :cond_9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_b

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_b

    .line 220
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .line 225
    .line 226
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-ge v11, v1, :cond_a

    .line 231
    .line 232
    invoke-virtual {p1, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    new-instance v2, Lorg/json/JSONObject;

    .line 237
    .line 238
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v2}, Lcom/google/firebase/auth/zzan;->c(Lorg/json/JSONObject;)Lcom/google/firebase/auth/zzan;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    add-int/lit8 v11, v11, 0x1

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_a
    invoke-virtual {v8, v0}, Lcom/google/firebase/auth/FirebaseUser;->e0(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaao; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .line 253
    .line 254
    :cond_b
    return-object v8

    .line 255
    :goto_4
    iget-object v0, p0, Lv7/j0;->d:Lcom/google/android/gms/common/logging/Logger;

    .line 256
    .line 257
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/logging/Logger;->wtf(Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    return-object v3
.end method

.method private final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lv7/j0;->c:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const-string v0, "ENCRYPTED:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lv7/j0;->a:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v1, p0, Lv7/j0;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lv7/f0;->b(Landroid/content/Context;Ljava/lang/String;)Lv7/f0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0xa

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Lv7/f0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :cond_0
    return-object p1

    .line 37
    :cond_1
    return-object v1
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv7/j0;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lv7/j0;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lv7/f0;->b(Landroid/content/Context;Ljava/lang/String;)Lv7/f0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2}, Lv7/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "ENCRYPTED:"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget-object v0, p0, Lv7/j0;->c:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv7/j0;->c:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final k(Lcom/google/firebase/auth/FirebaseUser;)Ljava/lang/String;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    instance-of v1, p1, Lcom/google/firebase/auth/internal/zzaf;

    .line 7
    .line 8
    if-eqz v1, :cond_f

    .line 9
    .line 10
    check-cast p1, Lcom/google/firebase/auth/internal/zzaf;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    const-string v2, "cachedTokenState"

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zze()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v2, "applicationName"

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->T()Lcom/google/firebase/f;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/google/firebase/f;->o()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v2, "type"

    .line 36
    .line 37
    const-string v3, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzaf;->w0()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_9

    .line 47
    .line 48
    new-instance v2, Lorg/json/JSONArray;

    .line 49
    .line 50
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzaf;->w0()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/16 v6, 0x1e

    .line 66
    .line 67
    if-le v5, v6, :cond_0

    .line 68
    .line 69
    iget-object v4, p0, Lv7/j0;->d:Lcom/google/android/gms/common/logging/Logger;

    .line 70
    .line 71
    const-string v5, "Provider user info list size larger than max size, truncating list to %d. Actual list size: %d"

    .line 72
    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    move v4, v6

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    goto/16 :goto_7

    .line 96
    .line 97
    :cond_0
    :goto_0
    move v5, v1

    .line 98
    move v6, v5

    .line 99
    :goto_1
    const-string v7, "firebase"

    .line 100
    .line 101
    const/4 v8, 0x1

    .line 102
    if-ge v5, v4, :cond_3

    .line 103
    .line 104
    :try_start_1
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    check-cast v9, Lcom/google/firebase/auth/internal/zzab;

    .line 109
    .line 110
    invoke-virtual {v9}, Lcom/google/firebase/auth/internal/zzab;->l()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-eqz v10, :cond_1

    .line 119
    .line 120
    move v6, v8

    .line 121
    :cond_1
    add-int/lit8 v10, v4, -0x1

    .line 122
    .line 123
    if-ne v5, v10, :cond_2

    .line 124
    .line 125
    if-eqz v6, :cond_3

    .line 126
    .line 127
    :cond_2
    invoke-virtual {v9}, Lcom/google/firebase/auth/internal/zzab;->zzb()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 132
    .line 133
    .line 134
    add-int/lit8 v5, v5, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    if-nez v6, :cond_8

    .line 138
    .line 139
    add-int/lit8 v5, v4, -0x1

    .line 140
    .line 141
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-ge v5, v9, :cond_6

    .line 146
    .line 147
    if-ltz v5, :cond_6

    .line 148
    .line 149
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    check-cast v9, Lcom/google/firebase/auth/internal/zzab;

    .line 154
    .line 155
    invoke-virtual {v9}, Lcom/google/firebase/auth/internal/zzab;->l()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-eqz v10, :cond_4

    .line 164
    .line 165
    invoke-virtual {v9}, Lcom/google/firebase/auth/internal/zzab;->zzb()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    sub-int/2addr v10, v8

    .line 178
    if-ne v5, v10, :cond_5

    .line 179
    .line 180
    invoke-virtual {v9}, Lcom/google/firebase/auth/internal/zzab;->zzb()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 185
    .line 186
    .line 187
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_6
    move v8, v6

    .line 191
    :goto_3
    if-nez v8, :cond_8

    .line 192
    .line 193
    iget-object v5, p0, Lv7/j0;->d:Lcom/google/android/gms/common/logging/Logger;

    .line 194
    .line 195
    const-string v6, "Malformed user object! No Firebase Auth provider id found. Provider user info list size: %d, trimmed size: %d"

    .line 196
    .line 197
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    filled-new-array {v7, v4}, [Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    const/4 v5, 0x5

    .line 221
    if-ge v4, v5, :cond_8

    .line 222
    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v5, "Provider user info list:\n"

    .line 226
    .line 227
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_7

    .line 239
    .line 240
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    check-cast v5, Lcom/google/firebase/auth/internal/zzab;

    .line 245
    .line 246
    const-string v6, "Provider - %s\n"

    .line 247
    .line 248
    invoke-virtual {v5}, Lcom/google/firebase/auth/internal/zzab;->l()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_7
    iget-object v3, p0, Lv7/j0;->d:Lcom/google/android/gms/common/logging/Logger;

    .line 265
    .line 266
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    new-array v5, v1, [Ljava/lang/Object;

    .line 271
    .line 272
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_8
    const-string v3, "userInfos"

    .line 276
    .line 277
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    .line 279
    .line 280
    :cond_9
    const-string v2, "anonymous"

    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->R()Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 287
    .line 288
    .line 289
    const-string v2, "version"

    .line 290
    .line 291
    const-string v3, "2"

    .line 292
    .line 293
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->m()Lcom/google/firebase/auth/FirebaseUserMetadata;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    if-eqz v2, :cond_a

    .line 301
    .line 302
    const-string v2, "userMetadata"

    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->m()Lcom/google/firebase/auth/FirebaseUserMetadata;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    check-cast v3, Lcom/google/firebase/auth/internal/zzah;

    .line 309
    .line 310
    invoke-virtual {v3}, Lcom/google/firebase/auth/internal/zzah;->d()Lorg/json/JSONObject;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    .line 316
    .line 317
    :cond_a
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->o()Lcom/google/firebase/auth/i;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, Lv7/h;

    .line 322
    .line 323
    invoke-virtual {v2}, Lcom/google/firebase/auth/i;->a()Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    if-eqz v2, :cond_c

    .line 328
    .line 329
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-nez v3, :cond_c

    .line 334
    .line 335
    new-instance v3, Lorg/json/JSONArray;

    .line 336
    .line 337
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 338
    .line 339
    .line 340
    move v4, v1

    .line 341
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-ge v4, v5, :cond_b

    .line 346
    .line 347
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    check-cast v5, Lcom/google/firebase/auth/MultiFactorInfo;

    .line 352
    .line 353
    invoke-virtual {v5}, Lcom/google/firebase/auth/MultiFactorInfo;->toJson()Lorg/json/JSONObject;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 358
    .line 359
    .line 360
    add-int/lit8 v4, v4, 0x1

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_b
    const-string v2, "userMultiFactorInfo"

    .line 364
    .line 365
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    .line 367
    .line 368
    :cond_c
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->h0()Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    if-eqz p1, :cond_e

    .line 373
    .line 374
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-nez v2, :cond_e

    .line 379
    .line 380
    new-instance v2, Lorg/json/JSONArray;

    .line 381
    .line 382
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 383
    .line 384
    .line 385
    move v3, v1

    .line 386
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    if-ge v3, v4, :cond_d

    .line 391
    .line 392
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    check-cast v4, Lcom/google/firebase/auth/zzan;

    .line 397
    .line 398
    invoke-static {v4}, Lcom/google/firebase/auth/zzan;->g(Lcom/google/firebase/auth/zzan;)Lorg/json/JSONObject;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 403
    .line 404
    .line 405
    add-int/lit8 v3, v3, 0x1

    .line 406
    .line 407
    goto :goto_6

    .line 408
    :cond_d
    const-string p1, "passkeyInfo"

    .line 409
    .line 410
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    .line 412
    .line 413
    :cond_e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 417
    return-object p1

    .line 418
    :goto_7
    iget-object v0, p0, Lv7/j0;->d:Lcom/google/android/gms/common/logging/Logger;

    .line 419
    .line 420
    const-string v2, "Failed to turn object into JSON"

    .line 421
    .line 422
    new-array v1, v1, [Ljava/lang/Object;

    .line 423
    .line 424
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/logging/Logger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;

    .line 428
    .line 429
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;-><init>(Ljava/lang/Throwable;)V

    .line 430
    .line 431
    .line 432
    throw v0

    .line 433
    :cond_f
    const/4 p1, 0x0

    .line 434
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzahv;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->x()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    .line 13
    .line 14
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lv7/j0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaao; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p1

    .line 29
    :catch_0
    iget-object p1, p0, Lv7/j0;->d:Lcom/google/android/gms/common/logging/Logger;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v1, "Failed to restore token data from persistent storage."

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public final b()Lcom/google/firebase/auth/FirebaseUser;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    const-string v1, "com.google.firebase.auth.FIREBASE_USER"

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lv7/j0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    return-object v3

    .line 17
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, v2}, Lv7/j0;->c(Lorg/json/JSONObject;)Lcom/google/firebase/auth/internal/zzaf;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-object v0

    .line 45
    :catch_0
    iget-object v0, p0, Lv7/j0;->d:Lcom/google/android/gms/common/logging/Logger;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    .line 50
    const-string v2, "Failed to restore user data from persistent storage."

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-object v3
.end method

.method public final e(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->x()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzf()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-direct {p0, p1, p2}, Lv7/j0;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    const-string v0, "com.google.firebase.auth.FIREBASE_USER"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lv7/j0;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->x()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    .line 13
    .line 14
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lv7/j0;->i(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final j(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lv7/j0;->k(Lcom/google/firebase/auth/FirebaseUser;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "com.google.firebase.auth.FIREBASE_USER"

    .line 15
    .line 16
    invoke-direct {p0, v0, p1}, Lv7/j0;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
