.class final Lcom/google/android/gms/internal/ads/zzfke;
.super Lcom/google/android/gms/internal/ads/zzbay;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgeh;

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzfv;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfkf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfkf;Lcom/google/android/gms/internal/ads/zzgeh;Lcom/google/android/gms/ads/internal/client/zzfv;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfke;->zza:Lcom/google/android/gms/internal/ads/zzgeh;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzb:Lcom/google/android/gms/ads/internal/client/zzfv;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzc:Lcom/google/android/gms/internal/ads/zzfkf;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbay;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zzb(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->zzb()Lcom/google/android/gms/ads/LoadAdError;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzb:Lcom/google/android/gms/ads/internal/client/zzfv;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzfv;->zza:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "Failed to load app open ad with error parcel: "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " for ad unit: "

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzc:Lcom/google/android/gms/internal/ads/zzfkf;

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfld;->zzu(Lcom/google/android/gms/internal/ads/zzfld;Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbaw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzc:Lcom/google/android/gms/internal/ads/zzfkf;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfke;->zza:Lcom/google/android/gms/internal/ads/zzgeh;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfkb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgeh;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
