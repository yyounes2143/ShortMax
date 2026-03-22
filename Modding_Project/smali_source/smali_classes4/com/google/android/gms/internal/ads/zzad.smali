.class public final Lcom/google/android/gms/internal/ads/zzad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzae;

.field private final zzd:Ljava/util/List;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfyq;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzai;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzam;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzae;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzae;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzad;->zzc:Lcom/google/android/gms/internal/ads/zzae;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzad;->zzd:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzad;->zze:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzai;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzai;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzad;->zzf:Lcom/google/android/gms/internal/ads/zzai;

    .line 32
    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/zzam;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzad;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzad;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzb(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzad;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzad;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzap;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzad;->zzb:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 v13, 0x0

    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzad;->zzd:Ljava/util/List;

    .line 9
    .line 10
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzad;->zze:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 11
    .line 12
    new-instance v14, Lcom/google/android/gms/internal/ads/zzak;

    .line 13
    .line 14
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v12, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v9, 0x0

    .line 25
    move-object v1, v14

    .line 26
    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zzak;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzah;Lcom/google/android/gms/internal/ads/zzac;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfyq;Ljava/lang/Object;JLcom/google/android/gms/internal/ads/zzao;)V

    .line 27
    .line 28
    .line 29
    move-object/from16 v18, v14

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object/from16 v18, v13

    .line 33
    .line 34
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzap;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzad;->zza:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    :cond_1
    move-object/from16 v16, v2

    .line 43
    .line 44
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzad;->zzc:Lcom/google/android/gms/internal/ads/zzae;

    .line 45
    .line 46
    new-instance v3, Lcom/google/android/gms/internal/ads/zzag;

    .line 47
    .line 48
    invoke-direct {v3, v2, v13}, Lcom/google/android/gms/internal/ads/zzag;-><init>(Lcom/google/android/gms/internal/ads/zzae;Lcom/google/android/gms/internal/ads/zzao;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzad;->zzf:Lcom/google/android/gms/internal/ads/zzai;

    .line 52
    .line 53
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaj;

    .line 54
    .line 55
    invoke-direct {v4, v2, v13}, Lcom/google/android/gms/internal/ads/zzaj;-><init>(Lcom/google/android/gms/internal/ads/zzai;Lcom/google/android/gms/internal/ads/zzao;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzad;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    .line 59
    .line 60
    sget-object v20, Lcom/google/android/gms/internal/ads/zzat;->zza:Lcom/google/android/gms/internal/ads/zzat;

    .line 61
    .line 62
    const/16 v22, 0x0

    .line 63
    .line 64
    move-object v15, v1

    .line 65
    move-object/from16 v17, v3

    .line 66
    .line 67
    move-object/from16 v19, v4

    .line 68
    .line 69
    move-object/from16 v21, v2

    .line 70
    .line 71
    invoke-direct/range {v15 .. v22}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzag;Lcom/google/android/gms/internal/ads/zzak;Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzat;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzao;)V

    .line 72
    .line 73
    .line 74
    return-object v1
.end method
