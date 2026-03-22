.class final Lcom/google/android/gms/internal/ads/zzwg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzv;
.implements Lcom/google/android/gms/internal/ads/zzuw;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzwl;

.field private final zzb:J

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhi;

.field private final zze:Lcom/google/android/gms/internal/ads/zzwa;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzady;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdm;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzaer;

.field private volatile zzi:Z

.field private zzj:Z

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzgo;

.field private zzm:Lcom/google/android/gms/internal/ads/zzafb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwl;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgj;Lcom/google/android/gms/internal/ads/zzwa;Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzdm;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Landroid/net/Uri;

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhi;

    .line 12
    .line 13
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Lcom/google/android/gms/internal/ads/zzgj;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzd:Lcom/google/android/gms/internal/ads/zzhi;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwg;->zze:Lcom/google/android/gms/internal/ads/zzwa;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzf:Lcom/google/android/gms/internal/ads/zzady;

    .line 21
    .line 22
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzg:Lcom/google/android/gms/internal/ads/zzdm;

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaer;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaer;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzh:Lcom/google/android/gms/internal/ads/zzaer;

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzj:Z

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuy;->zza()J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzb:J

    .line 39
    .line 40
    const-wide/16 p1, 0x0

    .line 41
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwg;->zzi(J)Lcom/google/android/gms/internal/ads/zzgo;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzl:Lcom/google/android/gms/internal/ads/zzgo;

    .line 47
    .line 48
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzwg;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzb:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzwg;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzwg;)Lcom/google/android/gms/internal/ads/zzgo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzl:Lcom/google/android/gms/internal/ads/zzgo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzwg;)Lcom/google/android/gms/internal/ads/zzhi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzd:Lcom/google/android/gms/internal/ads/zzhi;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzwg;JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzh:Lcom/google/android/gms/internal/ads/zzaer;

    .line 2
    .line 3
    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:J

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzj:Z

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzn:Z

    .line 12
    .line 13
    return-void
.end method

.method private final zzi(J)Lcom/google/android/gms/internal/ads/zzgo;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgm;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgm;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgm;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzgm;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgm;->zzc(J)Lcom/google/android/gms/internal/ads/zzgm;

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x6

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgm;->zza(I)Lcom/google/android/gms/internal/ads/zzgm;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwl;->zzz()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgm;->zzb(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgm;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zze()Lcom/google/android/gms/internal/ads/zzgo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzen;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzn:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:J

    .line 7
    .line 8
    :goto_0
    move-wide v5, v2

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzwl;->zzr(Lcom/google/android/gms/internal/ads/zzwl;Z)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:J

    .line 17
    .line 18
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:Lcom/google/android/gms/internal/ads/zzafb;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-interface {v4, p1, v8}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 33
    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v7, 0x1

    .line 38
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 39
    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzn:Z

    .line 42
    .line 43
    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzi:Z

    .line 3
    .line 4
    return-void
.end method

.method public final zzh()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "Invalid metadata interval: "

    .line 4
    .line 5
    :cond_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzi:Z

    .line 6
    .line 7
    if-nez v2, :cond_16

    .line 8
    .line 9
    const-wide/16 v2, -0x1

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    :try_start_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzh:Lcom/google/android/gms/internal/ads/zzaer;

    .line 13
    .line 14
    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    .line 15
    .line 16
    invoke-direct {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzwg;->zzi(J)Lcom/google/android/gms/internal/ads/zzgo;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzl:Lcom/google/android/gms/internal/ads/zzgo;

    .line 21
    .line 22
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzd:Lcom/google/android/gms/internal/ads/zzhi;

    .line 23
    .line 24
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzhi;->zzb(Lcom/google/android/gms/internal/ads/zzgo;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v8

    .line 28
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    if-eqz v6, :cond_2

    .line 31
    .line 32
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzwg;->zze:Lcom/google/android/gms/internal/ads/zzwa;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwa;->zzb()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    cmp-long v2, v4, v2

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzh:Lcom/google/android/gms/internal/ads/zzaer;

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwa;->zzb()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    .line 49
    .line 50
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzd:Lcom/google/android/gms/internal/ads/zzhi;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgj;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    cmp-long v6, v8, v2

    .line 57
    .line 58
    if-eqz v6, :cond_3

    .line 59
    .line 60
    add-long/2addr v8, v13

    .line 61
    :try_start_1
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 62
    .line 63
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzwl;->zzF(Lcom/google/android/gms/internal/ads/zzwl;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    move-wide v15, v8

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    move v7, v5

    .line 70
    goto/16 :goto_d

    .line 71
    .line 72
    :goto_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 73
    .line 74
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzhi;->zze()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    const-string v8, "icy-br"

    .line 79
    .line 80
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    const-string v9, "IcyHeaders"

    .line 87
    .line 88
    const/4 v10, -0x1

    .line 89
    if-eqz v8, :cond_5

    .line 90
    .line 91
    :try_start_2
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v11
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    mul-int/lit16 v11, v11, 0x3e8

    .line 102
    .line 103
    if-lez v11, :cond_4

    .line 104
    .line 105
    move/from16 v18, v11

    .line 106
    .line 107
    const/4 v2, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v2, "Invalid bitrate: "

    .line 115
    .line 116
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    .line 128
    .line 129
    :cond_5
    move v2, v5

    .line 130
    move/from16 v18, v10

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_0
    move v11, v10

    .line 134
    :catch_1
    :try_start_5
    const-string v2, "Invalid bitrate header: "

    .line 135
    .line 136
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    move v2, v5

    .line 148
    move/from16 v18, v11

    .line 149
    .line 150
    :goto_1
    const-string v3, "icy-genre"

    .line 151
    .line 152
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Ljava/util/List;

    .line 157
    .line 158
    const/4 v8, 0x0

    .line 159
    if-eqz v3, :cond_6

    .line 160
    .line 161
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Ljava/lang/String;

    .line 166
    .line 167
    move-object/from16 v19, v2

    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    goto :goto_2

    .line 171
    :cond_6
    move-object/from16 v19, v8

    .line 172
    .line 173
    :goto_2
    const-string v3, "icy-name"

    .line 174
    .line 175
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Ljava/util/List;

    .line 180
    .line 181
    if-eqz v3, :cond_7

    .line 182
    .line 183
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Ljava/lang/String;

    .line 188
    .line 189
    move-object/from16 v20, v2

    .line 190
    .line 191
    const/4 v2, 0x1

    .line 192
    goto :goto_3

    .line 193
    :cond_7
    move-object/from16 v20, v8

    .line 194
    .line 195
    :goto_3
    const-string v3, "icy-url"

    .line 196
    .line 197
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    check-cast v3, Ljava/util/List;

    .line 202
    .line 203
    if-eqz v3, :cond_8

    .line 204
    .line 205
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    check-cast v2, Ljava/lang/String;

    .line 210
    .line 211
    move-object/from16 v21, v2

    .line 212
    .line 213
    const/4 v2, 0x1

    .line 214
    goto :goto_4

    .line 215
    :cond_8
    move-object/from16 v21, v8

    .line 216
    .line 217
    :goto_4
    const-string v3, "icy-pub"

    .line 218
    .line 219
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Ljava/util/List;

    .line 224
    .line 225
    if-eqz v3, :cond_9

    .line 226
    .line 227
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, Ljava/lang/String;

    .line 232
    .line 233
    const-string v3, "1"

    .line 234
    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    move/from16 v22, v2

    .line 240
    .line 241
    const/4 v2, 0x1

    .line 242
    goto :goto_5

    .line 243
    :cond_9
    move/from16 v22, v5

    .line 244
    .line 245
    :goto_5
    const-string v3, "icy-metaint"

    .line 246
    .line 247
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    check-cast v3, Ljava/util/List;

    .line 252
    .line 253
    if-eqz v3, :cond_b

    .line 254
    .line 255
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    .line 261
    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v7
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 265
    if-lez v7, :cond_a

    .line 266
    .line 267
    move/from16 v23, v7

    .line 268
    .line 269
    const/4 v2, 0x1

    .line 270
    goto :goto_6

    .line 271
    :cond_a
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    invoke-static {v9, v11}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 287
    .line 288
    .line 289
    :cond_b
    move/from16 v23, v10

    .line 290
    .line 291
    goto :goto_6

    .line 292
    :catch_2
    move v7, v10

    .line 293
    :catch_3
    :try_start_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    move/from16 v23, v7

    .line 305
    .line 306
    :goto_6
    if-eqz v2, :cond_c

    .line 307
    .line 308
    new-instance v8, Lcom/google/android/gms/internal/ads/zzagv;

    .line 309
    .line 310
    move-object/from16 v17, v8

    .line 311
    .line 312
    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzagv;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 313
    .line 314
    .line 315
    :cond_c
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzwl;->zzE(Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzagv;)V

    .line 316
    .line 317
    .line 318
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzd:Lcom/google/android/gms/internal/ads/zzhi;

    .line 319
    .line 320
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 321
    .line 322
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzwl;->zzx(Lcom/google/android/gms/internal/ads/zzwl;)Lcom/google/android/gms/internal/ads/zzagv;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    if-eqz v6, :cond_d

    .line 327
    .line 328
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzwl;->zzx(Lcom/google/android/gms/internal/ads/zzwl;)Lcom/google/android/gms/internal/ads/zzagv;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzagv;->zzf:I

    .line 333
    .line 334
    if-eq v6, v10, :cond_d

    .line 335
    .line 336
    new-instance v6, Lcom/google/android/gms/internal/ads/zzux;

    .line 337
    .line 338
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzwl;->zzx(Lcom/google/android/gms/internal/ads/zzwl;)Lcom/google/android/gms/internal/ads/zzagv;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzagv;->zzf:I

    .line 343
    .line 344
    invoke-direct {v6, v2, v7, v1}, Lcom/google/android/gms/internal/ads/zzux;-><init>(Lcom/google/android/gms/internal/ads/zzgj;ILcom/google/android/gms/internal/ads/zzuw;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwl;->zzv()Lcom/google/android/gms/internal/ads/zzafb;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzm:Lcom/google/android/gms/internal/ads/zzafb;

    .line 352
    .line 353
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwl;->zzt()Lcom/google/android/gms/internal/ads/zzz;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 358
    .line 359
    .line 360
    move-object v8, v6

    .line 361
    goto :goto_7

    .line 362
    :cond_d
    move-object v8, v2

    .line 363
    :goto_7
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzwg;->zze:Lcom/google/android/gms/internal/ads/zzwa;

    .line 364
    .line 365
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Landroid/net/Uri;

    .line 366
    .line 367
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhi;->zze()Ljava/util/Map;

    .line 368
    .line 369
    .line 370
    move-result-object v10

    .line 371
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzf:Lcom/google/android/gms/internal/ads/zzady;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 372
    .line 373
    move-object v7, v6

    .line 374
    move-object/from16 v17, v11

    .line 375
    .line 376
    move-wide v11, v13

    .line 377
    move-wide v4, v13

    .line 378
    move-wide v13, v15

    .line 379
    move-object/from16 v15, v17

    .line 380
    .line 381
    :try_start_9
    invoke-interface/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzwa;->zzd(Lcom/google/android/gms/internal/ads/zzl;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzady;)V

    .line 382
    .line 383
    .line 384
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzwl;->zzx(Lcom/google/android/gms/internal/ads/zzwl;)Lcom/google/android/gms/internal/ads/zzagv;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    if-eqz v7, :cond_e

    .line 389
    .line 390
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzwa;->zzc()V

    .line 391
    .line 392
    .line 393
    goto :goto_8

    .line 394
    :catchall_1
    move-exception v0

    .line 395
    const/4 v7, 0x0

    .line 396
    goto/16 :goto_d

    .line 397
    .line 398
    :cond_e
    :goto_8
    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzj:Z

    .line 399
    .line 400
    if-eqz v7, :cond_f

    .line 401
    .line 402
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzk:J

    .line 403
    .line 404
    invoke-interface {v6, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzwa;->zzf(JJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 405
    .line 406
    .line 407
    const/4 v7, 0x0

    .line 408
    :try_start_a
    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzj:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 409
    .line 410
    :goto_9
    move-wide v13, v4

    .line 411
    move v4, v7

    .line 412
    goto :goto_a

    .line 413
    :catchall_2
    move-exception v0

    .line 414
    goto :goto_d

    .line 415
    :cond_f
    const/4 v7, 0x0

    .line 416
    goto :goto_9

    .line 417
    :cond_10
    :goto_a
    if-nez v4, :cond_12

    .line 418
    .line 419
    :try_start_b
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzi:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 420
    .line 421
    if-nez v5, :cond_11

    .line 422
    .line 423
    :try_start_c
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzg:Lcom/google/android/gms/internal/ads/zzdm;

    .line 424
    .line 425
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdm;->zza()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 426
    .line 427
    .line 428
    :try_start_d
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzh:Lcom/google/android/gms/internal/ads/zzaer;

    .line 429
    .line 430
    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/ads/zzwa;->zza(Lcom/google/android/gms/internal/ads/zzaer;)I

    .line 431
    .line 432
    .line 433
    move-result v4

    .line 434
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzwa;->zzb()J

    .line 435
    .line 436
    .line 437
    move-result-wide v8

    .line 438
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzwl;->zzn(Lcom/google/android/gms/internal/ads/zzwl;)J

    .line 439
    .line 440
    .line 441
    move-result-wide v10

    .line 442
    add-long/2addr v10, v13

    .line 443
    cmp-long v10, v8, v10

    .line 444
    .line 445
    if-lez v10, :cond_10

    .line 446
    .line 447
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdm;->zzd()Z

    .line 448
    .line 449
    .line 450
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzwl;->zzs(Lcom/google/android/gms/internal/ads/zzwl;)Landroid/os/Handler;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzwl;->zzy(Lcom/google/android/gms/internal/ads/zzwl;)Ljava/lang/Runnable;

    .line 455
    .line 456
    .line 457
    move-result-object v10

    .line 458
    invoke-virtual {v5, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    .line 460
    .line 461
    move-wide v13, v8

    .line 462
    goto :goto_a

    .line 463
    :catchall_3
    move-exception v0

    .line 464
    move v5, v4

    .line 465
    :goto_b
    const/4 v2, 0x1

    .line 466
    goto :goto_e

    .line 467
    :catch_4
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 468
    .line 469
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 470
    .line 471
    .line 472
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 473
    :cond_11
    move v4, v7

    .line 474
    :cond_12
    const/4 v3, 0x1

    .line 475
    if-ne v4, v3, :cond_13

    .line 476
    .line 477
    move v5, v7

    .line 478
    goto :goto_c

    .line 479
    :cond_13
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzwa;->zzb()J

    .line 480
    .line 481
    .line 482
    move-result-wide v7

    .line 483
    const-wide/16 v9, -0x1

    .line 484
    .line 485
    cmp-long v3, v7, v9

    .line 486
    .line 487
    if-eqz v3, :cond_14

    .line 488
    .line 489
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzh:Lcom/google/android/gms/internal/ads/zzaer;

    .line 490
    .line 491
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzwa;->zzb()J

    .line 492
    .line 493
    .line 494
    move-result-wide v5

    .line 495
    iput-wide v5, v3, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    .line 496
    .line 497
    :cond_14
    move v5, v4

    .line 498
    :goto_c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgj;)V

    .line 499
    .line 500
    .line 501
    if-eqz v5, :cond_0

    .line 502
    .line 503
    goto :goto_f

    .line 504
    :goto_d
    move v5, v7

    .line 505
    goto :goto_b

    .line 506
    :goto_e
    if-eq v5, v2, :cond_15

    .line 507
    .line 508
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzwg;->zze:Lcom/google/android/gms/internal/ads/zzwa;

    .line 509
    .line 510
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzwa;->zzb()J

    .line 511
    .line 512
    .line 513
    move-result-wide v3

    .line 514
    const-wide/16 v5, -0x1

    .line 515
    .line 516
    cmp-long v3, v3, v5

    .line 517
    .line 518
    if-eqz v3, :cond_15

    .line 519
    .line 520
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzh:Lcom/google/android/gms/internal/ads/zzaer;

    .line 521
    .line 522
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzwa;->zzb()J

    .line 523
    .line 524
    .line 525
    move-result-wide v4

    .line 526
    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    .line 527
    .line 528
    :cond_15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzwg;->zzd:Lcom/google/android/gms/internal/ads/zzhi;

    .line 529
    .line 530
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Lcom/google/android/gms/internal/ads/zzgj;)V

    .line 531
    .line 532
    .line 533
    throw v0

    .line 534
    :cond_16
    :goto_f
    return-void
.end method
