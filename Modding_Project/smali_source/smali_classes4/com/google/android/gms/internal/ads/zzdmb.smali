.class final Lcom/google/android/gms/internal/ads/zzdmb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzcak;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    .line 3
    const-string v0, "Failed to load media data due to video view load failure."

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzccz;

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdma;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdma;-><init>(Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzccz;-><init>(Lcom/google/android/gms/internal/ads/zzdma;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "/video"

    .line 18
    .line 19
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkf;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaa()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 27
    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehf;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    const-string v2, "Missing webview from video view future."

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
