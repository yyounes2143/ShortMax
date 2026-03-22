.class final Lcom/google/android/gms/internal/ads/zzedz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgn;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzb:Lcom/google/common/util/concurrent/e;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfca;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcfg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbki;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzecl;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdsj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzfcw;ZLcom/google/android/gms/internal/ads/zzbki;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedz;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedz;->zzb:Lcom/google/common/util/concurrent/e;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedz;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzedz;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzedz;->zze:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzedz;->zzg:Z

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzedz;->zzf:Lcom/google/android/gms/internal/ads/zzbki;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzedz;->zzh:Lcom/google/android/gms/internal/ads/zzecl;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzedz;->zzi:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfca;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedz;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

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
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzedz;->zzb:Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/zzcod;

    .line 10
    .line 11
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzedz;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

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
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzedz;->zzg:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzedz;->zzf:Lcom/google/android/gms/internal/ads/zzbki;

    .line 24
    .line 25
    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzbki;->zze(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    move/from16 v17, v3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move/from16 v17, v15

    .line 33
    .line 34
    :goto_0
    const/4 v3, 0x0

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzedz;->zzf:Lcom/google/android/gms/internal/ads/zzbki;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbki;->zzd()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    move/from16 v19, v15

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move/from16 v19, v3

    .line 49
    .line 50
    :goto_1
    if-eqz v2, :cond_2

    .line 51
    .line 52
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzedz;->zzf:Lcom/google/android/gms/internal/ads/zzbki;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbki;->zza()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :goto_2
    move/from16 v20, v2

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_2
    const/4 v2, 0x0

    .line 62
    goto :goto_2

    .line 63
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzedz;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    .line 64
    .line 65
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzO:Z

    .line 66
    .line 67
    const/16 v24, 0x0

    .line 68
    .line 69
    const/16 v18, 0x1

    .line 70
    .line 71
    const/16 v21, -0x1

    .line 72
    .line 73
    move-object/from16 v16, v10

    .line 74
    .line 75
    move/from16 v22, p1

    .line 76
    .line 77
    move/from16 v23, v3

    .line 78
    .line 79
    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    .line 80
    .line 81
    .line 82
    if-eqz p3, :cond_3

    .line 83
    .line 84
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcwl;->zzf()V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 88
    .line 89
    .line 90
    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcod;->zzg()Lcom/google/android/gms/internal/ads/zzdgc;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzQ:I

    .line 97
    .line 98
    const/4 v3, -0x1

    .line 99
    if-eq v1, v3, :cond_4

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzedz;->zze:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 103
    .line 104
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfcw;->zzj:Lcom/google/android/gms/ads/internal/client/zzx;

    .line 105
    .line 106
    if-eqz v3, :cond_6

    .line 107
    .line 108
    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zzx;->zza:I

    .line 109
    .line 110
    if-ne v3, v15, :cond_5

    .line 111
    .line 112
    const/4 v1, 0x7

    .line 113
    :goto_4
    move v7, v1

    .line 114
    goto :goto_5

    .line 115
    :cond_5
    const/4 v5, 0x2

    .line 116
    if-ne v3, v5, :cond_6

    .line 117
    .line 118
    const/4 v1, 0x6

    .line 119
    goto :goto_4

    .line 120
    :cond_6
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 121
    .line 122
    const-string v3, "Error setting app open orientation; no targeting orientation available."

    .line 123
    .line 124
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :goto_5
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzedz;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 129
    .line 130
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzB:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 133
    .line 134
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzfcf;->zza:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzedz;->zze:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfca;->zzb()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_7

    .line 145
    .line 146
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzedz;->zzh:Lcom/google/android/gms/internal/ads/zzecl;

    .line 147
    .line 148
    :goto_6
    move-object/from16 v16, v2

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_7
    const/4 v2, 0x0

    .line 152
    goto :goto_6

    .line 153
    :goto_7
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfcw;->zzf:Ljava/lang/String;

    .line 154
    .line 155
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzccb;->zzr()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const/4 v3, 0x0

    .line 160
    const/4 v5, 0x0

    .line 161
    move-object v2, v14

    .line 162
    move-object/from16 v25, v14

    .line 163
    .line 164
    move-object/from16 v14, p3

    .line 165
    .line 166
    move-object/from16 v15, v16

    .line 167
    .line 168
    move-object/from16 v16, v1

    .line 169
    .line 170
    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcfg;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcwl;Lcom/google/android/gms/internal/ads/zzbtj;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzedz;->zzi:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 174
    .line 175
    move-object/from16 v2, p2

    .line 176
    .line 177
    move-object/from16 v4, v25

    .line 178
    .line 179
    const/4 v3, 0x1

    .line 180
    invoke-static {v2, v4, v3, v1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdsj;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method
