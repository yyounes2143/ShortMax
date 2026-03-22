.class final Lcom/google/android/gms/internal/ads/zzfyc;
.super Lcom/google/android/gms/internal/ads/zzfyf;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfyf;-><init>(Lcom/google/android/gms/internal/ads/zzfye;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static final zzf(I)Lcom/google/android/gms/internal/ads/zzfyf;
    .locals 0

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyf;->zzi()Lcom/google/android/gms/internal/ads/zzfyf;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-lez p0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyf;->zzh()Lcom/google/android/gms/internal/ads/zzfyf;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyf;->zzg()Lcom/google/android/gms/internal/ads/zzfyf;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final zzb(II)Lcom/google/android/gms/internal/ads/zzfyf;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfyc;->zzf(I)Lcom/google/android/gms/internal/ads/zzfyf;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyf;
    .locals 0

    .line 1
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfyc;->zzf(I)Lcom/google/android/gms/internal/ads/zzfyf;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfyc;->zzf(I)Lcom/google/android/gms/internal/ads/zzfyf;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final zze(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;
    .locals 0

    .line 1
    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfyc;->zzf(I)Lcom/google/android/gms/internal/ads/zzfyf;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
