.class final Lcom/google/android/gms/internal/ads/zzuq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzxb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfyq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzxb;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuq;->zza:Lcom/google/android/gms/internal/ads/zzxb;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfyq;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzb:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfyq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzb:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuq;->zza:Lcom/google/android/gms/internal/ads/zzxb;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxb;->zzb()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuq;->zza:Lcom/google/android/gms/internal/ads/zzxb;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxb;->zzc()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final zzm(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuq;->zza:Lcom/google/android/gms/internal/ads/zzxb;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxb;->zzm(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzla;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuq;->zza:Lcom/google/android/gms/internal/ads/zzxb;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzxb;->zzo(Lcom/google/android/gms/internal/ads/zzla;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final zzp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuq;->zza:Lcom/google/android/gms/internal/ads/zzxb;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxb;->zzp()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
