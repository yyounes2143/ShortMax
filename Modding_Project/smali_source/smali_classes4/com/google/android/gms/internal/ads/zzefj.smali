.class final Lcom/google/android/gms/internal/ads/zzefj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgn;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzc:Lcom/google/common/util/concurrent/e;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfca;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcfg;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbki;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzecl;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdsj;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzfcw;ZLcom/google/android/gms/internal/ads/zzbki;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefj;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefj;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefj;->zzc:Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefj;->zzd:Lcom/google/android/gms/internal/ads/zzfca;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzefj;->zze:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzefj;->zzf:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzefj;->zzg:Lcom/google/android/gms/internal/ads/zzbki;

    .line 17
    .line 18
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzefj;->zzh:Z

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzefj;->zzi:Lcom/google/android/gms/internal/ads/zzecl;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzefj;->zzj:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfca;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefj;->zzd:Lcom/google/android/gms/internal/ads/zzfca;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwl;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzefj;->zzc:Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/zzdfc;

    .line 10
    .line 11
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzefj;->zze:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 12
    .line 13
    const/4 v15, 0x1

    .line 14
    invoke-interface {v6, v15}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaq(Z)V

    .line 15
    .line 16
    .line 17
    new-instance v10, Lcom/google/android/gms/ads/internal/zzl;

    .line 18
    .line 19
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzefj;->zzh:Z

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzefj;->zzg:Lcom/google/android/gms/internal/ads/zzbki;

    .line 25
    .line 26
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbki;->zze(Z)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    move/from16 v17, v4

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move/from16 v17, v3

    .line 34
    .line 35
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 36
    .line 37
    .line 38
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzefj;->zza:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzJ(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v18

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzefj;->zzg:Lcom/google/android/gms/internal/ads/zzbki;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbki;->zzd()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    move/from16 v19, v15

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move/from16 v19, v3

    .line 58
    .line 59
    :goto_1
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzefj;->zzg:Lcom/google/android/gms/internal/ads/zzbki;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbki;->zza()F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    :goto_2
    move/from16 v20, v2

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_2
    const/4 v2, 0x0

    .line 71
    goto :goto_2

    .line 72
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzefj;->zzd:Lcom/google/android/gms/internal/ads/zzfca;

    .line 73
    .line 74
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzO:Z

    .line 75
    .line 76
    const/16 v24, 0x0

    .line 77
    .line 78
    const/16 v21, -0x1

    .line 79
    .line 80
    move-object/from16 v16, v10

    .line 81
    .line 82
    move/from16 v22, p1

    .line 83
    .line 84
    move/from16 v23, v3

    .line 85
    .line 86
    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    .line 87
    .line 88
    .line 89
    if-eqz p3, :cond_3

    .line 90
    .line 91
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcwl;->zzf()V

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 95
    .line 96
    .line 97
    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdfc;->zzh()Lcom/google/android/gms/internal/ads/zzdgc;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzQ:I

    .line 104
    .line 105
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzefj;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 106
    .line 107
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzB:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 110
    .line 111
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzfcf;->zza:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzefj;->zzf:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfca;->zzb()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzefj;->zzi:Lcom/google/android/gms/internal/ads/zzecl;

    .line 124
    .line 125
    :goto_4
    move-object/from16 v16, v2

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_4
    const/4 v2, 0x0

    .line 129
    goto :goto_4

    .line 130
    :goto_5
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfcw;->zzf:Ljava/lang/String;

    .line 131
    .line 132
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzccb;->zzr()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const/4 v3, 0x0

    .line 137
    const/4 v5, 0x0

    .line 138
    move-object v2, v14

    .line 139
    move-object/from16 v25, v14

    .line 140
    .line 141
    move-object/from16 v14, p3

    .line 142
    .line 143
    move-object/from16 v15, v16

    .line 144
    .line 145
    move-object/from16 v16, v1

    .line 146
    .line 147
    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcfg;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcwl;Lcom/google/android/gms/internal/ads/zzbtj;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzefj;->zzj:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 151
    .line 152
    move-object/from16 v2, p2

    .line 153
    .line 154
    move-object/from16 v4, v25

    .line 155
    .line 156
    const/4 v3, 0x1

    .line 157
    invoke-static {v2, v4, v3, v1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdsj;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method
