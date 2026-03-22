.class final Lcom/google/android/gms/internal/ads/zzcje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtu;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzble;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcio;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcje;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcio;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzble;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzh:Lcom/google/android/gms/internal/ads/zzcje;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzg:Lcom/google/android/gms/internal/ads/zzcio;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcje;->zze:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzf:Lcom/google/android/gms/internal/ads/zzble;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 17
    .line 18
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdtq;->zzd(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzdtq;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 29
    .line 30
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdts;->zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzdts;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 39
    .line 40
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzcje;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcje;->zze:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzdtl;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjb;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzg:Lcom/google/android/gms/internal/ads/zzcio;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzh:Lcom/google/android/gms/internal/ads/zzcje;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcjb;-><init>(Lcom/google/android/gms/internal/ads/zzcio;Lcom/google/android/gms/internal/ads/zzcje;Lcom/google/android/gms/internal/ads/zzcjs;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzdtp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzf:Lcom/google/android/gms/internal/ads/zzble;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtq;->zzc(Lcom/google/android/gms/internal/ads/zzble;)Lcom/google/android/gms/internal/ads/zzdtp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdtr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdtr;

    .line 8
    .line 9
    return-object v0
.end method
