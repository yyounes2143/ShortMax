.class public final Lcom/google/android/gms/internal/ads/zzbxv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbya;


# static fields
.field public static final synthetic zzb:I

.field private static final zzc:Ljava/util/List;


# instance fields
.field zza:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhdk;

.field private final zze:Ljava/util/LinkedHashMap;

.field private final zzf:Ljava/util/List;

.field private final zzg:Ljava/util/List;

.field private final zzh:Landroid/content/Context;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzbxx;

.field private final zzj:Ljava/lang/Object;

.field private zzk:Ljava/util/HashSet;

.field private zzl:Z

.field private zzm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbxv;->zzc:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbxx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxw;)V
    .locals 2
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p5, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzf:Ljava/util/List;

    .line 10
    .line 11
    new-instance p5, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzg:Ljava/util/List;

    .line 17
    .line 18
    new-instance p5, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzj:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance p5, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzk:Ljava/util/HashSet;

    .line 31
    .line 32
    const/4 p5, 0x0

    .line 33
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzl:Z

    .line 34
    .line 35
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzm:Z

    .line 36
    .line 37
    const-string p5, "SafeBrowsing config is not present."

    .line 38
    .line 39
    invoke-static {p3, p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p5

    .line 46
    if-eqz p5, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzh:Landroid/content/Context;

    .line 53
    .line 54
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zze:Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzi:Lcom/google/android/gms/internal/ads/zzbxx;

    .line 62
    .line 63
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzbxx;->zze:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-eqz p3, :cond_1

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    check-cast p3, Ljava/lang/String;

    .line 80
    .line 81
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzk:Ljava/util/HashSet;

    .line 82
    .line 83
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 84
    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {p5, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzk:Ljava/util/HashSet;

    .line 94
    .line 95
    const-string p3, "cookie"

    .line 96
    .line 97
    sget-object p5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 98
    .line 99
    invoke-virtual {p3, p5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfm;->zzc()Lcom/google/android/gms/internal/ads/zzhdk;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const/16 p3, 0x9

    .line 111
    .line 112
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzhdk;->zzn(I)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 113
    .line 114
    .line 115
    if-eqz p4, :cond_2

    .line 116
    .line 117
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzhdk;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzhdk;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 121
    .line 122
    .line 123
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdm;->zzc()Lcom/google/android/gms/internal/ads/zzhdl;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzi:Lcom/google/android/gms/internal/ads/zzbxx;

    .line 128
    .line 129
    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzbxx;->zza:Ljava/lang/String;

    .line 130
    .line 131
    if-eqz p4, :cond_3

    .line 132
    .line 133
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzhdl;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhdl;

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    check-cast p3, Lcom/google/android/gms/internal/ads/zzhdm;

    .line 141
    .line 142
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzhdk;->zzg(Lcom/google/android/gms/internal/ads/zzhdm;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfb;->zzc()Lcom/google/android/gms/internal/ads/zzhfa;

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzh:Landroid/content/Context;

    .line 150
    .line 151
    invoke-static {p4}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 152
    .line 153
    .line 154
    move-result-object p4

    .line 155
    invoke-virtual {p4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    .line 156
    .line 157
    .line 158
    move-result p4

    .line 159
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzhfa;->zzc(Z)Lcom/google/android/gms/internal/ads/zzhfa;

    .line 160
    .line 161
    .line 162
    iget-object p2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 163
    .line 164
    if-eqz p2, :cond_4

    .line 165
    .line 166
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzhfa;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhfa;

    .line 167
    .line 168
    .line 169
    :cond_4
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzh:Landroid/content/Context;

    .line 174
    .line 175
    invoke-virtual {p2, p4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    int-to-long p4, p2

    .line 180
    const-wide/16 v0, 0x0

    .line 181
    .line 182
    cmp-long p2, p4, v0

    .line 183
    .line 184
    if-lez p2, :cond_5

    .line 185
    .line 186
    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzhfa;->zzb(J)Lcom/google/android/gms/internal/ads/zzhfa;

    .line 187
    .line 188
    .line 189
    :cond_5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhfb;

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhdk;->zzf(Lcom/google/android/gms/internal/ads/zzhfb;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 196
    .line 197
    .line 198
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzd:Lcom/google/android/gms/internal/ads/zzhdk;

    .line 199
    .line 200
    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbxv;Ljava/util/Map;)Lcom/google/common/util/concurrent/e;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_3

    .line 5
    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_5

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    new-instance v4, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v3, "matches"

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzj:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zze:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lcom/google/android/gms/internal/ads/zzhey;

    .line 60
    .line 61
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    if-nez v6, :cond_2

    .line 63
    .line 64
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v5, "Cannot find the corresponding resource object for "

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbxz;->zza(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    monitor-exit v4

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const/4 v2, 0x0

    .line 89
    move v7, v2

    .line 90
    :goto_1
    if-ge v7, v5, :cond_3

    .line 91
    .line 92
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    const-string v9, "threat_type"

    .line 97
    .line 98
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzhey;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhey;

    .line 103
    .line 104
    .line 105
    add-int/2addr v7, v0

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zza:Z

    .line 108
    .line 109
    if-lez v5, :cond_4

    .line 110
    .line 111
    move v2, v0

    .line 112
    :cond_4
    or-int/2addr v2, v3

    .line 113
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zza:Z

    .line 114
    .line 115
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    goto :goto_0

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    :try_start_5
    throw p0

    .line 120
    :goto_2
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    :try_start_6
    throw p0

    .line 122
    :catch_0
    move-exception p0

    .line 123
    goto/16 :goto_8

    .line 124
    .line 125
    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zza:Z

    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzj:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 132
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzd:Lcom/google/android/gms/internal/ads/zzhdk;

    .line 133
    .line 134
    const/16 v2, 0xa

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhdk;->zzn(I)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 137
    .line 138
    .line 139
    monitor-exit p1

    .line 140
    goto :goto_4

    .line 141
    :catchall_2
    move-exception p0

    .line 142
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 143
    :try_start_8
    throw p0

    .line 144
    :cond_6
    :goto_4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zza:Z

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    if-eqz p1, :cond_7

    .line 148
    .line 149
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzi:Lcom/google/android/gms/internal/ads/zzbxx;

    .line 150
    .line 151
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbxx;->zzg:Z

    .line 152
    .line 153
    if-nez v2, :cond_9

    .line 154
    .line 155
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzm:Z

    .line 156
    .line 157
    if-eqz v2, :cond_8

    .line 158
    .line 159
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzi:Lcom/google/android/gms/internal/ads/zzbxx;

    .line 160
    .line 161
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbxx;->zzf:Z

    .line 162
    .line 163
    if-nez v2, :cond_9

    .line 164
    .line 165
    :cond_8
    if-nez p1, :cond_e

    .line 166
    .line 167
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzi:Lcom/google/android/gms/internal/ads/zzbxx;

    .line 168
    .line 169
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbxx;->zzd:Z

    .line 170
    .line 171
    if-eqz p1, :cond_e

    .line 172
    .line 173
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzj:Ljava/lang/Object;

    .line 174
    .line 175
    monitor-enter p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 176
    :try_start_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zze:Ljava/util/LinkedHashMap;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_a

    .line 191
    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Lcom/google/android/gms/internal/ads/zzhey;

    .line 197
    .line 198
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzd:Lcom/google/android/gms/internal/ads/zzhdk;

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Lcom/google/android/gms/internal/ads/zzhez;

    .line 205
    .line 206
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzhdk;->zzc(Lcom/google/android/gms/internal/ads/zzhez;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :catchall_3
    move-exception p0

    .line 211
    goto/16 :goto_7

    .line 212
    .line 213
    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzd:Lcom/google/android/gms/internal/ads/zzhdk;

    .line 214
    .line 215
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzf:Ljava/util/List;

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhdk;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 218
    .line 219
    .line 220
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzg:Ljava/util/List;

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhdk;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 223
    .line 224
    .line 225
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbxz;->zzb()Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_c

    .line 230
    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhdk;->zzl()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhdk;->zzk()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v7, "Sending SB report\n  url: "

    .line 247
    .line 248
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v4, "\n  clickUrl: "

    .line 255
    .line 256
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v4, "\n  resources: \n"

    .line 263
    .line 264
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhdk;->zzm()Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    if-eqz v5, :cond_b

    .line 287
    .line 288
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    check-cast v5, Lcom/google/android/gms/internal/ads/zzhez;

    .line 293
    .line 294
    const-string v6, "    ["

    .line 295
    .line 296
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhez;->zzc()I

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v6, "] "

    .line 307
    .line 308
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhez;->zzg()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbxz;->zza(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    check-cast v2, Lcom/google/android/gms/internal/ads/zzhfm;

    .line 331
    .line 332
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxi;->zzaV()[B

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzi:Lcom/google/android/gms/internal/ads/zzbxx;

    .line 337
    .line 338
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbxx;->zzb:Ljava/lang/String;

    .line 339
    .line 340
    new-instance v4, Lcom/google/android/gms/ads/internal/util/zzbo;

    .line 341
    .line 342
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzh:Landroid/content/Context;

    .line 343
    .line 344
    invoke-direct {v4, p0}, Lcom/google/android/gms/ads/internal/util/zzbo;-><init>(Landroid/content/Context;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbo;->zzb(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/common/util/concurrent/e;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbxz;->zzb()Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_d

    .line 356
    .line 357
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxs;

    .line 358
    .line 359
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbxs;-><init>()V

    .line 360
    .line 361
    .line 362
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaf;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 363
    .line 364
    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 365
    .line 366
    .line 367
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxt;

    .line 368
    .line 369
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbxt;-><init>()V

    .line 370
    .line 371
    .line 372
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 373
    .line 374
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    monitor-exit p1

    .line 379
    goto :goto_9

    .line 380
    :goto_7
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 381
    :try_start_a
    throw p0

    .line 382
    :cond_e
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 383
    .line 384
    .line 385
    move-result-object p0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    .line 386
    goto :goto_9

    .line 387
    :goto_8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbfm;->zza:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 388
    .line 389
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    check-cast p1, Ljava/lang/Boolean;

    .line 394
    .line 395
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    if-eqz p1, :cond_f

    .line 400
    .line 401
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 402
    .line 403
    const-string p1, "Failed to get SafeBrowsing metadata"

    .line 404
    .line 405
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    .line 407
    .line 408
    :cond_f
    new-instance p0, Ljava/lang/Exception;

    .line 409
    .line 410
    const-string p1, "Safebrowsing report transmission failed."

    .line 411
    .line 412
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    :goto_9
    return-object p0
.end method

.method static bridge synthetic zzc()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbxv;->zzc:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbxv;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxz;->zzt()Lcom/google/android/gms/internal/ads/zzgxx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzj:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzd:Lcom/google/android/gms/internal/ads/zzhdk;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzheu;->zzc()Lcom/google/android/gms/internal/ads/zzhes;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxx;->zzb()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhes;->zza(Lcom/google/android/gms/internal/ads/zzgxz;)Lcom/google/android/gms/internal/ads/zzhes;

    .line 25
    .line 26
    .line 27
    const-string v0, "image/png"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhes;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhes;

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhes;->zzc(I)Lcom/google/android/gms/internal/ads/zzhes;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/google/android/gms/internal/ads/zzheu;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhdk;->zzi(Lcom/google/android/gms/internal/ads/zzheu;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 43
    .line 44
    .line 45
    monitor-exit p1

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbxx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzi:Lcom/google/android/gms/internal/ads/zzbxx;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x3

    .line 5
    if-ne p3, v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzm:Z

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zze:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    if-ne p3, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhey;

    .line 29
    .line 30
    const/4 p2, 0x4

    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhey;->zze(I)Lcom/google/android/gms/internal/ads/zzhey;

    .line 32
    .line 33
    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhez;->zzd()Lcom/google/android/gms/internal/ads/zzhey;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhex;->zza(I)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_3

    .line 45
    .line 46
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzhey;->zze(I)Lcom/google/android/gms/internal/ads/zzhey;

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzhey;->zzb(I)Lcom/google/android/gms/internal/ads/zzhey;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzhey;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhey;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhea;->zzc()Lcom/google/android/gms/internal/ads/zzhdx;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzk:Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_7

    .line 70
    .line 71
    if-eqz p2, :cond_7

    .line 72
    .line 73
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_7

    .line 86
    .line 87
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ljava/util/Map$Entry;

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-eqz v4, :cond_5

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Ljava/lang/String;

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    const-string v4, ""

    .line 107
    .line 108
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-eqz v5, :cond_6

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Ljava/lang/String;

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    const-string v3, ""

    .line 122
    .line 123
    :goto_3
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 124
    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzk:Ljava/util/HashSet;

    .line 130
    .line 131
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_4

    .line 136
    .line 137
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdw;->zzc()Lcom/google/android/gms/internal/ads/zzhdv;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgxz;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgxz;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzhdv;->zza(Lcom/google/android/gms/internal/ads/zzgxz;)Lcom/google/android/gms/internal/ads/zzhdv;

    .line 146
    .line 147
    .line 148
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgxz;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgxz;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzhdv;->zzb(Lcom/google/android/gms/internal/ads/zzgxz;)Lcom/google/android/gms/internal/ads/zzhdv;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Lcom/google/android/gms/internal/ads/zzhdw;

    .line 160
    .line 161
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzhdx;->zza(Lcom/google/android/gms/internal/ads/zzhdw;)Lcom/google/android/gms/internal/ads/zzhdx;

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhea;

    .line 170
    .line 171
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzhey;->zzc(Lcom/google/android/gms/internal/ads/zzhea;)Lcom/google/android/gms/internal/ads/zzhey;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 179
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    throw p1
.end method

.method public final zzf()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zze:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbxq;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbxq;-><init>(Lcom/google/android/gms/internal/ads/zzbxv;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 23
    .line 24
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    sget-object v4, Lcom/google/android/gms/internal/ads/zzcaf;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    const-wide/16 v5, 0xa

    .line 33
    .line 34
    invoke-static {v1, v5, v6, v2, v4}, Lcom/google/android/gms/internal/ads/zzgdn;->zzo(Lcom/google/common/util/concurrent/e;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/e;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbxu;

    .line 39
    .line 40
    invoke-direct {v4, p0, v2}, Lcom/google/android/gms/internal/ads/zzbxu;-><init>(Lcom/google/android/gms/internal/ads/zzbxv;Lcom/google/common/util/concurrent/e;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbxv;->zzc:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw v1
.end method

.method public final zzg(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzi:Lcom/google/android/gms/internal/ads/zzbxx;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbxx;->zzc:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzl:Z

    .line 10
    .line 11
    if-nez v0, :cond_7

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object v3, v1

    .line 43
    :goto_0
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :catch_1
    move-exception v2

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    move-object v3, v1

    .line 50
    :goto_2
    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 51
    .line 52
    const-string v4, "Fail to capture the web view"

    .line 53
    .line 54
    invoke-static {v4, v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_3
    if-nez v3, :cond_5

    .line 58
    .line 59
    :try_start_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 81
    .line 82
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    new-instance v5, Landroid/graphics/Canvas;

    .line 87
    .line 88
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 96
    .line 97
    .line 98
    move-object v1, v4

    .line 99
    goto :goto_6

    .line 100
    :catch_2
    move-exception p1

    .line 101
    goto :goto_5

    .line 102
    :cond_4
    :goto_4
    const-string p1, "Width or height of view is zero"

    .line 103
    .line 104
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 105
    .line 106
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    .line 108
    .line 109
    goto :goto_6

    .line 110
    :goto_5
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 111
    .line 112
    const-string v2, "Fail to capture the webview"

    .line 113
    .line 114
    invoke-static {v2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_5
    move-object v1, v3

    .line 119
    :goto_6
    if-nez v1, :cond_6

    .line 120
    .line 121
    const-string p1, "Failed to capture the webview bitmap."

    .line 122
    .line 123
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbxz;->zza(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzl:Z

    .line 128
    .line 129
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbxr;

    .line 130
    .line 131
    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzbxr;-><init>(Lcom/google/android/gms/internal/ads/zzbxv;Landroid/graphics/Bitmap;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzh(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    :goto_7
    return-void
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzd:Lcom/google/android/gms/internal/ads/zzhdk;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhdk;->zzd()Lcom/google/android/gms/internal/ads/zzhdk;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzd:Lcom/google/android/gms/internal/ads/zzhdk;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzhdk;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 17
    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public final zzi()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzi:Lcom/google/android/gms/internal/ads/zzbxx;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbxx;->zzc:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxv;->zzl:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method
