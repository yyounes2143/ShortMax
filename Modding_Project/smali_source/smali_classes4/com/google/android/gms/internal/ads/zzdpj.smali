.class public final Lcom/google/android/gms/internal/ads/zzdpj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzavu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbel;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/ads/internal/zza;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbcc;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcyv;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzecl;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfda;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdsj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcft;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzbel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbcc;Lcom/google/android/gms/internal/ads/zzcyv;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzfda;Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzb:Lcom/google/android/gms/internal/ads/zzavu;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzc:Lcom/google/android/gms/internal/ads/zzbel;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zze:Lcom/google/android/gms/ads/internal/zza;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzf:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzg:Lcom/google/android/gms/internal/ads/zzcyv;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzh:Lcom/google/android/gms/internal/ads/zzecl;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzi:Lcom/google/android/gms/internal/ads/zzfda;

    .line 21
    .line 22
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzj:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 23
    .line 24
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzdpj;)Lcom/google/android/gms/internal/ads/zzcyv;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzg:Lcom/google/android/gms/internal/ads/zzcyv;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;)Lcom/google/android/gms/internal/ads/zzcfg;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcfs;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p2

    .line 4
    .line 5
    move-object/from16 v14, p3

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzchd;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzchd;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdoy;

    .line 16
    .line 17
    move-object v10, v1

    .line 18
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdoy;-><init>(Lcom/google/android/gms/internal/ads/zzdpj;)V

    .line 19
    .line 20
    .line 21
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzh:Lcom/google/android/gms/internal/ads/zzecl;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzi:Lcom/google/android/gms/internal/ads/zzfda;

    .line 24
    .line 25
    move-object/from16 v16, v1

    .line 26
    .line 27
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzj:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 28
    .line 29
    move-object/from16 v17, v1

    .line 30
    .line 31
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zze:Lcom/google/android/gms/ads/internal/zza;

    .line 32
    .line 33
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzf:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 34
    .line 35
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzb:Lcom/google/android/gms/internal/ads/zzavu;

    .line 36
    .line 37
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzc:Lcom/google/android/gms/internal/ads/zzbel;

    .line 38
    .line 39
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zza:Landroid/content/Context;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzcft;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchd;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzbel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbcc;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzfda;Lcom/google/android/gms/internal/ads/zzdsj;)Lcom/google/android/gms/internal/ads/zzcfg;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    return-object v1
.end method
