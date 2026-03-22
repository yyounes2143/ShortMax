.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

.field private final zzc:J

.field private final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zze:Landroid/content/pm/PackageInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;JLandroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p4    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzc:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zze:Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    return-void
.end method

.method public static zzb(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    array-length v1, p0

    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    aget-char v1, p0, v0

    .line 15
    .line 16
    rem-int/lit16 v2, v0, 0x22b

    .line 17
    .line 18
    const-string v3, "f8L7o2HxjA4p9Z1nQw3E5r6T8yU2iCv0B9kM4sD1f7G3hJ5lK2z0X9cW8vQ6b5N3m1Rg8F2o0Lp7A1e9I4u3Y2t0H8x6W5v4Z1n9Q2w7E3r5T8y6U1i0C9vB8k7M4s3D1f2G0h9J5l8K4z7X3cW2v1Q0b9N8m6A5r4F3o2Lp1E0u9I8y7Y6t5H4x3W2v1Z0n9Q8w7E6r5T4y3U2i1C0v9B8k7M6s5D4f3G2h1J0l9K8z7X6cW5v4Q3b2N1m0Rg9F8o7Lp6A5e4I3u2Y1t0H8x7W6v5Z4n3Q2w1E0r9T8y7U6i5C4v3B2k1M0s9D8f7G6h5J4l3K2z1X0cW9v8Q7b6N5m4A3r2F1o0Lp9E8u7I6y5T4h3W2v1Z0n0Q9w8E7r6T5y4U3i2C1v0B9k8M7s6D5f4G3h2J1l0K9z8X7cW6v5Q4b3N2m1R0g9F8o7L6p5A4e3I2u1Y0t9H8x7W6v5Z4n3Q2w1E0r9T8y7U6i5C4v3B2k1M0s9D8f7G6h5J4l3K2z1X0cW9v8Q7b6N5m4A3r2F1o0Lp9E8u7I6y5T4h3W2"

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    xor-int/2addr v1, v2

    .line 25
    int-to-char v1, v1

    .line 26
    aput-char v1, p0, v0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;Ljava/lang/String;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Lcom/google/android/gms/internal/ads/zzbze;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzj(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zze()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zza:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p2, p0, p3, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbze;Lcom/google/android/gms/internal/ads/zzbyx;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private final zze()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzf()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzhS:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lt v0, v1, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method private static final zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdrr;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzhT:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static final zzg(Landroid/os/Bundle;I)V
    .locals 2

    .line 1
    const-string v0, "sod_h"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    const-string v0, "cmr"

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbze;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Landroid/os/Bundle;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "DiskCachingManager.getSignalResponse"

    .line 8
    .line 9
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdrr;->zzK:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 10
    .line 11
    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdrr;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbzs;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v4}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    iget-object v0, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzg()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x7

    .line 35
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zze:Landroid/content/pm/PackageInfo;

    .line 40
    .line 41
    const/16 v6, 0xa

    .line 42
    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    iget-object v0, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzg()V

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-object v5

    .line 54
    :cond_1
    iget-object v7, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 55
    .line 56
    iget-object v8, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zza:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zze()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzb()I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzd()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zza()I

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v13, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_7

    .line 85
    .line 86
    iget v9, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 87
    .line 88
    if-ne v10, v9, :cond_7

    .line 89
    .line 90
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_7

    .line 97
    .line 98
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    if-eq v12, v9, :cond_2

    .line 101
    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzf()Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_8

    .line 121
    .line 122
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    check-cast v9, Ljava/util/Map$Entry;

    .line 127
    .line 128
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    .line 129
    .line 130
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    check-cast v11, Ljava/lang/String;

    .line 135
    .line 136
    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v11, "ts_ms"

    .line 140
    .line 141
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v10

    .line 145
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    invoke-interface {v12}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 150
    .line 151
    .line 152
    move-result-wide v12

    .line 153
    sub-long/2addr v12, v10

    .line 154
    sget-object v14, Lcom/google/android/gms/internal/ads/zzbde;->zzhR:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 155
    .line 156
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 157
    .line 158
    .line 159
    move-result-object v15

    .line 160
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v14

    .line 164
    check-cast v14, Ljava/lang/Long;

    .line 165
    .line 166
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 167
    .line 168
    .line 169
    move-result-wide v14

    .line 170
    cmp-long v12, v12, v14

    .line 171
    .line 172
    if-lez v12, :cond_3

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_3
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfse;->zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfse;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    sget-object v13, Lcom/google/android/gms/internal/ads/zzbde;->zzdz:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 180
    .line 181
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    check-cast v13, Ljava/lang/Long;

    .line 190
    .line 191
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 192
    .line 193
    .line 194
    move-result-wide v13

    .line 195
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 196
    .line 197
    .line 198
    move-result-object v15

    .line 199
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzbzs;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    invoke-interface {v15}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    invoke-virtual {v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzfse;->zzh(JZ)Lcom/google/android/gms/internal/ads/zzfsa;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfsf;->zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfsf;

    .line 212
    .line 213
    .line 214
    move-result-object v13

    .line 215
    sget-object v14, Lcom/google/android/gms/internal/ads/zzbde;->zzdA:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 216
    .line 217
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 218
    .line 219
    .line 220
    move-result-object v15

    .line 221
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    check-cast v14, Ljava/lang/Long;

    .line 226
    .line 227
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 228
    .line 229
    .line 230
    move-result-wide v14

    .line 231
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 232
    .line 233
    .line 234
    move-result-object v16

    .line 235
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzbzs;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 236
    .line 237
    .line 238
    move-result-object v16

    .line 239
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    invoke-virtual {v13, v14, v15, v6}, Lcom/google/android/gms/internal/ads/zzfsf;->zzh(JZ)Lcom/google/android/gms/internal/ads/zzfsa;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfsa;->zza()J

    .line 248
    .line 249
    .line 250
    move-result-wide v13

    .line 251
    const-wide/16 v15, -0x1

    .line 252
    .line 253
    cmp-long v13, v13, v15

    .line 254
    .line 255
    if-eqz v13, :cond_4

    .line 256
    .line 257
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfsa;->zza()J

    .line 258
    .line 259
    .line 260
    move-result-wide v12

    .line 261
    cmp-long v12, v12, v10

    .line 262
    .line 263
    if-gtz v12, :cond_5

    .line 264
    .line 265
    :cond_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfsa;->zza()J

    .line 266
    .line 267
    .line 268
    move-result-wide v12

    .line 269
    cmp-long v12, v12, v15

    .line 270
    .line 271
    if-eqz v12, :cond_6

    .line 272
    .line 273
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfsa;->zza()J

    .line 274
    .line 275
    .line 276
    move-result-wide v12

    .line 277
    cmp-long v6, v12, v10

    .line 278
    .line 279
    if-lez v6, :cond_6

    .line 280
    .line 281
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    check-cast v6, Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v7, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzc(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .line 289
    .line 290
    :catch_0
    :cond_6
    const/16 v6, 0xa

    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :cond_7
    :goto_3
    invoke-virtual {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzg()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 302
    .line 303
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 304
    .line 305
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 306
    .line 307
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 308
    .line 309
    invoke-virtual {v7, v6, v4, v8, v9}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzi(Ljava/lang/String;ILjava/lang/String;I)V

    .line 310
    .line 311
    .line 312
    :cond_8
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdrr;->zzL:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 313
    .line 314
    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdrr;)V

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 322
    .line 323
    .line 324
    move-result-wide v6

    .line 325
    iget-wide v8, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzc:J

    .line 326
    .line 327
    sub-long/2addr v6, v8

    .line 328
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzhO:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 329
    .line 330
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    check-cast v4, Ljava/lang/Long;

    .line 339
    .line 340
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 341
    .line 342
    .line 343
    move-result-wide v8

    .line 344
    cmp-long v4, v6, v8

    .line 345
    .line 346
    if-lez v4, :cond_9

    .line 347
    .line 348
    const/4 v0, 0x2

    .line 349
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    .line 350
    .line 351
    .line 352
    return-object v5

    .line 353
    :cond_9
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdrr;->zzM:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 354
    .line 355
    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdrr;)V

    .line 356
    .line 357
    .line 358
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbze;->zza:Ljava/lang/String;

    .line 359
    .line 360
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbze;->zzb:Ljava/lang/String;

    .line 361
    .line 362
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbze;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 363
    .line 364
    iget-object v4, v10, Lcom/google/android/gms/ads/internal/client/zzm;->zzn:Landroid/os/Bundle;

    .line 365
    .line 366
    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    iget-object v6, v10, Lcom/google/android/gms/ads/internal/client/zzm;->zzc:Landroid/os/Bundle;

    .line 371
    .line 372
    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    iget-object v9, v10, Lcom/google/android/gms/ads/internal/client/zzm;->zzi:Ljava/lang/String;

    .line 377
    .line 378
    iget-object v11, v10, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 379
    .line 380
    iget-object v12, v10, Lcom/google/android/gms/ads/internal/client/zzm;->zzo:Ljava/util/List;

    .line 381
    .line 382
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v12

    .line 386
    new-instance v13, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzl(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    if-eqz v6, :cond_a

    .line 425
    .line 426
    const/4 v0, 0x3

    .line 427
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    .line 428
    .line 429
    .line 430
    return-object v5

    .line 431
    :cond_a
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdrr;->zzN:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 432
    .line 433
    invoke-static {v2, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdrr;)V

    .line 434
    .line 435
    .line 436
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdrr;->zzO:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 437
    .line 438
    invoke-static {v2, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdrr;)V

    .line 439
    .line 440
    .line 441
    iget-object v6, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 442
    .line 443
    invoke-virtual {v6, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v13

    .line 447
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdrr;->zzP:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 448
    .line 449
    invoke-static {v2, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdrr;)V

    .line 450
    .line 451
    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zze()Z

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    if-nez v6, :cond_b

    .line 457
    .line 458
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzbze;->zzc:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 459
    .line 460
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbze;

    .line 461
    .line 462
    const/4 v11, 0x2

    .line 463
    move-object v6, v0

    .line 464
    move-object v12, v4

    .line 465
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzbze;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;ILjava/lang/String;)V

    .line 466
    .line 467
    .line 468
    iget-object v6, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 469
    .line 470
    new-instance v7, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;

    .line 471
    .line 472
    move-object/from16 v8, p2

    .line 473
    .line 474
    invoke-direct {v7, v1, v4, v8, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;Ljava/lang/String;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Lcom/google/android/gms/internal/ads/zzbze;)V

    .line 475
    .line 476
    .line 477
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzhQ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 478
    .line 479
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    check-cast v0, Ljava/lang/Long;

    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 490
    .line 491
    .line 492
    move-result-wide v8

    .line 493
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 494
    .line 495
    invoke-interface {v6, v7, v8, v9, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 496
    .line 497
    .line 498
    :cond_b
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_c

    .line 503
    .line 504
    const/4 v0, 0x4

    .line 505
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    .line 506
    .line 507
    .line 508
    return-object v5

    .line 509
    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzQ:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 510
    .line 511
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdrr;)V

    .line 512
    .line 513
    .line 514
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    .line 515
    .line 516
    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    const-string v4, "sr"

    .line 520
    .line 521
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 526
    .line 527
    .line 528
    move-result v6

    .line 529
    if-eqz v6, :cond_d

    .line 530
    .line 531
    const/16 v0, 0x8

    .line 532
    .line 533
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    .line 534
    .line 535
    .line 536
    return-object v5

    .line 537
    :catch_1
    move-exception v0

    .line 538
    goto :goto_4

    .line 539
    :cond_d
    const-string v6, "rs"

    .line 540
    .line 541
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 546
    .line 547
    .line 548
    move-result v6

    .line 549
    if-eqz v6, :cond_e

    .line 550
    .line 551
    const/16 v0, 0x9

    .line 552
    .line 553
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    .line 554
    .line 555
    .line 556
    return-object v5

    .line 557
    :cond_e
    new-instance v6, Ljava/lang/String;

    .line 558
    .line 559
    const/16 v7, 0xa

    .line 560
    .line 561
    invoke-static {v0, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 566
    .line 567
    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 568
    .line 569
    .line 570
    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb(Ljava/lang/String;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdrr;->zzR:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 575
    .line 576
    invoke-static {v2, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdrr;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    .line 578
    .line 579
    :try_start_2
    new-instance v6, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;

    .line 580
    .line 581
    new-instance v7, Landroid/util/JsonReader;

    .line 582
    .line 583
    new-instance v8, Ljava/io/StringReader;

    .line 584
    .line 585
    invoke-direct {v8, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-direct {v7, v8}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 589
    .line 590
    .line 591
    invoke-direct {v6, v7, v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;-><init>(Landroid/util/JsonReader;Lcom/google/android/gms/internal/ads/zzbvq;)V

    .line 592
    .line 593
    .line 594
    iput-object v0, v6, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzc:Ljava/lang/String;

    .line 595
    .line 596
    iput-object v2, v6, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zze:Landroid/os/Bundle;

    .line 597
    .line 598
    const-string v0, "sod_h"

    .line 599
    .line 600
    const/4 v4, 0x1

    .line 601
    invoke-virtual {v2, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 602
    .line 603
    .line 604
    return-object v6

    .line 605
    :catch_2
    move-exception v0

    .line 606
    const/4 v4, 0x6

    .line 607
    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    .line 608
    .line 609
    .line 610
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    return-object v5

    .line 618
    :goto_4
    const/4 v4, 0x5

    .line 619
    invoke-static {v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzg(Landroid/os/Bundle;I)V

    .line 620
    .line 621
    .line 622
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    return-object v5
.end method

.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zze()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "params"

    .line 25
    .line 26
    iget-object v3, p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zza:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v2, "signal_dictionary"

    .line 32
    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzf:Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzn(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v2, "sr"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    iget-object p2, p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzc:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    const-string p2, ""

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception p2

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const/16 v1, 0xa

    .line 75
    .line 76
    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const-string v1, "rs"

    .line 81
    .line 82
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    const-string p2, "ts_ms"

    .line 86
    .line 87
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_0
    const-string v1, "DiskCachingManager.createStringToWrite"

    .line 100
    .line 101
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_2

    .line 117
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;

    .line 119
    .line 120
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzd;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_3
    return-void
.end method
