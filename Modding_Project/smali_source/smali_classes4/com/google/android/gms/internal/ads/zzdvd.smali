.class public final Lcom/google/android/gms/internal/ads/zzdvd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdun;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdpw;

.field private final zzc:Ljava/lang/Object;

.field private final zzd:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zze:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdun;Lcom/google/android/gms/internal/ads/zzdpw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zzc:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zza:Lcom/google/android/gms/internal/ads/zzdun;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zzb:Lcom/google/android/gms/internal/ads/zzdpw;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zzd:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzdvd;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdvd;->zzd(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzd(Ljava/util/List;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zze:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbmd;

    .line 29
    .line 30
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzjL:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zzb:Lcom/google/android/gms/internal/ads/zzdpw;

    .line 49
    .line 50
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbmd;->zza:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdpw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdpv;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdpv;->zzc:Lcom/google/android/gms/internal/ads/zzbse;

    .line 59
    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbse;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :goto_1
    move-object v6, v3

    .line 68
    goto :goto_3

    .line 69
    :cond_2
    :goto_2
    const-string v3, ""

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const-string v3, ""

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :goto_3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzjM:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 76
    .line 77
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const/4 v4, 0x0

    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zzb:Lcom/google/android/gms/internal/ads/zzdpw;

    .line 95
    .line 96
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbmd;->zza:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzdpw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdpv;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-nez v3, :cond_5

    .line 103
    .line 104
    :cond_4
    move v11, v4

    .line 105
    goto :goto_4

    .line 106
    :cond_5
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzdpv;->zzd:Z

    .line 107
    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    move v11, v2

    .line 111
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zzd:Ljava/util/List;

    .line 112
    .line 113
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdvc;

    .line 114
    .line 115
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbmd;->zza:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zzb:Lcom/google/android/gms/internal/ads/zzdpw;

    .line 118
    .line 119
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzdpw;->zzb(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzbmd;->zzb:Z

    .line 124
    .line 125
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbmd;->zzd:Ljava/lang/String;

    .line 126
    .line 127
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbmd;->zzc:I

    .line 128
    .line 129
    move-object v4, v3

    .line 130
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/zzdvc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zze:Z

    .line 138
    .line 139
    monitor-exit v0

    .line 140
    return-void

    .line 141
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    throw p1
.end method


# virtual methods
.method public final zza()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zzc:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zze:Z

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zza:Lcom/google/android/gms/internal/ads/zzdun;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdun;->zzt()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdun;->zzg()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdvd;->zzd(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdvd;->zzc()V

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zzd:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/google/android/gms/internal/ads/zzdvc;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdvc;->zza()Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    monitor-exit v1

    .line 63
    :goto_2
    return-object v0

    .line 64
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw v0
.end method

.method public final zzc()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvb;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdvb;-><init>(Lcom/google/android/gms/internal/ads/zzdvd;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvd;->zza:Lcom/google/android/gms/internal/ads/zzdun;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdun;->zzs(Lcom/google/android/gms/internal/ads/zzbmk;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
