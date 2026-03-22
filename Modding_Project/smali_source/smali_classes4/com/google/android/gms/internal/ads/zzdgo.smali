.class public final Lcom/google/android/gms/internal/ads/zzdgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxm;
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lcom/google/android/gms/internal/ads/zzcws;


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzedh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcfg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfca;

.field private final zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzedf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzedf;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzcfg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzb:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzc:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzd:Lcom/google/android/gms/internal/ads/zzfca;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzf:Lcom/google/android/gms/internal/ads/zzedf;

    .line 13
    .line 14
    return-void
.end method

.method private final zzg()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzfC:Lcom/google/android/gms/internal/ads/zzbcv;

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzf:Lcom/google/android/gms/internal/ads/zzedf;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedf;->zzd()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method


# virtual methods
.method public final zzd()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzdk()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzds()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzdt()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzfF:Lcom/google/android/gms/internal/ads/zzbcv;

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
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzc:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zza:Lcom/google/android/gms/internal/ads/zzedh;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdgo;->zzg()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zza:Lcom/google/android/gms/internal/ads/zzedh;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Landroidx/collection/ArrayMap;

    .line 38
    .line 39
    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "onSdkImpression"

    .line 43
    .line 44
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbna;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzf:Lcom/google/android/gms/internal/ads/zzedf;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedf;->zzb()V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public final zzdv()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzdw(I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zza:Lcom/google/android/gms/internal/ads/zzedh;

    .line 3
    .line 4
    return-void
.end method

.method public final zzt()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdgo;->zzg()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzf:Lcom/google/android/gms/internal/ads/zzedf;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedf;->zzb()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zza:Lcom/google/android/gms/internal/ads/zzedh;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzc:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzfF:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Landroidx/collection/ArrayMap;

    .line 40
    .line 41
    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "onSdkImpression"

    .line 45
    .line 46
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbna;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final zzu()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzd:Lcom/google/android/gms/internal/ads/zzfca;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzT:Z

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzc:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 8
    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzb:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/internal/ads/zzedc;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzedc;->zzl(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdgo;->zzg()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zzf:Lcom/google/android/gms/internal/ads/zzedf;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedf;->zzc()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 36
    .line 37
    iget v3, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    .line 38
    .line 39
    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, "."

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzV:Lcom/google/android/gms/internal/ads/zzfcz;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfcz;->zza()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfcz;->zzc()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v3, 0x1

    .line 72
    if-ne v2, v3, :cond_1

    .line 73
    .line 74
    sget-object v2, Lcom/google/android/gms/internal/ads/zzedd;->zzc:Lcom/google/android/gms/internal/ads/zzedd;

    .line 75
    .line 76
    sget-object v3, Lcom/google/android/gms/internal/ads/zzede;->zzb:Lcom/google/android/gms/internal/ads/zzede;

    .line 77
    .line 78
    move-object v12, v2

    .line 79
    move-object v11, v3

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzY:I

    .line 82
    .line 83
    const/4 v3, 0x2

    .line 84
    if-ne v2, v3, :cond_2

    .line 85
    .line 86
    sget-object v2, Lcom/google/android/gms/internal/ads/zzede;->zzd:Lcom/google/android/gms/internal/ads/zzede;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzede;->zza:Lcom/google/android/gms/internal/ads/zzede;

    .line 90
    .line 91
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzedd;->zza:Lcom/google/android/gms/internal/ads/zzedd;

    .line 92
    .line 93
    move-object v11, v2

    .line 94
    move-object v12, v3

    .line 95
    :goto_1
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzal:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/internal/ads/zzedc;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzG()Landroid/webkit/WebView;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const-string v8, ""

    .line 106
    .line 107
    const-string v9, "javascript"

    .line 108
    .line 109
    invoke-interface/range {v5 .. v13}, Lcom/google/android/gms/internal/ads/zzedc;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzede;Lcom/google/android/gms/internal/ads/zzedd;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzedh;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zza:Lcom/google/android/gms/internal/ads/zzedh;

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedh;->zza()Lcom/google/android/gms/internal/ads/zzfll;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzfB:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 122
    .line 123
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/internal/ads/zzedc;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzG()Landroid/webkit/WebView;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzedc;->zzj(Lcom/google/android/gms/internal/ads/zzfll;Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzV()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_4

    .line 163
    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Landroid/view/View;

    .line 169
    .line 170
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/internal/ads/zzedc;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-interface {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzedc;->zzg(Lcom/google/android/gms/internal/ads/zzfll;Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/internal/ads/zzedc;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzedc;->zzj(Lcom/google/android/gms/internal/ads/zzfll;Landroid/view/View;)V

    .line 187
    .line 188
    .line 189
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgo;->zza:Lcom/google/android/gms/internal/ads/zzedh;

    .line 190
    .line 191
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzcfg;->zzat(Lcom/google/android/gms/internal/ads/zzedh;)V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/internal/ads/zzedc;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzedc;->zzk(Lcom/google/android/gms/internal/ads/zzfll;)V

    .line 199
    .line 200
    .line 201
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 202
    .line 203
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v2, "onSdkLoaded"

    .line 207
    .line 208
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbna;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    .line 210
    .line 211
    :cond_5
    return-void
.end method
