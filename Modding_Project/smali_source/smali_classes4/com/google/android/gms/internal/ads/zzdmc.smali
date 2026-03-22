.class public final Lcom/google/android/gms/internal/ads/zzdmc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdli;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzavu;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/ads/internal/zza;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbcc;

.field private final zzg:Ljava/util/concurrent/Executor;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzbge;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdpj;

.field private final zzk:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzdsj;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzfjy;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzeca;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzecl;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzfda;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzdsd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdli;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbcc;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdpj;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdsj;Lcom/google/android/gms/internal/ads/zzfjy;Lcom/google/android/gms/internal/ads/zzeca;Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzfda;Lcom/google/android/gms/internal/ads/zzdsd;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zza:Landroid/content/Context;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzb:Lcom/google/android/gms/internal/ads/zzdli;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzc:Lcom/google/android/gms/internal/ads/zzavu;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zze:Lcom/google/android/gms/ads/internal/zza;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzf:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzg:Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfcw;->zzi:Lcom/google/android/gms/internal/ads/zzbge;

    .line 28
    .line 29
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    .line 30
    .line 31
    move-object v1, p9

    .line 32
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzi:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 33
    .line 34
    move-object v1, p10

    .line 35
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzj:Lcom/google/android/gms/internal/ads/zzdpj;

    .line 36
    .line 37
    move-object v1, p11

    .line 38
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    .line 40
    move-object v1, p12

    .line 41
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzm:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 42
    .line 43
    move-object v1, p13

    .line 44
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzn:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 45
    .line 46
    move-object/from16 v1, p14

    .line 47
    .line 48
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzo:Lcom/google/android/gms/internal/ads/zzeca;

    .line 49
    .line 50
    move-object/from16 v1, p15

    .line 51
    .line 52
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzl:Lcom/google/android/gms/internal/ads/zzdoe;

    .line 53
    .line 54
    move-object/from16 v1, p16

    .line 55
    .line 56
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzp:Lcom/google/android/gms/internal/ads/zzecl;

    .line 57
    .line 58
    move-object/from16 v1, p17

    .line 59
    .line 60
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzq:Lcom/google/android/gms/internal/ads/zzfda;

    .line 61
    .line 62
    move-object/from16 v1, p18

    .line 63
    .line 64
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzr:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 65
    .line 66
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmc;Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbfz;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "text"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v1, "bg_color"

    .line 18
    .line 19
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzs(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v1, "text_color"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzs(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const-string v1, "text_size"

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, "allow_pub_rendering"

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    const-string v2, "animation_ms"

    .line 43
    .line 44
    const/16 v4, 0x3e8

    .line 45
    .line 46
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const-string v4, "presentation_ms"

    .line 51
    .line 52
    const/16 v7, 0xfa0

    .line 53
    .line 54
    invoke-virtual {p1, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    new-instance v11, Lcom/google/android/gms/internal/ads/zzbfz;

    .line 59
    .line 60
    if-lez v1, :cond_1

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_1
    move-object v7, v0

    .line 67
    add-int v8, p1, v2

    .line 68
    .line 69
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    .line 70
    .line 71
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzbge;->zze:I

    .line 72
    .line 73
    move-object v2, v11

    .line 74
    move-object v4, p2

    .line 75
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzbfz;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V

    .line 76
    .line 77
    .line 78
    move-object v0, v11

    .line 79
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdmc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbya;Lcom/google/android/gms/ads/internal/zzb;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzcft;

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zza:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzp:Lcom/google/android/gms/internal/ads/zzecl;

    .line 11
    .line 12
    move-object/from16 v16, v3

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzchd;->zza()Lcom/google/android/gms/internal/ads/zzchd;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzc:Lcom/google/android/gms/internal/ads/zzavu;

    .line 19
    .line 20
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zze:Lcom/google/android/gms/ads/internal/zza;

    .line 21
    .line 22
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzq:Lcom/google/android/gms/internal/ads/zzfda;

    .line 23
    .line 24
    move-object/from16 v17, v4

    .line 25
    .line 26
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 27
    .line 28
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzf:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 29
    .line 30
    const/4 v15, 0x0

    .line 31
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzm:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 32
    .line 33
    move-object/from16 v18, v0

    .line 34
    .line 35
    const-string v4, "native-omid"

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v11, 0x0

    .line 42
    const/4 v14, 0x0

    .line 43
    invoke-static/range {v2 .. v18}, Lcom/google/android/gms/internal/ads/zzcft;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchd;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzbel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbcc;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzfda;Lcom/google/android/gms/internal/ads/zzdsj;)Lcom/google/android/gms/internal/ads/zzcfg;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcaj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcaj;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdlt;

    .line 56
    .line 57
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzdlt;-><init>(Lcom/google/android/gms/internal/ads/zzcaj;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzcgy;->zzC(Lcom/google/android/gms/internal/ads/zzcgw;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v4, 0x1

    .line 68
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v4, "text/html"

    .line 73
    .line 74
    const-string v5, "base64"

    .line 75
    .line 76
    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzcfg;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zznP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 80
    .line 81
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    if-eqz v1, :cond_0

    .line 98
    .line 99
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzL(Lcom/google/android/gms/internal/ads/zzbya;)V

    .line 104
    .line 105
    .line 106
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    move-object/from16 v1, p3

    .line 111
    .line 112
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzD(Lcom/google/android/gms/ads/internal/zzb;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    return-object v2
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzj:Lcom/google/android/gms/internal/ads/zzdpj;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdpj;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;)Lcom/google/android/gms/internal/ads/zzcfg;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcaj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcaj;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzl:Lcom/google/android/gms/internal/ads/zzdoe;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdoe;->zzb()Lcom/google/android/gms/internal/ads/zzdob;

    .line 22
    .line 23
    .line 24
    move-result-object v19

    .line 25
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zznP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v14, 0x0

    .line 46
    if-nez v5, :cond_0

    .line 47
    .line 48
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zza:Landroid/content/Context;

    .line 49
    .line 50
    new-instance v6, Lcom/google/android/gms/ads/internal/zzb;

    .line 51
    .line 52
    invoke-direct {v6, v5, v14, v14}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbya;Lcom/google/android/gms/internal/ads/zzbuy;)V

    .line 53
    .line 54
    .line 55
    move-object v12, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object/from16 v12, p4

    .line 58
    .line 59
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const/4 v9, 0x1

    .line 74
    if-eq v9, v3, :cond_1

    .line 75
    .line 76
    move-object v3, v14

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move-object/from16 v3, p5

    .line 79
    .line 80
    :goto_1
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzo:Lcom/google/android/gms/internal/ads/zzeca;

    .line 81
    .line 82
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzn:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 83
    .line 84
    move-object/from16 v16, v5

    .line 85
    .line 86
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzm:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 87
    .line 88
    move-object/from16 v17, v0

    .line 89
    .line 90
    const/16 v22, 0x0

    .line 91
    .line 92
    const/16 v23, 0x0

    .line 93
    .line 94
    const/4 v10, 0x0

    .line 95
    const/4 v11, 0x0

    .line 96
    const/4 v13, 0x0

    .line 97
    const/16 v18, 0x0

    .line 98
    .line 99
    const/16 v20, 0x0

    .line 100
    .line 101
    const/16 v21, 0x0

    .line 102
    .line 103
    move-object/from16 v5, v19

    .line 104
    .line 105
    move-object/from16 v6, v19

    .line 106
    .line 107
    move-object/from16 v7, v19

    .line 108
    .line 109
    move-object/from16 v8, v19

    .line 110
    .line 111
    move v0, v9

    .line 112
    move-object/from16 v9, v19

    .line 113
    .line 114
    move-object v14, v3

    .line 115
    invoke-interface/range {v4 .. v23}, Lcom/google/android/gms/internal/ads/zzcgy;->zzX(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbiv;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/internal/ads/zzbix;Lcom/google/android/gms/ads/internal/overlay/zzad;ZLcom/google/android/gms/internal/ads/zzbki;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbsv;Lcom/google/android/gms/internal/ads/zzbya;Lcom/google/android/gms/internal/ads/zzeca;Lcom/google/android/gms/internal/ads/zzfjy;Lcom/google/android/gms/internal/ads/zzdsj;Lcom/google/android/gms/internal/ads/zzbkz;Lcom/google/android/gms/internal/ads/zzded;Lcom/google/android/gms/internal/ads/zzbky;Lcom/google/android/gms/internal/ads/zzbks;Lcom/google/android/gms/internal/ads/zzbkg;Lcom/google/android/gms/internal/ads/zzcmq;)V

    .line 116
    .line 117
    .line 118
    const-string v3, "/getNativeAdViewSignals"

    .line 119
    .line 120
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbke;->zzs:Lcom/google/android/gms/internal/ads/zzbkf;

    .line 121
    .line 122
    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfg;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkf;)V

    .line 123
    .line 124
    .line 125
    const-string v3, "/getNativeClickMeta"

    .line 126
    .line 127
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbke;->zzt:Lcom/google/android/gms/internal/ads/zzbkf;

    .line 128
    .line 129
    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfg;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkf;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/zzcgy;->zzG(Z)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdly;

    .line 144
    .line 145
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzdly;-><init>(Lcom/google/android/gms/internal/ads/zzcaj;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzcgy;->zzC(Lcom/google/android/gms/internal/ads/zzcgw;)V

    .line 149
    .line 150
    .line 151
    move-object/from16 v0, p6

    .line 152
    .line 153
    move-object/from16 v3, p7

    .line 154
    .line 155
    const/4 v4, 0x0

    .line 156
    invoke-interface {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfg;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v2
.end method

.method public static final zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/client/zzfa;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "mute"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "default_reason"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdmc;->zzt(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/client/zzfa;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static final zzl(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "mute"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string v0, "reasons"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_4

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-gtz v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ge v1, v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdmc;->zzt(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/client/zzfa;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfyq;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method private final zzm(II)Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 3

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzc()Lcom/google/android/gms/ads/internal/client/zzr;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zza:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzr;

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    .line 17
    .line 18
    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method private static zzn(Lcom/google/common/util/concurrent/e;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdlu;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdlu;-><init>(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 8
    .line 9
    const-class v1, Ljava/lang/Exception;

    .line 10
    .line 11
    invoke-static {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzf(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static zzo(ZLcom/google/common/util/concurrent/e;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdlw;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdlw;-><init>(Lcom/google/common/util/concurrent/e;)V

    .line 6
    .line 7
    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 9
    .line 10
    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzdmc;->zzn(Lcom/google/common/util/concurrent/e;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    return-object p0
.end method

.method private final zzp(Lorg/json/JSONObject;ZLcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;
    .locals 15
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzdrr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    return-object v1

    .line 12
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzek:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzel:Lcom/google/android/gms/internal/ads/zzbcv;

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
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    new-instance v3, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzem:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ljava/lang/String;

    .line 64
    .line 65
    const-string v5, ","

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    array-length v5, v4

    .line 72
    const/4 v6, 0x0

    .line 73
    :goto_0
    if-ge v6, v5, :cond_1

    .line 74
    .line 75
    aget-object v7, v4, v6

    .line 76
    .line 77
    :try_start_0
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :catch_0
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move-object v14, v3

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-object v14, v2

    .line 90
    :goto_1
    const-string v3, "url"

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    if-eqz v14, :cond_3

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    return-object v1

    .line 110
    :cond_4
    :goto_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzcx:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 111
    .line 112
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    if-eqz p3, :cond_5

    .line 129
    .line 130
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzr:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v6

    .line 148
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 149
    .line 150
    .line 151
    :cond_5
    const-string v3, "scale"

    .line 152
    .line 153
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 154
    .line 155
    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 156
    .line 157
    .line 158
    move-result-wide v10

    .line 159
    const-string v3, "is_transparent"

    .line 160
    .line 161
    const/4 v4, 0x1

    .line 162
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    const-string v4, "width"

    .line 167
    .line 168
    const/4 v6, -0x1

    .line 169
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    const-string v4, "height"

    .line 174
    .line 175
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    if-nez p2, :cond_7

    .line 180
    .line 181
    if-eqz v14, :cond_6

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_6
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzb:Lcom/google/android/gms/internal/ads/zzdli;

    .line 185
    .line 186
    invoke-virtual {v4, v5, v10, v11, v3}, Lcom/google/android/gms/internal/ads/zzdli;->zzb(Ljava/lang/String;DZ)Lcom/google/common/util/concurrent/e;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    new-instance v14, Lcom/google/android/gms/internal/ads/zzdls;

    .line 191
    .line 192
    move-object v4, v14

    .line 193
    move-wide v6, v10

    .line 194
    move v8, v12

    .line 195
    move v9, v13

    .line 196
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzdls;-><init>(Ljava/lang/String;DII)V

    .line 197
    .line 198
    .line 199
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdmc;->zzg:Ljava/util/concurrent/Executor;

    .line 200
    .line 201
    invoke-static {v3, v14, v4}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    const-string v4, "require"

    .line 206
    .line 207
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdmc;->zzo(ZLcom/google/common/util/concurrent/e;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    return-object v1

    .line 216
    :cond_7
    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgc;

    .line 217
    .line 218
    const/4 v8, 0x0

    .line 219
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    move-object v7, v1

    .line 224
    invoke-direct/range {v7 .. v14}, Lcom/google/android/gms/internal/ads/zzbgc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DIILjava/util/Map;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    return-object v1
.end method

.method private final zzq(Lorg/json/JSONArray;ZZLcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;
    .locals 5
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p3, 0x1

    .line 23
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzcx:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzr:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-virtual {v1, p4, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    if-ge v2, p3, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p4, p2, v1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzp(Lorg/json/JSONObject;ZLcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzd(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/e;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdlp;

    .line 85
    .line 86
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdlp;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzg:Ljava/util/concurrent/Executor;

    .line 90
    .line 91
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1
.end method

.method private final zzr(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;
    .locals 9
    .param p4    # Lcom/google/android/gms/ads/internal/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzbya;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "base_url"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v0, "html"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v0, "width"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v4, "height"

    .line 21
    .line 22
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzm(II)Lcom/google/android/gms/ads/internal/client/zzr;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzi:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 31
    .line 32
    move-object v4, p2

    .line 33
    move-object v5, p3

    .line 34
    move-object v7, p4

    .line 35
    move-object v8, p5

    .line 36
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzdmu;->zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdlv;

    .line 41
    .line 42
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdlv;-><init>(Lcom/google/common/util/concurrent/e;)V

    .line 43
    .line 44
    .line 45
    sget-object p3, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 46
    .line 47
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method private static zzs(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "r"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v0, "g"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "b"

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(III)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object p0

    .line 32
    :catch_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private static final zzt(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/client/zzfa;
    .locals 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "reason"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "ping_url"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzfa;

    .line 29
    .line 30
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/ads/internal/client/zzfa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method


# virtual methods
.method public final zzd(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;
    .locals 3

    .line 1
    const-string p2, "attribution"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    const-string v0, "images"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "image"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    new-instance v0, Lorg/json/JSONArray;

    .line 32
    .line 33
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, v0, v1, v2, p3}, Lcom/google/android/gms/internal/ads/zzdmc;->zzq(Lorg/json/JSONArray;ZZLcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlx;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdlx;-><init>(Lcom/google/android/gms/internal/ads/zzdmc;Lorg/json/JSONObject;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzg:Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    const-string v0, "require"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdmc;->zzo(ZLcom/google/common/util/concurrent/e;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public final zze(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;
    .locals 1
    .param p3    # Lcom/google/android/gms/internal/ads/zzdrr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-boolean p2, v0, Lcom/google/android/gms/internal/ads/zzbge;->zzb:Z

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdmc;->zzp(Lorg/json/JSONObject;ZLcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final zzf(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    .line 2
    .line 3
    const-string v0, "images"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzbge;->zzb:Z

    .line 10
    .line 11
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzbge;->zzd:Z

    .line 12
    .line 13
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdmc;->zzq(Lorg/json/JSONArray;ZZLcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final zzg(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;
    .locals 12
    .param p5    # Lcom/google/android/gms/ads/internal/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzbya;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v9, p0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzkw:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    const-string v0, "images"

    .line 27
    .line 28
    move-object v2, p1

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_7

    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-gtz v2, :cond_1

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzek:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 56
    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzel:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 74
    .line 75
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :cond_4
    :goto_0
    const-string v3, "base_url"

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    const-string v3, "html"

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    const-string v3, "width"

    .line 110
    .line 111
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    const-string v4, "height"

    .line 116
    .line 117
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/ads/zzdmc;->zzm(II)Lcom/google/android/gms/ads/internal/client/zzr;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_6

    .line 130
    .line 131
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcx:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 132
    .line 133
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzdmc;->zzr:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdrr;->zzW:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v4

    .line 169
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 170
    .line 171
    .line 172
    :cond_5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    new-instance v11, Lcom/google/android/gms/internal/ads/zzdlz;

    .line 177
    .line 178
    move-object v0, v11

    .line 179
    move-object v1, p0

    .line 180
    move-object v3, p3

    .line 181
    move-object/from16 v4, p4

    .line 182
    .line 183
    move-object/from16 v5, p5

    .line 184
    .line 185
    move-object/from16 v6, p6

    .line 186
    .line 187
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzdlz;-><init>(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaf;->zzf:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 191
    .line 192
    invoke-static {v10, v11, v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlq;

    .line 197
    .line 198
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdlq;-><init>(Lcom/google/common/util/concurrent/e;)V

    .line 199
    .line 200
    .line 201
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 202
    .line 203
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    return-object v0

    .line 208
    :cond_6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    return-object v0

    .line 213
    :cond_7
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    return-object v0
.end method

.method public final zzh(Lcom/google/common/util/concurrent/e;)Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcx:Lcom/google/android/gms/internal/ads/zzbcv;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzr:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzah:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcak;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcak;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmb;

    .line 48
    .line 49
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdmb;-><init>(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 50
    .line 51
    .line 52
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaf;->zzf:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 53
    .line 54
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method public final zzi(Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;
    .locals 5
    .param p2    # Lcom/google/android/gms/ads/internal/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzbya;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "enable_omid"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    const-string v0, "omid_settings"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    const-string v0, "omid_html"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcx:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzr:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrr;->zzal:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlr;

    .line 91
    .line 92
    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdlr;-><init>(Lcom/google/android/gms/internal/ads/zzdmc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbya;Lcom/google/android/gms/ads/internal/zzb;)V

    .line 93
    .line 94
    .line 95
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaf;->zzf:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 96
    .line 97
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1
.end method

.method public final zzj(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;
    .locals 7
    .param p4    # Lcom/google/android/gms/ads/internal/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzbya;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "html_containers"

    .line 2
    .line 3
    const-string v1, "instream"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzh(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_4

    .line 14
    .line 15
    const-string v0, "video"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 p1, 0x0

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string v0, "vast_xml"

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzkv:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    const-string v1, "html"

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 72
    .line 73
    const-string p2, "Required field \'vast_xml\' or \'html\' is missing"

    .line 74
    .line 75
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    if-nez v3, :cond_3

    .line 84
    .line 85
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzi:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 86
    .line 87
    invoke-virtual {p2, v2, p4, p5}, Lcom/google/android/gms/internal/ads/zzdmu;->zzd(Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    move-object v1, p0

    .line 93
    move-object v3, p2

    .line 94
    move-object v4, p3

    .line 95
    move-object v5, p4

    .line 96
    move-object v6, p5

    .line 97
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdmc;->zzr(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    :goto_0
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbde;->zzec:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 102
    .line 103
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 104
    .line 105
    .line 106
    move-result-object p4

    .line 107
    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    check-cast p3, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    int-to-long p3, p3

    .line 118
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmc;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    .line 119
    .line 120
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 121
    .line 122
    invoke-static {p2, p3, p4, v0, p5}, Lcom/google/android/gms/internal/ads/zzgdn;->zzo(Lcom/google/common/util/concurrent/e;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/e;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzn(Lcom/google/common/util/concurrent/e;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :goto_1
    return-object p1

    .line 131
    :cond_4
    move-object v1, p0

    .line 132
    move-object v3, p2

    .line 133
    move-object v4, p3

    .line 134
    move-object v5, p4

    .line 135
    move-object v6, p5

    .line 136
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdmc;->zzr(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1
.end method
